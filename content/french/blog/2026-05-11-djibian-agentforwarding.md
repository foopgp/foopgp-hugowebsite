---
title: "Une seule clé physique pour toutes les machines d'Internet"
Date: 2026-05-11T22:30:00+02:00
draft: false
description: "**sshwgpg** est un petit wrapper ssh qui permet à vos sessions distantes de signer, déchiffrer et rebondir en ssh à travers la clé OpenPGP que vous avez sur vous — sans jamais copier la moindre clé privée. Djibian fait le reste côté serveur en une commande."
lang: fr
author: ["Jean-Jacques Brucker", "Mnémé"]
categories: ["News"]
tags: ["djibian", "openpgp", "ssh", "gnupg", "nitrokey", "yubikey", "sshwgpg"]
type: "post"
License: CC By-SA
bg_image: "images/backgrounds/library.jpg"
image: "images/solutions/OpenPGPkeys.jpg"
---

> *Suite et amplification de [l'étude pas-à-pas de Sébastien Picardeau](/fr/blog/2025-09-07-agentforwarding/) (sept. 2025). Même objectif, moins d'étapes, et une propriété nouvelle : le rebond SSH avec la même clé physique.*

Vous vous connectez en ssh sur plusieurs machines par jour. Sur lesquelles vous réalisez une signature numérique, déchiffrez un fichier, ou repartez en ssh ailleurs. La réponse classique consiste à copier vos clés privées sur chacune de ces machines — et à parier qu'à la prochaine entreprise de surveillance ou de cyber-attaque, ce ne sont pas vos secrets qui feront le butin. Cette réponse a mal vieilli.

La bonne réponse existe depuis des années (rediriger *gpg-agent* et *ssh-agent* sur SSH), mais sa mise en place est assez pénible pour que presque personne ne la fasse. Nous avons emballé cette bonne réponse dans un outil. Il s'appelle **sshwgpg**, il tient en 140 lignes de Bash, et il est livré dans [notre dépôt de paquets Debian](/fr/solutions/activity-rd/#djibianfoopgporg).

## Ce que fait sshwgpg, pour faire court

Sur la machine qui peut accéder à vos clés OpenPGP, vous tapez :

```bash
sshwgpg user@distant.example
```

Et vous atterrissez dans une session à distance assez sympathique :

- un socket *gpg-agent* redirigé pour appeler vos clés OpenPGP locales : `gpg --sign`, `gpg --decrypt` ou `git commit -S` fonctionnent *à distance* en utilisant *localement* vos clés de signature ou de déchiffrement ;
- un socket *gpg-agent.ssh* redirigé pour appeler vos clés ssh-via-OpenPGP locales : `ssh user@other.example` ou `sshwgpg user@other.ex` fonctionnent *à distance* en utilisant *localement* vos clés d'authentification OpenPGP.

Deux sockets, une commande, un certificat OpenPGP. Les octets de vos clés privées ne quittent jamais votre ordinateur, ou mieux si vous utilisez une YubiKey ou NitroKey : la puce au fin fond de leur silicium.

## Rebonds SSH & GPG

La plupart des tutoriels « gpg agent forwarding » qu'on trouve sur Internet s'arrêtent au premier saut. La redirection du socket *SSH_AUTH_SOCK=...gpg-agent.ssh* que **sshwgpg** inclut, permet de rebondir encore plus loin, plus facilement :

```bash
vous$ sshwgpg mneme@serveurA.org             # ssh correctement configuré (cf. SSH_AUTH_SOCK) permet de vous authentifier avec votre clé OpenPGP.
serveurA$ sshwgpg mneme@serveurB.org         # authentification ssh via votre clé OpenPGP, sécurisé physiquement par votre YubiKey/NitroKey.
serveurB$ git commit --gpg-sign              # commit signé par la même clé OpenPGP, qui n'a pas quitté la YubiKey/NitroKey que vous tenez sur vous.
serveurB$ git push origin main               # commit poussé via, ssh authentifié par votre clé OpenPGP, encore et toujours sur vous, bien au chaud.
```

Chaque saut rappelle, à travers les rebonds précédents, **la même clé OpenPGP** sur la machine d'origine. Débranchez la YubiKey/NitroKey : plus aucune machine ne peut signer ou déchiffrer vos données, ou vous authentifier. Couplé aux YubiKey/NitroKey, **sshwgpg** rend possible l'équivalent une signature manuscrite à distance qui resterait quand même *de votre main*.

## Risques et surface d'attaque

Tant qu'une clé physique de sécurité est connectée, **tout processus privilégié** (root, ou compromission) peut demander à votre YubiKey/NitroKey de signer, déchiffrer ou authentifier *autre chose que ce que vous avez initié*. On réduit la surface d'attaque à peau de chagrin avec quelques garde-fous :

1. Cache PIN de *scdaemon* : timeout court. La fenêtre d'abus est bornée dans le temps.
2. UIF (*Sign=on*, *Decrypt=on*, *Auth=on*) sur la clé de sécurité : appui physique requis à chaque signature, déchiffrement ou authentification. Forte friction, forte garantie.
3. *forcesig=on* sur la clé de sécurité : redemande le PIN à chaque signature indépendamment du cache.
4. Options *--no-gpg* ou *--no-ssh* de **sshwgpg**.[^sshwgpg-options]
5. Discipline : ne pas laisser sa YubiKey/NitroKey ou des sessions **sshwgpg** traîner sur des machines qu'on ne contrôle pas.

`(1)` est actif par défaut. `(2)`, `(3)` et `(4)` sont des choix à faire selon le niveau de sécurité qu'on veut. `(5)` est la seul chose qu'aucun logiciel ne peut faire à votre place.

[^sshwgpg-options]:
    Usage : **sshwgpg** [*OPTIONS*] [*SSH_OPTIONS*] *destination* [*SSH_OPTIONS*] [*command* [*argument* ...]]

    Options :
    - *--no-gpg*  : ne redirige que le socket ssh — le distant est un pur bastion ssh, pas de signature/déchiffrement à distance.
    - *--no-ssh*  : ne redirige que le socket gpg — le distant peut signer/déchiffrer mais ne peut pas rebondir en ssh.
    - *--dry-run* : ne pas exécuter ssh — afficher seulement la commande ssh qui aurait été exécuté.

## Pré-requis côté serveur

Le serveur OpenSSH distant *sshd* a besoin d'une option :

```
# /etc/ssh/sshd_config.d/80-StreamLocal.conf
StreamLocalBindUnlink yes
```

Sans elle, *sshd* refuse d'écraser un socket existant et la seconde connexion de **sshwgpg** n'arrive pas à le reprendre. C'est tout le pré-requis côté serveur pour faire fonctionner **sshwgpg** — et [l'étude de Sébastien (2025-09-07)](/fr/blog/2025-09-07-agentforwarding/) en est la version longue.

