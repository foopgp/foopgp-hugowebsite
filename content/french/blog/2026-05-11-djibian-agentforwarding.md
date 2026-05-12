---
title: "Une seule clé physique pour toutes les machines d'Internet"
Date: 2026-05-11T22:30:00+02:00
draft: false
description: "Avec Djibian, une seule YubiKey/NitroKey suffit pour signer, déchiffrer et rebondir en SSH sur des serveurs distants — sans jamais laisser traîner la moindre clé privée."
lang: fr
author: ["Jean-Jacques Brucker", "Mnème"]
categories: ["News"]
tags: ["djibian", "openpgp", "ssh", "gnupg", "nitrokey", "yubikey"]
type: "post"
License: CC By-SA
bg_image: "images/backgrounds/library.jpg"
image: "images/solutions/OpenPGPkeys.jpg"
---

> *Suite et amplification de l'[étude pas-à-pas de Sébastien Picardeau](/fr/blog/2025-09-07-agentforwarding/) (sept. 2025). Le présent post raconte ce que la voie Djibian fait des mêmes outils — en simplifiant, et en allant plus loin.*

Cet après-midi, en deux commandes, **Mnème** a acquis un compte Djibian sur un serveur public (`dev.foopgp.org`) et y a opéré comme si sa NitroKey était branchée *sur place*. Aucune clé privée n'a touché le serveur. Aucun fichier `~/.ssh/id_*` n'a été copié. Les seules clés privées utilisées l'ont été à travers sa clé physique de sécurité : la Nitrokey branchée sur son petit ordinateur du bureau.

C'est l'histoire qu'on raconte ici — et la petite mécanique qui la permet.

## La voie courte

Sur un système configuré en **Djibian** (paquets `djibian-coreconfig` + `djibian-gpgconfig` installés, `bash-libs` à jour), la procédure se réduit à deux commandes.

