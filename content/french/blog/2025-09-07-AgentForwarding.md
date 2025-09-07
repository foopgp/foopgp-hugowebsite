---
title: "Utiliser ses clés privées locales à travers ssh - Agent Forwarding"
Date: 2025-09-07T20:00:00+02:00
draft: false
description: "Utiliser ses clés privées locales à travers ssh - Agent Forwarding"
lang: fr
author: ["Sébastien Picardeau"]
categories: ["study"]
tags: ["gnupg"]
type: "post"
License: CC By-SA
bg_image: "images/backgrounds/library.jpg"
image: "images/logos/logo-gnupg-light-purple-bg.png"
---

Comment utiliser ses clés privées à distance, et donc sa Yubikey, tout en gardant les secrets en local, secrets et local.

Je parts d'une vm "neuve" pour cette démo.

**Remote:** Si besoin.

```bash
udo apt install openssh-server
```

**Local:** La connexion ssh fonctionne.

```bash
sh foopgp@192.168.122.209
...
$ echo bonjour > top-secret.txt
$ cat top-secret.txt
bonjour
```

**Local:** Je rajoute la configuration dans ~/.ssh/config .

```bash
cat .ssh/config
host demo
    hostname 192.168.122.209
    User foopgp
```

**Local:** Pour se connecter il suffit désormais de 2 mots.

```bash
sh demo
...
$ cat top-secret.txt
bonjour
```

**Remote:** J'importe ma clé _publique_, plusieurs solutions, exemple.

```bash
curl -s "https://keys.foopgp.org/pks/lookup?op=get&search=0x2C364630A2436D7E" \
| awk "/-----BEGIN PGP PUBLIC KEY BLOCK-----/,/-----END PGP PUBLIC KEY BLOCK-----/" \
> macle.asc
$ gpg --import macle.asc
gpg: key 2C364630A2436D7E: 1 signature not checked due to a missing key
gpg: clef 2C364630A2436D7E : clef publique « piseb <piseb@mailo.com> (udid4=D9SrwuxesuMU90PM8xypxQe_48.78_002.19) » importée
gpg:       Quantité totale traitée : 1
gpg:                     importées : 1
gpg: aucune clef de confiance ultime n'a été trouvée
```

**Remote:** Seule la publique est évidemment présente.

```bash
$ gpg -K
$ gpg -k
...
```

**Remote:** Je rajoute "StreamLocalBindUnlink yes", ci-dessous je rajoute un fichier dédié et je redémarre le service ssh:

```bash
udo -i
vim /etc/ssh/sshd_config.d/demo.conf
cat /etc/ssh/sshd_config.d/demo.conf
StreamLocalBindUnlink yes
systemctl restart sshd.service
```

**Remote:**

```bash
gpgconf --list-dir agent-socket
```

**Local:**

```bash
gpgconf --list-dir agent-extra-socket
```

**Local:** Je retourne à mon fichier conf, je rajoute les résultats des 2 commandes précédentes:

```bash
host demo
    hostname 192.168.122.209
    User foopgp
    RemoteForward /run/user/1000/gnupg/S.gpg-agent /run/user/1000/gnupg/S.gpg-agent.extra
```

Et désormais l'utilisation de ma clé privée est possible sur le remote sans y être présente:

```bash
ssh demo
gpg -K
...
```

Je peux signer, chiffrer etc. exactement comme en local.

Sources:

- https://wiki.gnupg.org/AgentForwarding
- https://superuser.com/questions/161973/how-can-i-forward-a-gpg-key-via-ssh-agent/1329299#1329299
