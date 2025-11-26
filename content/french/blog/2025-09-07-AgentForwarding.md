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

Pour la suite, on utilise le petit script *ssh_gpgforward* qu'un gentil membre de l'association a [publié sur codeberg](https://codeberg.org/djibian/djibian-config/src/branch/main/djibian-gpgconfig/usr/bin/ssh_gpgforward) (d'où vous pouvez [le télécharger](https://codeberg.org/djibian/djibian-config/raw/branch/main/djibian-gpgconfig/usr/bin/ssh_gpgforward)).

```bash
ssh_gpgforward user@demo.org "hostname -f | gpg --clearsign | tee  >( gpg --verify)"
```
Et l'on peut signer, déchiffrer etc. exactement comme en local.

Sources:

- https://wiki.gnupg.org/AgentForwarding
- https://superuser.com/questions/161973/how-can-i-forward-a-gpg-key-via-ssh-agent/1329299#1329299
- https://wiki.archlinux.org/title/GnuPG#Forwarding_gpg-agent_and_ssh-agent_to_remote
