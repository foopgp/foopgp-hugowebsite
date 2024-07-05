---
Lastmod: 2024-07-05T02:03:09+02:00 # MANAGED BY update_lastmod.sh
title: "Chiffrement"
#date: 2019-07-06T15:27:17+06:00
draft: false
# page title background image
bg_image: "images/backgrounds/puzzle.jpg"
author: [ "Jean-Jacques Brucker" ]
# meta description
description : "Solutions de chiffrement."
image: "images/solutions/encryption.png"
tags: ["Encryption", "pgpid"]
categories: ["solution"]
type: "post"
---

### Chiffrement Général

Le chiffrement est un procédé de cryptographie grâce auquel on peut rendre la compréhension d'un document impossible à toute personne non autorisée. Chiffrer consiste à utiliser des algorithmes mathématiques avec des données courtes appelées *"clés"*, pour coder d'autres données. Les deux principaux types de chiffrement sont le chiffrement symétrique et le chiffrement asymétrique :

1. **Chiffrement symétrique** :
   - Utilise la même clé pour chiffrer et déchiffrer les données.
   - Rapide et efficace pour chiffrer de grandes quantités de données.
   - Exemple : AES (Advanced Encryption Standard).

2. **Chiffrement asymétrique** :
   - Utilise une paire de clés : une clé publique pour chiffrer les données et une clé privée pour les déchiffrer.
   - Plus sécurisé pour l'échange de clés et l'authentification.
   - Exemple : RSA (Rivest-Shamir-Adleman).

---


### OpenPGP (Pretty Good Privacy)

OpenPGP est [un ensemble de spécifications](https://www.openpgp.org/about/standard/) définies essentiellement par un [groupe de travail dédié](https://datatracker.ietf.org/wg/openpgp/charter/) au sein de l'[IETF](https://fr.wikipedia.org/wiki/Internet_Engineering_Task_Force). Elles combinent des techniques de chiffrement symétrique et asymétrique pour garantir la confidentialité, l'intégrité et l'authenticité des communications numériques.

-----

#### Fonctionnement du chiffrement OpenPGP :


* 1.**Génération de clés**
  - Avec [pgpid](https://codeberg.org/foopgp/pgpid), chaque utilisateur génère trois paires de clés : les clés publiques sont à minima partagées avec les correspondants. Les clés privées sont elles bien gardées secrètes. Elles ne devront donc jamais être sur aucun système connecté, autre que des clés de sécurités telles des YubiKeys ou des NitroKeys.
* 2.**Chiffrement des données** :
  - Le message est chiffré avec une clé symétrique de session générée aléatoirement.
  - La clé de session est ensuite chiffrée avec la clé publique dédiée du destinataire.
  - Le message chiffré (symétriquement) et la clé de session chiffrée (asymétriquement) sont envoyés au destinataire.
* 3.**Déchiffrement des données** :
  - Le destinataire utilise sa clé de sécurité (eg: YubiKey,...) pour, à partir de la clé privée dédiée, déchiffrer la clé de session.
  - La clé de session est utilisée par l'application (eg: client mail) pour déchiffrer le message.

---

### Applications qui utilisent le chiffrement OpenPGP au travers de clés de sécurité

#### Linux
  * [Claws Mail](https://www.openpgp.org/software/claws/)
  * [Evolution: Seahorse](https://www.openpgp.org/software/seahorse/)
  * [KMail: Kleopatra](https://www.openpgp.org/software/kleopatra/)
  * [Mutt](https://www.openpgp.org/software/mutt/)

#### Mac OS
  * [Apple Mail: GPGTools](https://www.openpgp.org/software/gpgtools/)
  * [Mutt](https://www.openpgp.org/software/mutt/)

#### Windows
  * [Claws Mail](https://www.openpgp.org/software/claws/) ***⚠ non testé ⚠***
  * [Gpg4win](https://www.openpgp.org/software/gpg4win/) ***⚠ non testé ⚠***
  * [Postbox](https://www.openpgp.org/software/postbox/) using [Enigmail](https://www.openpgp.org/software/enigmail/) ***⚠ non testé ⚠***

#### Android
  * [K-9 Mail: OpenKeychain](https://www.openpgp.org/software/openkeychain/)
  * [FlowCrypt](https://www.openpgp.org/software/flowcrypt/) ***⚠ non testé ⚠***

#### iOS
  * [FlowCrypt](https://www.openpgp.org/software/flowcrypt/) ***⚠ non testé ⚠***

---

**Les applications qui utilisent et respectent les spécifications OpenPGP sont donc des outils puissants pour sécuriser les communications et les données numériques dans un monde de plus en plus menacé par les cyberattaques.**

---

