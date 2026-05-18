---
title: "Une seule clé physique pour toutes les machines d'Internet"
Date: 2026-05-11T22:30:00+02:00
draft: false
description: "sshwgpg est un petit wrapper ssh qui permet à vos sessions distantes de signer, déchiffrer et rebondir en ssh à travers la carte OpenPGP que vous avez sur vous — sans jamais copier la moindre clé privée. Djibian fait le reste côté serveur en une commande."
lang: fr
author: ["Jean-Jacques Brucker", "Mnème"]
categories: ["News"]
tags: ["djibian", "openpgp", "ssh", "gnupg", "nitrokey", "yubikey", "sshwgpg"]
type: "post"
License: CC By-SA
bg_image: "images/backgrounds/library.jpg"
image: "images/solutions/OpenPGPkeys.jpg"
---

> *Suite et amplification de [l'étude pas-à-pas de Sébastien Picardeau](/fr/blog/2025-09-07-agentforwarding/) (sept. 2025). Même objectif, moins d'étapes, et une propriété nouvelle : le rebond SSH avec la même clé physique.*

Vous vous connectez en ssh sur dix machines par jour. Sur la moitié, vous signez un commit git, vous déchiffrez un fichier, ou vous repartez en ssh ailleurs. La réponse classique consiste à copier vos clés privées sur chacune de ces machines — et à parier que la prochaine fois que l'une d'elles se fait rooter, ce ne sont pas vos secrets qui font le butin. Cette réponse a mal vieilli.

La bonne réponse existe depuis des années (forwarder `gpg-agent` et `ssh-agent` sur SSH), mais sa mise en place est assez pénible pour que presque personne ne la fasse. Nous avons emballé cette bonne réponse dans un outil. Il s'appelle **`sshwgpg`**, il tient en 140 lignes de Bash, et il est livré dans notre dépôt de test dès aujourd'hui.

## Ce que fait sshwgpg, en un paragraphe

Vous branchez votre carte OpenPGP (YubiKey, NitroKey, …) sur la machine où vous tapez. Puis :

```bash
sshwgpg user@distant.example
```

Vous atterrissez sur `distant.example` avec deux sockets en plus dans votre shell :

- un **socket gpg-agent** forwardé qui rappelle votre carte — `gpg --sign`, `gpg --decrypt`, `git commit -S` fonctionnent *sur le distant* et consultent **votre** carte sur votre PC ;
- un **socket ssh-agent** forwardé qui rappelle votre sous-clé OpenPGP d'authentification — le distant peut faire `ssh autre-hôte` ou `git push` en SSH avec cette même carte.

Deux sockets, une commande, une clé physique. Les octets de votre clé privée ne quittent jamais le lecteur.

## Rebond SSH : la nouveauté

La plupart des recettes « gpg agent forwarding » qu'on trouve en ligne s'arrêtent au premier saut. Le forwarding de `ssh-agent`, c'est ce que `sshwgpg` ajoute — et dès qu'on l'a, la chaîne s'étend aussi loin que la confiance s'étend :

```bash
vous$ sshwgpg mneme@serveurA.org
serveurA$ ssh mneme@serveurB.org             # auth via la carte sur `vous`
serveurB$ git push origin main               # commit signé par la carte sur `vous`
```

Chaque saut rappelle, à travers les sauts précédents, **la même carte physique** posée sur la machine d'origine. Débranchez la carte : tous les sauts perdent leurs mains d'un seul coup. L'analogue numérique d'une signature manuscrite à distance qui resterait quand même *de votre main*.

Deux options ajustent la surface forwardée :

- `--no-gpg` : ne forwarde que le socket ssh-auth — le distant est un pur bastion ssh, pas de signature/déchiffrement à distance.
- `--no-ssh` : ne forwarde que le socket gpg — le distant peut signer/déchiffrer mais ne peut pas rebondir en ssh.

## Modèle de confiance — à lire

Tant qu'une session `sshwgpg` est ouverte, **tout processus privilégié sur le distant** (root, ou compromission) peut demander à votre carte de signer ou d'authentifier *autre chose que ce que vous avez initié*. C'est le coût structurel du forwarding d'agent. On rétrécit la fenêtre avec une pile de garde-fous :

1. `agent-extra-socket` côté `gpg-agent` — périmètre restreint : signe + déchiffre, pas de gestion de clés.
2. Cache PIN de `scdaemon` : timeout court. La fenêtre d'abus est bornée dans le temps.
3. UIF (`Sign=on`, `Auth=on`) sur la carte : appui physique requis à chaque signature. Forte friction, forte garantie.
4. `forcesig=on` sur la carte : redemande le PIN à chaque signature indépendamment du cache.
5. Discipline : ne pas laisser de sessions `sshwgpg` traîner sur des machines qu'on n'administre pas.

`(1)` et `(2)` sont actifs par défaut. `(3)` et `(4)` sont des choix à faire selon le niveau d'autonomie qu'on veut sur les sessions longues. `(5)` est le seul qu'aucun logiciel ne peut donner à votre place.

## Pré-requis côté serveur

Le `sshd` distant a besoin d'une option :

```
# /etc/ssh/sshd_config.d/80-StreamLocal.conf
StreamLocalBindUnlink yes
```

Sans elle, `sshd` refuse d'écraser un socket forwardé existant et la seconde connexion de `sshwgpg` n'arrive pas à le re-binder. C'est tout le pré-requis côté serveur pour faire fonctionner `sshwgpg` — et [l'étude de Sébastien (2025-09-07)](/fr/blog/2025-09-07-agentforwarding/) en est la version longue.