## Installation

La seule dépendance d'exécution de **sshwgpg** est *openssh-client*. Sources et packaging Debian sur <https://codeberg.org/foopgp/sshwgpg>. Actuellement disponible via [notre dépôt de paquets Debian](/fr/solutions/activity-rd/#djibianfoopgporg) :

```bash
sudo apt install sshwgpg
```

## Djibian : la voie tout-équipée

**sshwgpg** est l'outil côté client. Pour l'utiliser sereinement sur une flotte de serveurs, il faudrait sans Djibian configurer chacun d'eux : l'option *sshd* ci-dessus, un *~/.ssh/authorized_keys* avec la bonne sous-clé SSH, *gpg-agent* réglé pour accepter le socket redirigé, *SSH_AUTH_SOCK* pointé sur le socket ssh de gpg-agent dans toute session login, etc.

Le paquet ***djibian-gpgconfig*** fait tout cela pour vous :

- fournit */etc/ssh/sshd_config.d/80-StreamLocal.conf* ;
- fournit */etc/profile.d/gpg4ssh.sh* (`export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)` — toute session login pointe naturellement sur le socket redirigé) ;
- fournit */etc/gnupg/{gpg.conf,gpg-agent.conf}* réglés pour la redirection ;
- dépend de **sshwgpg**, donc installer ***djibian-gpgconfig*** vous obtient les deux côtés d'un coup.

Et côté provisionnement utilisateur, le paquet ***bashlibs-pgpid*** permet de transformer une empreinte OpenPGP de 40 caractères hexa en un compte Linux complet :
- UID/GID dérivé de l'identifiant [PGP ID](/fr/solutions/pgp-id/) de l'utilisateur (donc [identique](/fr/blog/2026-04-28-openpgp-id-spec/) sur toutes les machines Djibian) ;
- *$HOME* égal à l'identifiant [PGP ID](/fr/solutions/pgp-id/) de l'utilisateur (donc [unique et identique](/fr/blog/2026-04-28-openpgp-id-spec/) sur toutes les machines Djibian) ;
- *~/.ssh/authorized_keys* rempli depuis la sous-clé d'authentification du certificat OpenPGP ;
- *~/.gitconfig* et *~/.gnupg* pré-configurés pour signer en utilisant la clé OpenPGP de l'utilisateur ;
- et même l'image d'avatar, enregistrée dans *~/.face*, est prise depuis l'attribut image du certificat OpenPGP.

Ce que ça donne de bout en bout :

```bash
# Sur le serveur djibian.example, en tant qu'admin :
sudo bl-djibian adduser --from-certificate D995BB48C67FD9C1E8A03F7CDEC98791AADC429B

# Depuis votre ordinateur, votre YubiKey/NitroKey branchée :
sshwgpg mneme@djibian.example
# Vous avez la clé de sécurité de Mnème et connaissez son code PÏN : vous êtes Mnème ; depuis djibian.example : vous signez, déchiffrez ou téléchargez comme à la maison
```

Sur un serveur non-Djibian, la même configuration tient en un `useradd` et plusieurs lignes de shell — voir [l'étude précédente](/fr/blog/2025-09-07-agentforwarding/).

## Le pari politique

Le modèle cloud dit : *vos secrets vivent sur leurs serveurs, faites-leur confiance.* Ce que **sshwgpg** (et le reste de la chaîne [PGP ID](/fr/solutions/pgp-id/)) rend possible est l'opposé : **les serveurs ne peuvent pas lire vos secrets sans la clé que vous tenez dans votre main.** Ils ne peuvent plus manipuler vos données dans votre dos ; vous en reprenez le contrôle, littéralement, à travers votre clé physique de sécurité : YubiKey ou NitroKey.

Toute cette chaîne est **libre, auditable, et tient dans nos paquets Djibian.**

## Pour aller plus loin

- ***sshwgpg*** : <https://codeberg.org/foopgp/sshwgpg>
- ***djibian-gpgconfig*** : <https://codeberg.org/djibian/djibian-config>
- ***bash-libs*** (`bl-djibian adduser`) : <https://codeberg.org/foopgp/bash-libs>
- L'[atelier Djibian + OpenPGP](/fr/course/djibian-openpgp/) pour pratiquer en présentiel.
