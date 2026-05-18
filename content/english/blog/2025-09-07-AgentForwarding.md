---
title: "Using your local private keys via SSH"
Date: 2025-09-08T20:00:00+02:00
draft: false
description: "GPG Agent Forwarding"
lang: en
author: ["Sébastien Picardeau"]
categories: ["study"]
tags: ["gnupg"]
type: "post"
License: CC By-SA
bg_image: "images/backgrounds/library.jpg"
image: "images/logos/logo-gnupg-light-purple-bg.png"
---

How to use your private keys remotely, and therefore your Yubikey, while keeping secrets local.

I am starting with a “new” VM (virtual machine) for this demo.

**Remote:** (if needed).

```bash
sudo apt install openssh-server
```

**Local:** The SSH connection is working.

```bash
ssh foopgp@192.168.122.209
...
$ echo hello > top-secret.txt
$ cat top-secret.txt
bonjour
```

**Local:** I add the configuration to *~/.ssh/config*,

```bash
cat .ssh/config
host demo
    hostname 192.168.122.209
    User foopgp
```

**Local:** so that I can reconnect more easily.

```bash
ssh demo
...
$ cat top-secret.txt
hello
```

**Remote:** I import my public key, several solutions, for example:

```bash
$ curl -s "https://keys.foopgp.org/pks/lookup?op=get&search=0x2C364630A2436D7E" \
| awk "/-----BEGIN PGP PUBLIC KEY BLOCK-----/,/-----END PGP PUBLIC KEY BLOCK-----/" \
| gpg --import

gpg: key 2C364630A2436D7E: 1 signature not checked due to a missing key
gpg: clef 2C364630A2436D7E : clef publique « piseb <piseb@mailo.com> (udid4=D9SrwuxesuMU90PM8xypxQe_48.78_002.19) » importée
gpg:       Quantité totale traitée : 1
gpg:                     importées : 1
gpg: aucune clef de confiance ultime n'a été trouvée
```

**Remote:** Only the public key is obviously present. This can be verified.

```bash
$ gpg --list-secret-keys
$ gpg --list-public-keys
...
```

**Remote:** I add “StreamLocalBindUnlink yes” to the ssh server configuration, below in a dedicated file, and restart the ssh service:

```bash
sudo -i
echo "StreamLocalBindUnlink yes" > /etc/ssh/sshd_config.d/streamlocal.conf
systemctl restart sshd.service
```

> Option **StreamLocalBindUnlink** specifies whether to remove an existing Unix-domain socket file for local or remote port forwarding before creating a new one.  If the socket file already exists and StreamLocalBindUnlink is not enabled, sshd will be unable to forward the port to the Unix-domain socket file. This option is only used for port forwarding to a Unix-domain socket file.

Next, we use the small wrapper that a kind member of the association has published on codeberg. It was first called `ssh_gpgforward` and is now distributed as its own Debian package, **`sshwgpg`** ([SSH With GnuPG](https://codeberg.org/foopgp/sshwgpg), v1.1+). On a Djibian / Debian system:

```bash
sudo apt install sshwgpg
```

(*Note 2026-05: in djibian-gpgconfig ≥ 0.10, `/usr/bin/ssh_gpgforward` is kept as a backward-compat symlink to `/usr/bin/sshwgpg`, so existing scripts and the snippets below keep working.*)

```bash
sshwgpg user@demo.org "hostname -f | gpg --clearsign | tee  >( gpg --verify )"
```
So we can sign, decrypt, etc. exactly as we would locally. The standalone post [One physical key for every machine on the Internet](/blog/2026-05-11-djibian-agentforwarding/) (May 2026) shows the Djibian batteries-included variant of the same idea, plus SSH multi-hop.

Sources:

- https://wiki.gnupg.org/AgentForwarding
- https://superuser.com/questions/161973/how-can-i-forward-a-gpg-key-via-ssh-agent/1329299#1329299
- https://wiki.archlinux.org/title/GnuPG#Forwarding_gpg-agent_and_ssh-agent_to_remote