## Installation

La seule dépendance d'exécution de `sshwgpg` est `openssh-client`. Sources et packaging Debian sur <https://codeberg.org/foopgp/sshwgpg>. Actuellement disponible via le dépôt de test foopgp :

```bash
sudo apt install sshwgpg
```

## Djibian : la voie tout-équipée

`sshwgpg` est l'outil côté client. Pour l'utiliser sereinement sur une flotte de serveurs, il faudrait sans Djibian configurer chacun d'eux : l'option `sshd` ci-dessus, un `authorized_keys` avec la bonne sous-clé SSH, `gpg-agent` réglé pour accepter le socket forwardé, `SSH_AUTH_SOCK` pointé sur le socket ssh de gpg-agent dans toute session login, etc.

Le paquet **`djibian-gpgconfig`** fait tout cela pour vous :

- livre `/etc/ssh/sshd_config.d/80-StreamLocal.conf` ;
- livre `/etc/profile.d/gpg4ssh.sh` (`export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)` — toute session login pointe naturellement sur le socket forwardé) ;
- livre `/etc/gnupg/{gpg.conf,gpg-agent.conf}` réglés pour le forwarding ;
- dépend de `sshwgpg`, donc installer `djibian-gpgconfig` vous obtient les deux côtés d'un coup.

Et côté provisionnement utilisateur, **`bl-djibian adduser --from-certificate <empreinte>`** transforme une empreinte OpenPGP de 40 caractères hexa en un compte Linux complet : UID/GID dérivés du `u4`/`u5` de l'utilisateur (donc identiques sur toutes les machines Djibian), `$HOME` nommé d'après l'OpenPGP ID, `~/.ssh/authorized_keys` rempli depuis la sous-clé d'authentification du certificat, `~/.gitconfig` et `~/.gnupg` pré-câblés, et même `~/.face` pris depuis l'attribut image du certificat.

Ce que ça donne de bout en bout :

```bash
# Sur le serveur, en tant qu'admin :
sudo bl-djibian adduser --from-certificate D995BB48C67FD9C1E8A03F7CDEC98791AADC429B

# Depuis votre PC, carte branchée :
sshwgpg mneme@dev.foopgp.org
# vous êtes mneme@dev.foopgp.org, vous signez et poussez comme à la maison
```

Sur un serveur non-Djibian, la même configuration tient en quatre lignes de shell et un `useradd` — et [l'étude de Sébastien](/fr/blog/2025-09-07-agentforwarding/) déroule pas-à-pas la manière de la poser.

## Le pari politique

Le modèle cloud dit : *vos secrets vivent sur leurs serveurs, faites-leur confiance.* Ce que `sshwgpg` (et le reste de la chaîne [OpenPGP ID](/fr/solutions/openpgp-id/)) rend possible est l'opposé : **les serveurs ne peuvent pas lire vos secrets sans la clé que vous tenez dans votre main.** Ils ne peuvent plus manipuler vos données dans votre dos ; vous en reprenez le contrôle, en forme littéralement physique, à travers une petite clé sur un petit lecteur.

Toute cette chaîne est **libre, auditable, et tient dans un paquet Debian.**

## Pour aller plus loin

- [L'étude originale de Sébastien Picardeau](/fr/blog/2025-09-07-agentforwarding/) (sept. 2025) — la manipulation manuelle côté serveur, pas-à-pas.
- `sshwgpg` : <https://codeberg.org/foopgp/sshwgpg>
- `djibian-gpgconfig` : <https://codeberg.org/djibian/djibian-config>
- `bash-libs` (`bl-djibian adduser`) : <https://codeberg.org/foopgp/bash-libs>
- L'[atelier Djibian + OpenPGP](/fr/course/djibian-openpgp/) pour pratiquer en présentiel.
