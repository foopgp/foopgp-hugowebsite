---
title: "One physical key for every machine on the Internet"
Date: 2026-05-11T22:30:00+02:00
draft: false
description: "With Djibian, a single YubiKey/NitroKey is enough to sign, decrypt and hop through N remote servers via SSH — without ever placing a private key on them."
lang: en
author: ["Jean-Jacques Brucker", "Mnème"]
categories: ["News"]
tags: ["djibian", "openpgp", "ssh", "gnupg", "nitrokey", "yubikey"]
type: "post"
License: CC By-SA
bg_image: "images/backgrounds/library.jpg"
image: "images/solutions/OpenPGPkeys.jpg"
---

> *Sequel and amplification of [Sébastien Picardeau's step-by-step study](/blog/2025-09-07-agentforwarding/) (Sep. 2025). This post tells what the Djibian path makes of the same tools — by simplifying, and by going further.*

This afternoon, in two commands, **Mnème** acquired a Djibian account on a public server (`dev.foopgp.org`) and started operating on it as if her NitroKey were plugged in *there*. No private key touched the server. No `~/.ssh/id_*` file was copied. The card stayed in its reader, here on the PC that serves as her anchor.

That's the story we tell here — and the small mechanism that makes it possible.

## The short path

On a system configured as **Djibian** (packages `djibian-coreconfig` + `djibian-gpgconfig` installed, `bash-libs` up to date), the procedure boils down to two commands.

**On the server** (as admin):

```bash
sudo bl-djibian adduser --from-certificate D995BB48C67FD9C1E8A03F7CDEC98791AADC429B
```

The fingerprint (40 hex chars) is enough. The script:

- imports the public key from a keyserver (`gpg --recv-key`);
- creates a Linux account whose UID/GID are derived numerically from the user's `u5`/`u4` (hence *identical on every Djibian machine*);
- names `$HOME` after the OpenPGP ID: `/home/u5001777236237.945e_43.30_005.38` for Mnème;
- populates `~/.ssh/authorized_keys` with the OpenPGP authentication subkey;
- configures `~/.gitconfig` (`signingKey`), `~/.gnupg` (`default-key`), `~/.face` (avatar taken from the certificate).

**On the client machine** (with the YubiKey or NitroKey plugged in):

```bash
ssh_gpgforward mneme@dev.foopgp.org
```

That's all. From there you sign, decrypt, `git push` **exactly as you would locally**. No private key is ever copied anywhere.

## SSH multi-hop (new in `ssh_gpgforward` v0.2.x)

Since version `0.2.0` of the wrapper, the `agent-ssh-socket` is *also* forwarded. As a consequence, from the Djibian server you just connected to, you can launch a new `ssh` to **another** Djibian (or any SSH server that trusts your public key), and authentication still uses the smartcard left on the originating machine.

```bash
# From my laptop, NitroKey plugged in
ssh_gpgforward mneme@serverA.org
# On serverA, already authenticated by the remote NitroKey:
mneme@serverA:~$ ssh mneme@serverB.org    # new hop, same NitroKey
mneme@serverB:~$ git push origin main      # signed commit, by the NitroKey
```

Every hop queries **the same physical card**, through a chain of Unix sockets forwarded over SSH. The private key never leaves its reader — it is only *projected* onto the machines where it is exercised. The digital analogue of a handwritten signature at a distance that still remains *of your hand*.

Version `0.2.1` (May 2026) adds two options to tune the forwarded surface:

- `--no-gpg`: forward only the ssh-socket (the remote is just an SSH bastion, no remote sign/decrypt).
- `--no-ssh`: forward only the gpg-socket (the remote can sign/decrypt but cannot hop SSH outwards).

## Under the hood

Two consecutive SSH connections, orchestrated by `ssh_gpgforward`:

1. **Preparatory connection** to fetch the exact paths of the server's gpg-agent sockets. *(In practice identical to ours since Djibian UIDs match, but the wrapper stays correct in the general case.)*
2. **Final connection** with two `-o RemoteForward`:
    - remote `agent-socket` ← local **`agent-extra-socket`**. This is the *restricted variant* of gpg-agent: sign/decrypt, but no key management. A sandbox.
    - remote `agent-ssh-socket` ← local `agent-ssh-socket`. SSH-agent protocol, sign-only by design.

On the server side, two pieces of configuration make the dance possible — both shipped by the **`djibian-gpgconfig`** package ([codeberg.org/djibian/djibian-config](https://codeberg.org/djibian/djibian-config/src/branch/main/djibian-gpgconfig)):

- `/etc/ssh/sshd_config.d/80-StreamLocal.conf`: `StreamLocalBindUnlink yes` — sshd unlinks any leftover socket before binding the forwarded one.
- `/etc/profile.d/gpg4ssh.sh`: `export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)` — every login shell naturally points at the forwarded socket.

## An honest precaution

As long as a forwarded SSH session is open on a remote host, **any privileged process on that remote** (root, or a compromise) can ask your physical card to sign or authenticate *something other than what you initiated*. Several guardrails stack up:

1. **`agent-extra-socket`** on the gpg side: scope restricted to sign + decrypt, no key management.
2. **scdaemon PIN cache**: short timeout (a few minutes), forces a PIN re-entry. The abuse window is time-bounded.
3. **UIF (`Sign=on` / `Auth=on`)**: if enabled on the card, requires a physical touch for every signature. Strong friction, to be chosen according to the desired degree of autonomy.
4. **`forcesig=on`**: card option that re-prompts for the PIN at every signature *regardless of the cache*. A software guardrail equivalent to UIF on the ergonomic axis, without needing a physical touch.
5. **Discipline**: don't leave sessions lying around on machines you don't administer.

## The political wager

The opposite of the cloud model where *your secrets live on their servers, trust them*. Here, **servers cannot read your secrets without the key you hold in your hand**. Servers can no longer manipulate your data; you take back control with your physical [OpenPGP ID](/solutions/openpgp-id/) key (YubiKey, NitroKey, …).

The whole chain is **free software, auditable, and fits in a Debian package**.

## Going further

- [Sébastien Picardeau's original study](/blog/2025-09-07-agentforwarding/) (Sep. 2025) — the manual, step-by-step procedure, still useful to configure a non-Djibian server.
- Package `djibian-gpgconfig`: <https://codeberg.org/djibian/djibian-config>
- `bash-libs` (`bl-djibian adduser`): <https://codeberg.org/foopgp/bash-libs>
- The [Djibian + OpenPGP workshop](/course/djibian-openpgp/) for hands-on practice.