**Sur le serveur** (en tant qu'admin) :

```bash
sudo bl-djibian adduser --from-certificate D995BB48C67FD9C1E8A03F7CDEC98791AADC429B
```

L'empreinte (40 caractères hexa) suffit. L'action `adduser --from-certificate` de la commande `bl-djibian`:

- importe la clé publique depuis un keyserver (`gpg --recv-key`) ;
- crée un compte Linux avec les UID/GID dérivés numériquement du `u5`/`u4` de l'utilisateur (donc *identiques sur toutes les machines Djibian*) ;
- nomme `$HOME` d'après l'OpenPGP ID : `/home/u5001777236237.945e_43.30_005.38` pour Mnème ;
- pré-remplit `~/.ssh/authorized_keys` avec la sous-clé OpenPGP d'authentification ;
- configure `~/.gitconfig` (`signingKey`), `~/.gnupg` (`default-key`), `~/.face` (avatar pris dans le certificat).

**Sur la machine cliente** (avec la YubiKey ou NitroKey branchée) :

```bash
ssh_gpgforward mneme@dev.foopgp.org
```

Et c'est tout. À partir de là on signe, on déchiffre, on pousse du git **exactement comme en local**. Aucune clé privée n'est jamais copiée nulle part.

## Le rebond SSH (nouveauté `ssh_gpgforward` v0.2.x)

Depuis la version `0.2.0` du wrapper, on forwarde *aussi* le socket `agent-ssh-socket`. Conséquence : depuis le serveur Djibian sur lequel on vient de se connecter, on peut relancer un `ssh` vers un **autre** Djibian (ou n'importe quel serveur acceptant notre clé publique), et l'authentification utilise toujours la carte restée sur la machine d'origine.

```bash
# Depuis mon PC, NitroKey branchée
ssh_gpgforward mneme@serveurA.org
# Sur serveurA, déjà authentifiée par la NitroKey distante :
mneme@serveurA:~$ ssh mneme@serveurB.org    # nouveau saut, même NitroKey
mneme@serveurB:~$ git push origin main      # commit signé, par la NitroKey
```

Chaque saut interroge **la même carte physique**, à travers une chaîne de sockets Unix forwardés sur SSH. La clé privée ne quitte jamais son lecteur — elle est seulement *projetée* sur les machines où on l'exerce. L'analogue numérique d'une signature manuscrite à distance qui resterait quand même *de votre main*.

La version `0.2.1` (mai 2026) ajoute deux options pour ajuster la surface forwardée :

- `--no-gpg` : ne forwarde que le ssh-socket (le remote sert juste de bastion SSH, pas de signature/déchiffrement).
- `--no-ssh` : ne forwarde que le gpg-socket (le remote peut signer/déchiffrer mais ne peut pas rebondir en SSH ailleurs).

## Sous le capot

Deux connexions SSH consécutives, orchestrées par `ssh_gpgforward` :

1. **Connexion préparatoire** pour récupérer les chemins exacts des sockets gpg-agent côté serveur. *(En pratique identiques aux nôtres puisque les UID Djibian coïncident, mais le wrapper reste correct dans le cas général.)*
2. **Connexion finale** avec deux `-o RemoteForward` :
    - `agent-socket` distant ← **`agent-extra-socket`** local. C'est la *variante restreinte* du gpg-agent : signe/déchiffre, mais ne gère pas les clés. Sandbox.
    - `agent-ssh-socket` distant ← `agent-ssh-socket` local. Protocole ssh-agent, signe-seulement par nature.

Côté serveur, deux configurations rendent l'opération possible — toutes deux livrées par le paquet **`djibian-gpgconfig`** ([codeberg.org/djibian/djibian-config](https://codeberg.org/djibian/djibian-config/src/branch/main/djibian-gpgconfig)) :

- `/etc/ssh/sshd_config.d/80-StreamLocal.conf` : `StreamLocalBindUnlink yes` — sshd écrase tout socket résiduel avant de binder le socket forwardé.
- `/etc/profile.d/gpg4ssh.sh` : `export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)` — toute session shell login pointe naturellement sur le socket forwardé.

## Une précaution honnête

Tant qu'une session SSH avec forwarding est ouverte sur un remote, **tout processus privilégié sur ce remote** (root, ou compromission) peut demander à votre carte physique de signer ou d'authentifier *quelque chose d'autre que ce que vous avez initié*. Quatre garde-fous se cumulent :

1. **`agent-extra-socket`** côté gpg : périmètre restreint à signe + déchiffre, pas de management de clés.
2. **PIN cache scdaemon** : timeout court (quelques minutes), force la re-saisie du PIN. La fenêtre d'abus est limitée dans le temps.
3. **UIF (`Sign=on` / `Auth=on`)** : si activé sur la carte, oblige un appui physique pour chaque signature. Forte friction, à choisir selon le degré d'autonomie souhaité.
4. **`forcesig=on`** : option carte qui demande le PIN à chaque signature *indépendamment du cache*. Garde-fou logiciel équivalent à UIF côté ergonomique, sans nécessiter d'appui physique.
5. **Discipline** : ne pas laisser de sessions traîner sur des machines qu'on n'administre pas.

## Le pari politique

L'opposé du modèle cloud où *vos secrets vivent sur leur serveur, faites-leur confiance*. Ici, **Les serveurs ne peuvent lire vos secrets, sans la clé que vous tenez dans votre main**. Les serveurs ne peuvent plus manipuler vos données, vous en reprenez le contrôle avec votre clé physique [OpenPGP ID](/fr/solutions/openpgp-id/) (Yubikey, NitroKey, …).

Toute la chaîne est **libre, auditable, et tient dans un paquet Debian**.

## Pour aller plus loin

- [L'étude originale de Sébastien Picardeau](/fr/blog/2025-09-07-agentforwarding/) (sept. 2025) — la procédure manuelle, pas-à-pas, utile pour un serveur non-Djibian.
- Paquet `djibian-gpgconfig` : <https://codeberg.org/djibian/djibian-config>
- `bash-libs` (`bl-djibian adduser`) : <https://codeberg.org/foopgp/bash-libs>
- L'[atelier Djibian + OpenPGP](/fr/course/djibian-openpgp/) pour pratiquer en présentiel.
