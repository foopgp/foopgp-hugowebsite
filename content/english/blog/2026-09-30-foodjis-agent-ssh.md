---
Title:   "Advanced use: foodjis as an SSH agent"
Date:    2026-09-30T12:00:00+02:00
Tags:    [ "foodjis", "android", "ssh", "termux", "git", "pgp-id", "openpgp", "nfc", "yubikey", "nitrokey" ]
categories: [ "News" ]
draft: true
author: [ "Mnêmê", "Jean-Jacques Brucker" ]
description: "Since version 1.2, your security key also opens your SSH sessions from the phone: ssh, scp and git authenticate with it, and no private key is ever copied onto the device."
lang: en
bg_image: "images/backgrounds/party-event.jpg"
image: "images/logos/foodjis_logo_banner.png"
type: "post"
---

***Note:*** *This article is for those who already use SSH. To discover foodjis on Android, start with [the article that introduces it](/blog/2026-09-24-foodjis-android/).*

**Your security key now opens your SSH sessions from the phone.** Since
version 1.2, foodjis can act as an *SSH agent*: `ssh`, `scp` and `git`, in the
[Termux](https://termux.dev/) application, authenticate with the
authentication key of your PGP ID identity — the one your YubiKey or NitroKey
carries. The private key never leaves the security key: the phone only hands
it the server's question, and you present the key.

{{< video
  src="/largefiles/videos/2026/2026-09-30-foodjis-ssh-agent.mp4"
  type="video/mp4"
>}}

## Why

Usually, what gets you recognised by an SSH server is a private key kept in a
file on the device: whoever copies that file can log in as you, and a phone
gets lost, stolen or lent. Here there is no file to copy. The proof is
computed by the security key, at the moment you present it, and the same key
serves on the computer and on the phone.

## What you need

- foodjis **1.2** or later, and a PGP ID identity on a security key;
- the **Termux** application, from F-Droid or Google Play;
- on each server, the line of your public key in `~/.ssh/authorized_keys` —
  foodjis gives it to you to copy.

## Setting up

1. In foodjis's **Configuration**, turn on "Let Android use your security keys
   for SSH authentication", then open **Learn more**.
2. Copy the line of your public key and add it on your servers, like any SSH
   key. It ends with your EID and the fingerprint of the OpenPGP key it comes
   from: you will always know where it came from.
3. Still on that page, **Install sshwfoodjis in Termux**. foodjis hands Termux
   a small package, with no network, and puts the install command in the
   clipboard: open the directory Termux offers, and paste.
4. In Termux, once and for all:

   ```
   sshwfoodjis --install
   ```

   `ssh`, `scp` and `git` now ask foodjis for the key, with nothing else to
   set. `sshwfoodjis --uninstall` undoes it, and so does removing the package.

## In use

```
ssh me@my-server.org
git clone me@my-server.org:my-repo.git
```

foodjis **only shows itself when a server accepts your key**: a server that
does not know it goes straight to its other methods, and nothing appears on
the phone. When it does, foodjis comes up over Termux, which stays in sight
behind: your PIN first — saying which security key is expected —, then
"Present your security key". A tick, "You can take the security key away",
and the session opens.

The PIN stays in memory for the time you chose in the Configuration
(15 minutes by default): the next connections only ask for the key. An `scp`
or a `git clone` asks no more than a session: we have cloned over SSH from our
servers, from Codeberg and from GitHub.

To see what happens, `ssh`'s own `-v` is enough: `sshwfoodjis` adds its
version and that of the foodjis that answers.

## Still to come

- **Signing commits** with the same key.
- For now, `sshwfoodjis` stands in between: `ssh` looks for its agent behind
  a special file in Termux's directory, which another application cannot
  create, and foodjis can only answer on the phone's internal network. We will
  suggest to Termux that it reach an SSH agent provided by another application
  itself: `sshwfoodjis` would no longer be needed.
- All of it is free software (GPL-3.0); `sshwfoodjis` lives in the
  [sshwgpg](https://codeberg.org/foopgp/sshwgpg) repository.
