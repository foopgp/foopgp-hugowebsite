---
Title:   "Advanced use: foodjis as an SSH agent for Android"
Date:    2026-10-01T18:00:00+02:00
Tags:    [ "foodjis", "android", "ssh", "termux", "git", "pgp-id", "openpgp", "nfc", "yubikey", "nitrokey" ]
categories: [ "News" ]
draft: false
author: [ "Mnêmê", "Jean-Jacques Brucker" ]
description: "Since version 1.3, your security key also opens your SSH sessions from the phone: ssh, scp and git authenticate with it, and no private key is ever copied onto the device."
lang: en
bg_image: "images/backgrounds/party-event.jpg"
image: "images/logos/foodjis_logo_banner.png"
type: "post"
---

***Note:*** *This article is for those who already use SSH. To discover foodjis on Android, start with [the article that introduces it](/blog/2026-09-24-foodjis-android/).*

**Your security key now opens your SSH sessions from the phone.** Since
version 1.3, foodjis can act as an *SSH agent* for the other Android
applications. So `ssh`, `scp` or `git`, in the [Termux](https://termux.dev/)
application, authenticate with the authentication key of your PGP ID
identity — the one your physical key, YubiKey or NitroKey, carries and keeps
safe.

A demonstration, with a security key set up by foodjis (PGP ID):

{{< video
  src="/largefiles/videos/2026/2026-10-01-foodjis-ssh-agent-en.mp4"
  type="video/mp4"
  max-height="80vh"
>}}

## Why

Usually, what gets you recognised by an SSH server is a private key kept in a
file on the device: whoever copies that file can log in as you, and a phone
is no digital safe. From the engineers who designed it to the crackers who
quietly exploit its flaws, all the way to the states that would rather spy on
their citizens than protect them, many regularly break into the privacy and
the secrets you entrust to it. Remember, for instance, the
[Pegasus spyware](https://en.wikipedia.org/wiki/Pegasus_(spyware)).

[PGP ID](/solutions/pgp-id/) security keys, on the other hand, are real safes:
their attack surface is infinitely smaller, and the secrets put in them do not
come out.

They are safes holding keys, which open other safes you can keep elsewhere —
on your phone, for instance. While that safe is closed, no Google engineer and
no cracker can open it. To open it takes the security key: the one you hold
against your smartphone's NFC reader, or plug into your computer's USB port.

## What you need

- foodjis **1.3** [or later](https://play.google.com/store/apps/details?id=org.foopgp.foodjis),
  and a PGP ID identity on a [security key](/solutions/offer-security-keys/);
- the **Termux** application, from [F-Droid](https://f-droid.org/packages/com.termux/)
  or [Google Play](https://play.google.com/store/apps/details?id=com.termux);
- on each server, the line of your public key in `~/.ssh/authorized_keys` —
  which **foodjis**, like `gpg --export-ssh-key` on the computer, gives you to
  copy.

## Setting up

1. In foodjis's **Configuration**, turn on "Make it easier for other
   applications to use your security keys for SSH authentication", then open
   **Learn more**. Without it, foodjis asks at each connection whether to lend
   your keys "for this time".
2. Copy the line of your public key and add it on your servers, like any SSH
   key. It ends with your EID and the fingerprint of the OpenPGP key it comes
   from: you will always know where it came from.
3. Still on that page, **Install sshwfoodjis in Termux**. foodjis hands Termux
   the `sshwfoodjis_*.deb` package, and puts the install command in the
   clipboard: open the directory Termux offers, and paste.
4. In Termux, once and for all:

   ```
   sshwfoodjis --install
   ```

   In every new terminal, `ssh`, `scp` or `git` now ask foodjis for the key,
   with nothing else to set. `sshwfoodjis --uninstall` undoes it, and so does
   removing the package. For one connection, with nothing installed:
   `sshwfoodjis me@my-server.org`.

## In use

```
ssh me@my-server.org
git clone me@my-server.org:my-repo.git
```

At every connection, foodjis offers your keys to the server. A server that
does not know your key goes on to its other methods, asking you nothing. When
it accepts it, foodjis comes up over Termux, to ask for your PIN if needed,
then above all: "Present your security key". You hold the security key to the
phone, the door opens — "You can take the security key away" — and the session
begins.

The PIN stays in memory for the time you chose in the Configuration
(15 minutes by default): the next connections only ask for the key. An `scp`
or a `git clone` asks no more than a session: we have cloned over SSH from our
servers, from Codeberg and from GitHub.

To see what happens, `ssh`'s own `-v` is enough: `sshwfoodjis` adds its
version, and which foodjis application it woke.

## Signing git commits

For now, Termux's `gpg` cannot yet talk to foodjis to use your PGP ID security
key. But git can also sign commits with an SSH key, and since version 1.3.3,
foodjis signs them: the security key's prompt then says "Signing a git
commit". It signs SSH logins and git commits only, so that another
application cannot have it sign something else.

In Termux, once and for all (after `sshwfoodjis --install`, in a new
terminal):

```
git config --global user.email me@example.org
git config --global gpg.format ssh
git config --global user.signingkey "key::$(ssh-add -L | head -n 1)"
git config --global commit.gpgsign true
echo "$(git config user.email) namespaces=\"git\" $(ssh-add -L | head -n 1)" >> ~/.ssh/allowed_signers
git config --global gpg.ssh.allowedSignersFile ~/.ssh/allowed_signers
```

Then, as usual:

```
git commit -m "My first commit signed by my security key"
git log --show-signature -1
```

foodjis asks for the key, and `git log` answers `Good "git" signature for
me@example.org`. The last two lines of the setup only serve that check: git
wants to know which key may sign for which address.
