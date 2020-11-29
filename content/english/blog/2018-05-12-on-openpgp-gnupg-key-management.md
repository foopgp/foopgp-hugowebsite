---
title: "On OpenPGP (GnuPG) key management"
date: 2018-05-12T15:27:17+06:00
draft: true
bg_image: "images/backgrounds/page-title.jpg"
description : "How to use your OpenPGP key for the better."
lang: en
image: ""
author: "Michał Górny"
categories: ["certificate", "guide"]
tags: ["OpenPGP", "gpg"]
type: "post"
---

*This article was originaly posted by [Michał Górny](https://github.com/mgorny) on [gentoo's blog](https://blogs.gentoo.org/mgorny/2018/05/12/on-openpgp-gnupg-key-management/).*

---

Over the time, a number of developers have had problems following
the Gentoo OpenPGP key policy
([GLEP 63](https://www.gentoo.org/glep/glep-0063.html). In particular,
the key expiration requirements have resulted in many developers wanting
to replace their key unnecessarily. I've been asked to write some
instructions on managing your OpenPGP key, and I've decided to go for
a full blog post with some less-known tips. I won't be getting into
detailed explanations how to use GnuPG though --- you may still need to
read the documentation after all.

Primary key and subkeys
-----------------------

An OpenPGP key actually consists of one or more pairs of public
and private keys --- the *primary key* (or *root key*, in GLEP 63
naming), and zero or more *subkeys*. Ideally, the primary key is only
used to create subkeys, UIDs, manipulate them and sign other people's
keys. All 'non-key' cryptographic operations are done using subkeys.
This reduces the wear of the primary key, and the risk of it being
compromised.

If you don't use a smartcard, then a good idea would be to move
the private part of primary key off-site since you don't need it for
normal operation. However, before doing that please remember to always
have a *revocation certificate* around. You will need it to revoke
the primary key if you lose it. With GnuPG 2.1, removing private keys is
trivial. First, list all keys with *keygrips*:

    $ gpg --list-secret --with-keygrip
    /home/you/.gnupg/pubring.kbx
    -------------------------------
    sec   rsa2048/0xBBC7E6E002FE74E8 2018-05-12 [SC] [expires: 2020-05-11]
          55642983197252C35550375FBBC7E6E002FE74E8
          Keygrip = B51708C7209017A162BDA515A9803D3089B993F0
    uid                   [ultimate] Example key 
    ssb   rsa2048/0xB7BA421CDCD4AF16 2018-05-12 [E] [expires: 2020-05-11]
          Keygrip = 92230550DA684B506FC277B005CD3296CB70463C

Note that the output may differ depending on your settings.
The `sec` entry indicates a primary key. Once you find
the correct key, just look for a file named after its `Keygrip`
in **\~/.gnupg/private-keys-v1.d** (e.g.
**B51708C7209017A162BDA515A9803D3089B993F0.key** here). Move that
file off-site and voilà!

In fact, you can go even further and use a dedicated off-line system to
create and manage keys, and only transfer appropriate private keys
(and public keyring updates) to your online hosts. You can transfer
and remove any other private key the same way, and use
**\--export-key** to transfer the public keys.

How many subkeys to use?
------------------------

Create at least one *signing* subkey and exactly one *encryption*
subkey.

*Signing keys* are used to sign data, i.e. to prove its integrity
and authenticity. Using multiple signing subkeys is rather trivial ---
you can explicitly specify the key to use while creating a signature
(note that you need to append **!** to key-id to force non-default
subkey), and GnuPG will automatically use the correct subkey when
verifying the signature. To reduce the wear of your main signing subkey,
you can create a separate signing subkey for Gentoo commits. Or you can
go ever further, and have a separate signing subkey for each machine
you're using (and keep only the appropriate key on each machine).

*Encryption keys* are used to encrypt messages. While technically it is
possible to have multiple encryption subkeys, GnuPG does not make that
meaningful. When someone will try to encrypt a message to you, it will
insist on using the newest key even if multiple keys are valid.
Therefore, use only one encryption key to avoid confusion.

There is also a third key class: *authentication keys* that can be used
in place of SSH keys. If you intend to use them, I suggest the same rule
as for SSH keys, that is one key for each host holding the keyring. More
on using GnuPG for SSH below.

To summarize: use one encryption subkey, and as many signing
and authentication subkeys as you need. Using more subkeys reduces
individual wear of each key, and makes it easier to assess the damage if
one of them gets compromised.

When to create a new key?
-------------------------

One of the common misconceptions is that you need to create a new key
when the current one expires. This is not really the purpose of key
expiration --- we use it mostly to automatically rule out dead keys.
There are generally three cases when you want to create a new key:

1.  if the key is compromised,
2.  if the primary key is irrecoverably lost,
3.  if the key uses really weak algorithm (e.g. short DSA key).

Most of the time, you will just decide to prolong the primary key
and subkeys, i.e. use the **\--edit-key** option to update their
expiration dates. Note that GnuPG is not very user-friendly there. To
prolong the primary key, use **expire** command without any subkeys
selected. To prolong one or more subkeys, select them using **key**
and then use **expire**. Normally, you will want to do this
periodically, *before* the expiration date to give people some time
to refresh. Add it to your calendar as a periodic event.

    $ gpg --edit-key 0xBBC7E6E002FE74E8
    Secret key is available.

    sec  rsa2048/0xBBC7E6E002FE74E8
         created: 2018-05-12  expires: 2020-05-11  usage: SC  
         trust: ultimate      validity: ultimate
    ssb  rsa2048/0xB7BA421CDCD4AF16
         created: 2018-05-12  expires: 2020-05-11  usage: E   
    [ultimate] (1). Example key <example@example.com>

    gpg> expire
    Changing expiration time for the primary key.
    Please specify how long the key should be valid.
             0 = key does not expire
          <n>  = key expires in n days
          <n>w = key expires in n weeks
          <n>m = key expires in n months
          <n>y = key expires in n years
    Key is valid for? (0) 3y
    Key expires at Tue May 11 12:32:35 2021 CEST
    Is this correct? (y/N) y

    sec  rsa2048/0xBBC7E6E002FE74E8
         created: 2018-05-12  expires: 2021-05-11  usage: SC  
         trust: ultimate      validity: ultimate
    ssb  rsa2048/0xB7BA421CDCD4AF16
         created: 2018-05-12  expires: 2020-05-11  usage: E   
    [ultimate] (1). Example key <example@example.com>

    gpg> key 1

    sec  rsa2048/0xBBC7E6E002FE74E8
         created: 2018-05-12  expires: 2021-05-11  usage: SC  
         trust: ultimate      validity: ultimate
    ssb* rsa2048/0xB7BA421CDCD4AF16
         created: 2018-05-12  expires: 2020-05-11  usage: E   
    [ultimate] (1). Example key <example@example.com>

    gpg> expire
    Changing expiration time for a subkey.
    Please specify how long the key should be valid.
             0 = key does not expire
          <n>  = key expires in n days
          <n>w = key expires in n weeks
          <n>m = key expires in n months
          <n>y = key expires in n years
    Key is valid for? (0) 1y
    Key expires at Sun May 12 12:32:47 2019 CEST
    Is this correct? (y/N) y

    sec  rsa2048/0xBBC7E6E002FE74E8
         created: 2018-05-12  expires: 2021-05-11  usage: SC  
         trust: ultimate      validity: ultimate
    ssb* rsa2048/0xB7BA421CDCD4AF16
         created: 2018-05-12  expires: 2019-05-12  usage: E   
    [ultimate] (1). Example key <example@example.com>

If one of the conditions above applies to one of your subkeys, or you
think that it has reached a very high wear, you will want to replace
the subkey. While at it, make sure that the old key is either expired
or revoked (but don't revoke the whole key accidentally!). If one
of those conditions applies to your primary key, revoke it and start
propagating your new key.

Please remember to upload your key to key servers after each change
(using **\--send-keys**).

To summarize: prolong your keys periodically, rotate subkeys whenever
you consider that beneficial but avoid replacing the primary key unless
really necessary.

Using gpg-agent for SSH authentication
--------------------------------------

If you already have to set up a secure store for OpenPGP keys, why not
use it for SSH keys as well? GnuPG provides ssh-agent emulation which
lets you use an OpenPGP subkey to authenticate via SSH.

Firstly, you need to create a new key. You need to use
the **\--expert** option to access additional options. Use
**addkey** to create a new key, choose one of the options with
custom capabilities and toggle them from the default
*sign*+\<em\<encrypt to *authenticate*:

    $ gpg --expert --edit-key 0xBBC7E6E002FE74E8
    Secret key is available.

    sec  rsa2048/0xBBC7E6E002FE74E8
         created: 2018-05-12  expires: 2020-05-11  usage: SC  
         trust: ultimate      validity: ultimate
    ssb  rsa2048/0xB7BA421CDCD4AF16
         created: 2018-05-12  expires: 2020-05-11  usage: E   
    [ultimate] (1). Example key <example@example.com>

    gpg> addkey
    Please select what kind of key you want:
       (3) DSA (sign only)
       (4) RSA (sign only)
       (5) Elgamal (encrypt only)
       (6) RSA (encrypt only)
       (7) DSA (set your own capabilities)
       (8) RSA (set your own capabilities)
      (10) ECC (sign only)
      (11) ECC (set your own capabilities)
      (12) ECC (encrypt only)
      (13) Existing key
    Your selection? 8

    Possible actions for a RSA key: Sign Encrypt Authenticate 
    Current allowed actions: Sign Encrypt 

       (S) Toggle the sign capability
       (E) Toggle the encrypt capability
       (A) Toggle the authenticate capability
       (Q) Finished

    Your selection? s

    Possible actions for a RSA key: Sign Encrypt Authenticate 
    Current allowed actions: Encrypt 

       (S) Toggle the sign capability
       (E) Toggle the encrypt capability
       (A) Toggle the authenticate capability
       (Q) Finished

    Your selection? e

    Possible actions for a RSA key: Sign Encrypt Authenticate 
    Current allowed actions: 

       (S) Toggle the sign capability
       (E) Toggle the encrypt capability
       (A) Toggle the authenticate capability
       (Q) Finished

    Your selection? a

    Possible actions for a RSA key: Sign Encrypt Authenticate 
    Current allowed actions: Authenticate 

       (S) Toggle the sign capability
       (E) Toggle the encrypt capability
       (A) Toggle the authenticate capability
       (Q) Finished

    Your selection? q
    [...]

Once the key is created, find its keygrip:

    $ gpg --list-secret --with-keygrip
    /home/mgorny/.gnupg/pubring.kbx
    -------------------------------
    sec   rsa2048/0xBBC7E6E002FE74E8 2018-05-12 [SC] [expires: 2020-05-11]
          55642983197252C35550375FBBC7E6E002FE74E8
          Keygrip = B51708C7209017A162BDA515A9803D3089B993F0
    uid                   [ultimate] Example key <example@example.com>
    ssb   rsa2048/0xB7BA421CDCD4AF16 2018-05-12 [E] [expires: 2020-05-11]
          Keygrip = 92230550DA684B506FC277B005CD3296CB70463C
    ssb   rsa2048/0x2BE2AF20C43617A0 2018-05-12 [A] [expires: 2018-05-13]
          Keygrip = 569A0C016AB264B0451309775FDCF06A2DE73473

This time we're talking about the keygrip of the `[A]` key.
Append that to **\~/.gnupg/sshcontrol**:

    $ echo 569A0C016AB264B0451309775FDCF06A2DE73473 >> ~/.gnupg/sshcontrol

The final step is to have gpg-agent with **\--enable-ssh-support**
started. The exact procedure here depends on the environment used.
In XFCE, it involves setting a hidden configuration option:

    $ xfconf-query -c xfce4-session -p /startup/ssh-agent/type -n -t string -s gpg-agent

Further reading
---------------

-   [GLEP 63: Gentoo GPG key
    policies](https://www.gentoo.org/glep/glep-0063.html)
-   [Subkeys -- Debian Wiki](https://wiki.debian.org/Subkeys)
-   [xfce » xfce4-session » advanced \# SSH and GPG
    Agents](https://docs.xfce.org/xfce/xfce4-session/advanced#ssh_and_gpg_agents)
-   [GnuPG -- ArchWiki \# SSH
    agent](https://wiki.archlinux.org/index.php/GnuPG#SSH_agent)
