---
title: "Utiliser ses clés privées locales à travers ssh - Agent Forwarding"
Date: 2025-09-07T20:00:00+02:00
draft: false
description: "GPG Agent Forwarding"
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

Je parts d'une VM (machine virtuelle) "neuve" pour cette démo.

**Remote:** Si besoin.

```bash
sudo apt install openssh-server
```

**Local:** La connexion ssh fonctionne.

```bash
ssh foopgp@192.168.122.209
...
$ echo bonjour > top-secret.txt
$ cat top-secret.txt
bonjour
```

**Local:** Je rajoute la configuration dans *~/.ssh/config*,

```bash
cat .ssh/config
host demo
    hostname 192.168.122.209
    User foopgp
```

**Local:** afin de me reconnecter plus facilement.

```bash
ssh demo
...
$ cat top-secret.txt
bonjour
```

**Remote:** J'importe ma clé _publique_, plusieurs solutions, exemple.

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

**Remote:** Seule la publique est évidemment présente. On peut vérifier.

```bash
$ gpg --list-secret-keys
$ gpg --list-public-keys
...
```

**Remote:** Je rajoute "StreamLocalBindUnlink yes" à la configuration du serveur ssh, ci-dessous dans un fichier dédié, et je redémarre le service ssh:

```bash
sudo -i
echo "StreamLocalBindUnlink yes" > /etc/ssh/sshd_config.d/streamlocal.conf
systemctl restart sshd.service
```

> L'option **StreamLocalBindUnlink** permet  de  spécifier  si un fichier de socket de domaine Unix pour la redirection de port local ou distant doit être supprimé avant d’en créer un nouveau. Si le fichier de socket existe déjà et si **StreamLocalBindUnlink** n’est pas activée, sshd ne pourra pas rediriger le port  vers  le  fichier de socket de domaine Unix. Cette option n’est utilisée que pour la redirection de port vers un fichier de socket de domaine Unix.

**Remote:** Je regarde quel est le socket utilisé par le gpg-agent du serveur.

```bash
gpgconf --list-dir agent-socket
```

**Local:** Je regarde quel est le socket supplémentaire utilisable par mon gpg-agent local.

```bash
gpgconf --list-dir agent-extra-socket
```

**Local:** Je retourne à mon fichier conf, je rajoute les résultats des 2 commandes précédentes afin que le gpg-agent distant utilise en fait mon gpg-agent local :

```bash
host demo
    hostname 192.168.122.209
    User foopgp
    RemoteForward /run/user/1000/gnupg/S.gpg-agent /run/user/1000/gnupg/S.gpg-agent.extra
```

**Local:** Et désormais l'utilisation de ma clé privée est possible sur le remote sans y être présente:

```bash
ssh demo
gpg --list-secret-keys
...
```

Je peux signer, chiffrer etc. exactement comme en local.

Sources:

- https://wiki.gnupg.org/AgentForwarding
- https://superuser.com/questions/161973/how-can-i-forward-a-gpg-key-via-ssh-agent/1329299#1329299
