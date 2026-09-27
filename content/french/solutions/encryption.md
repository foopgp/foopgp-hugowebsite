---
title: "Chiffrement"
lang: fr
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
author: [ "Mnêmê", "Jean-Jacques Brucker" ]
description : "Rendre un message illisible pour tous, sauf pour ses destinataires : comment fonctionne le chiffrement PGP, et avec quels logiciels le pratiquer."
image: "images/solutions/encryption.png"
tags: ["Encryption", "pgpid"]
categories: ["solution"]
type: "post"
---

### Chiffrer

Chiffrer, c'est rendre un message ou un fichier illisible pour quiconque n'a
pas la clé qui l'ouvre. Deux familles d'algorithmes y concourent :

- le **chiffrement symétrique** utilise la même clé pour chiffrer et pour
  déchiffrer. Il est rapide et convient aux gros volumes, mais il faut d'abord
  faire parvenir cette clé, secrète, à son correspondant. Exemple : AES ;
- le **chiffrement asymétrique** utilise une paire de clés : une clé
  *publique*, que chacun peut connaître, pour chiffrer ; une clé *privée*, que
  seul son détenteur possède, pour déchiffrer. Plus besoin de s'échanger un
  secret à l'avance. Exemples : les courbes elliptiques (X25519) ou, plus
  ancien, RSA.

En pratique, on combine les deux : c'est le chiffrement *hybride*, celui de
PGP.

---

### PGP, OpenPGP, LibrePGP, PGP ID

**PGP** (*Pretty Good Privacy*) est le logiciel d'origine, écrit par
[Philip Zimmermann](https://philzimmermann.com/EN/background/index.html)
en 1991.

**OpenPGP** est [l'ensemble des spécifications](https://www.openpgp.org/about/standard/)
qui en sont issues, élaborées au sein d'un
[groupe de travail](https://datatracker.ietf.org/wg/openpgp/charter/) de
l'[IETF](https://fr.wikipedia.org/wiki/Internet_Engineering_Task_Force). Sa
dernière version est la RFC 9580, publiée en 2024.

**LibrePGP** est une variante de ces spécifications, qui s'en est séparée sur
quelques points et que suit notamment GnuPG.

**PGP ID** est une manière d'utiliser PGP, enrichie d'innovations
spécifiées au fur et à mesure en vue de leur normalisation : une identité
numérique ancrée dans un lieu et un instant d'origine, dont les secrets se
sauvegardent sur papier et vivent dans une clé de sécurité.
[En savoir plus](/fr/solutions/pgp-id/).

**PGPID** et **foodjis** sont les logiciels d'origine qui mettent en œuvre
PGP ID. Ils s'en tiennent pour l'instant au format de clés que les deux
spécifications partagent (la version 4), et que comprennent tous les logiciels
cités plus bas.

---

### Comment fonctionne le chiffrement PGP

1. **Les clés.** Chacun possède une paire de clés pour chiffrer et déchiffrer,
   à côté de celles qui servent à signer et à s'authentifier. La clé publique
   se partage avec ses correspondants et se publie sur les serveurs de
   certificats. La clé privée reste secrète : avec PGP ID, elle ne vit que dans
   une clé de sécurité — une YubiKey, une Nitrokey —, jamais sur un ordinateur
   ou un téléphone connecté.
2. **Chiffrer.** Le logiciel tire au hasard une *clé de session*, symétrique,
   et chiffre le message avec elle. Il chiffre ensuite cette clé de session
   avec la clé publique de chaque destinataire. Le message chiffré et les clés
   de session chiffrées partent ensemble.
3. **Déchiffrer.** Le destinataire présente sa clé de sécurité : elle seule,
   avec la clé privée qu'elle garde, retrouve la clé de session. Le logiciel
   s'en sert pour déchiffrer le message.

Le même mécanisme permet d'ajouter une [signature](/fr/solutions/signature/),
qui prouve qui a écrit le message et qu'il n'a pas été modifié.

---

### Pourquoi une clé de sécurité

Une clé privée copiée est une clé privée perdue : quiconque en détient une
copie lit votre courrier, pour toujours. Dans une clé de sécurité, la clé
privée ne sort jamais : l'ordinateur ou le téléphone lui confie la clé de
session à ouvrir, et reçoit la réponse — jamais le secret.

Perdre son téléphone ne coûte donc rien. Perdre sa clé coûte ce que coûte une
clé, et la sauvegarde sur papier de PGP ID permet d'en graver une nouvelle.
L'association [fournit ces clés](/fr/solutions/offer-security-keys/) à ses
adhérents.

---

### Avec quels logiciels

Des logiciels qui chiffrent avec PGP au moyen d'une clé de sécurité :

#### Android
  * **[foodjis](/fr/blog/2026-09-24-foodjis-android/) avec [Thunderbird pour Android](https://www.thunderbird.net/fr/mobile/)** — ce que nous recommandons. foodjis se présente aux applications de messagerie comme le fournisseur OpenPGP du téléphone : la clé de sécurité posée au dos du téléphone déchiffre et signe, et aucun secret n'est jamais sur le téléphone. Il chiffre et déchiffre aussi par lui-même un texte ou un fichier, avec la clé ou avec un mot de passe.

#### Linux
  * [foodjis — djibian-onboarding](/fr/solutions/djibian/)
  * [Evolution : Seahorse](https://www.openpgp.org/software/seahorse/)

#### macOS
  * [Apple Mail : GPGTools](https://www.openpgp.org/software/gpgtools/)

#### Windows
  * [Gpg4win](https://www.openpgp.org/software/gpg4win/) ***⚠ non testé ⚠***
  * [Thunderbird](https://www.thunderbird.net/fr/), la clé de sécurité passant par GnuPG ***⚠ non testé ⚠***

#### iOS
  * [FlowCrypt](https://www.openpgp.org/software/flowcrypt/) ***⚠ non testé ⚠***

---

**Les logiciels qui respectent les spécifications OpenPGP ou LibrePGP sont des
outils puissants pour protéger les communications et les données, dans un monde
de plus en plus exposé aux cyberattaques.**
