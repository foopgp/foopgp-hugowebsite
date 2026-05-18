---
title: "One physical key for every machine on the Internet"
Date: 2026-05-11T22:30:00+02:00
draft: false
description: "sshwgpg is a tiny ssh wrapper that lets your remote sessions sign, decrypt and re-ssh through the OpenPGP smartcard you have on you — without ever copying a private key. Djibian wires the server side in one command."
lang: en
author: ["Jean-Jacques Brucker", "Mnème"]
categories: ["News"]
tags: ["djibian", "openpgp", "ssh", "gnupg", "nitrokey", "yubikey", "sshwgpg"]
type: "post"
License: CC By-SA
bg_image: "images/backgrounds/library.jpg"
image: "images/solutions/OpenPGPkeys.jpg"
---

> *Sequel and amplification of [Sébastien Picardeau's step-by-step study](/blog/2025-09-07-agentforwarding/) (Sep. 2025). Same goal, fewer steps, and one new property: SSH multi-hop with the same physical key.*

You ssh into several machines a day. On those, you produce digital signatures, decrypt files, or ssh further out. The textbook answer is to copy your private keys to each of those machines — and to bet that the next mass-surveillance push or cyber-attack will not take your secrets as the prize. That answer aged badly.

The correct answer has existed for years (forwarding `gpg-agent` and `ssh-agent` over SSH), but the setup is fiddly enough that almost nobody runs it. We packaged that correct answer as a tool. It is called **`sshwgpg`**, it fits in 140 lines of Bash, and it ships in [our Debian package repository](/solutions/activity-rd/#djibianfoopgporg).

## What sshwgpg does, in one paragraph

On a local machine that has access to your OpenPGP keys, you type:

```bash
sshwgpg user@remote.example
```

And you land in a rather welcoming remote session:

- a forwarded **gpg-agent socket** to call your local OpenPGP keys: `gpg --sign`, `gpg --decrypt` or `git commit -S` work *on the remote* using your signing or decryption keys *locally*;
- a forwarded **ssh-agent socket** to call your ssh-via-OpenPGP keys: `ssh user@other.example` or `sshwgpg user@other.ex` work *on the remote* using your OpenPGP authentication keys *locally*.

Two sockets, one command, one OpenPGP certificate. The bytes of your private keys never leave your computer — or better still, if you use a YubiKey or NitroKey: the chip deep inside its silicon.

## Multi-hop: the new bit

Most "gpg agent forwarding" recipes you find online stop at the first hop. The ssh-agent forwarding (added in `sshwgpg` 1.x.x) is what lets you hop further, more easily:

```bash
you$ sshwgpg mneme@serverA.org             # ssh properly configured (cf. SSH_AUTH_SOCK) lets you authenticate with your OpenPGP key.
serverA$ sshwgpg mneme@serverB.org         # ssh auth via your OpenPGP key, physically secured by your YubiKey/NitroKey.
serverB$ git commit --gpg-sign             # commit signed by the same OpenPGP key, which has not left the YubiKey/NitroKey you carry.
serverB$ git push origin main              # commit pushed via ssh authenticated by your OpenPGP key — still on you, still cosy.
```

Each hop reaches back, through the previous hops, to the **same OpenPGP key** on the original machine. Unplug the YubiKey/NitroKey: no machine can sign, decrypt or authenticate any more. Coupled with a YubiKey/NitroKey, **`sshwgpg`** delivers the digital equivalent of a handwritten signature at a distance — yet still *of your hand*.

## Risk and attack surface

While a `sshwgpg` session is open, **any privileged process on the remote** (root, or a compromise) can ask your YubiKey/NitroKey to sign or authenticate *something other than what you initiated*. We can shrink the attack surface to a sliver with a few guardrails:

1. `scdaemon` PIN cache: short timeout. The abuse window is time-bounded.
2. UIF (`Sign=on`, `Decrypt=on`, `Auth=on`) on the security key: physical touch required for each signature, decryption or authentication. Strong friction, strong guarantee.
3. `forcesig=on` on the security key: re-prompts the PIN at every signature regardless of cache.
4. **`sshwgpg`**'s `--no-gpg` or `--no-ssh` flags.[^sshwgpg-options]
5. Discipline: don't leave your YubiKey/NitroKey, or `sshwgpg` sessions, lying around on machines you don't control.

`(1)` is on by default. `(2)`, `(3)` and `(4)` are choices you make for the level of security you want. `(5)` is the only one no software can give you.

[^sshwgpg-options]:
    - `--no-gpg`: forward only the ssh socket — the remote is a pure ssh bastion, no remote sign/decrypt.
    - `--no-ssh`: forward only the gpg socket — the remote can sign/decrypt but cannot re-ssh outwards.

## Server-side prerequisite

The remote `sshd` needs one option set:

```
# /etc/ssh/sshd_config.d/80-StreamLocal.conf
StreamLocalBindUnlink yes
```

Without it, `sshd` refuses to overwrite an existing forwarded socket and `sshwgpg`'s second connection cannot rebind. That's the entire server-side requirement to make `sshwgpg` work — and Sébastien's [2025-09-07 study](/blog/2025-09-07-agentforwarding/) is the long version of why.

## Install

`sshwgpg`'s only runtime dependency is `openssh-client`. Source and Debian packaging live at <https://codeberg.org/foopgp/sshwgpg>. Currently shipped via [our Debian packages repository](/solutions/activity-rd/#djibianfoopgporg):

```bash
sudo apt install sshwgpg
```

## Djibian: the batteries-included path

`sshwgpg` is the client-side tool. To use it productively against a fleet of servers you would otherwise have to configure each one: the sshd option above, an `authorized_keys` with the right SSH subkey, `gpg-agent` set up to honour the forwarded socket, `SSH_AUTH_SOCK` pointed at the gpg-agent's ssh socket in every login shell, etc.

The **`djibian-gpgconfig`** package does all of that for you:

- ships `/etc/ssh/sshd_config.d/80-StreamLocal.conf`;
- ships `/etc/profile.d/gpg4ssh.sh` (`export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)` — every login shell naturally points at the forwarded socket);
- ships `/etc/gnupg/{gpg.conf,gpg-agent.conf}` tuned for agent forwarding;
- depends on `sshwgpg`, so installing `djibian-gpgconfig` gets you both sides at once.

And on the user-provisioning side, the **`bashlibs-pgpid`** package turns a 40-hex-char OpenPGP fingerprint into a full Linux account:
- UID/GID derived from the user's [OpenPGP ID](/solutions/openpgp-id/) (so [identical](/blog/2026-04-28-openpgp-id-spec/) across every Djibian machine);
- `$HOME` equal to the user's [OpenPGP ID](/solutions/openpgp-id/) (so [unique and identical](/blog/2026-04-28-openpgp-id-spec/) across every Djibian machine);
- `~/.ssh/authorized_keys` populated from the OpenPGP certificate's authentication subkey;
- `~/.gitconfig` and `~/.gnupg` pre-configured to sign using the user's OpenPGP key;
- even the avatar image, stored in `~/.face`, is taken from the OpenPGP certificate's image attribute.

What that looks like end-to-end:

```bash
# On the djibian.example server, as admin:
sudo bl-djibian adduser --from-certificate D995BB48C67FD9C1E8A03F7CDEC98791AADC429B

# From your machine, your YubiKey/NitroKey plugged in:
sshwgpg mneme@djibian.example
# You hold Mneme's security key and know her PIN: you are Mneme; from djibian.example you sign, decrypt or push as if at home
```

On a non-Djibian server the same wiring is a `useradd` and several shell lines or configurations — [previous study](/blog/2025-09-07-agentforwarding/) walks through it.

## The political wager

The cloud model says: *your secrets live on their servers, trust them.* What `sshwgpg` (and the rest of the [OpenPGP ID](/solutions/openpgp-id/) chain) makes possible is the opposite: **servers cannot read your secrets without the key you hold in your hand.** They can no longer manipulate your data behind your back; you take the control back, in literal physical form, through a small key on a small reader.

Everything in this chain is **free software, auditable, and ships in our Djibian packages.**

## Going further

- `sshwgpg`: <https://codeberg.org/foopgp/sshwgpg>
- `djibian-gpgconfig`: <https://codeberg.org/djibian/djibian-config>
- `bash-libs` (`bl-djibian adduser`): <https://codeberg.org/foopgp/bash-libs>
- The [Djibian + OpenPGP workshop](/course/djibian-openpgp/) — hands-on practice.
