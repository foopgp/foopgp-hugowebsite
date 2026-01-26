---
title: "Courriel"
lang: fr
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
author: [ "Maël Lemoine", "Evyn Faure" ]
description: "Solutions pour sécuriser les courriels avec OpenPGP."
image: "images/solutions/mail-scryptmail-logo_large.png"
tags: ["email"]
categories: ["solution"]
type: "post"
---

Si vous avez des améliorations ou corrections à proposer, vous pouvez contribuer directement sur  
[Codeberg](https://codeberg.org/foopgp/foopgp-hugowebsite/_edit/test/content/french/solutions/theme-email.md).

---

## Clients mail compatibles OpenPGP

Voici une sélection de clients de messagerie prenant en charge OpenPGP, selon votre plateforme.

### Ordinateurs (GNU/Linux, Windows, macOS)

- [Evolution](https://help.gnome.org/users/evolution/stable/intro-main-window.html.fr) + [GnuPG](https://gnupg.org/) (Sous linux)
- [Thunderbird](https://www.thunderbird.net/fr/) + [GnuPG](https://gnupg.org/) (Sous macOS ou windows)

[**Evolution**](https://help.gnome.org/users/evolution/stable/index.html.fr) et [**Thunderbird**](https://www.thunderbird.net/fr/) sont des clients de messagerie complets permettant de gérer courriels, contacts, agendas et tâches.

Grâce à **GnuPG**, ils prennent en charge le chiffrement OpenPGP pour sécuriser les échanges.

### Fonctionnalités OpenPGP

- **Chiffrement des courriels**  
  Les messages peuvent être chiffrés à l’aide de la clé publique du destinataire, garantissant que seul ce dernier pourra les lire.

- **Déchiffrement**  
  Les messages reçus sont automatiquement déchiffrés à l’aide de votre clé privée.

- **Signature numérique**  
  Il est possible de signer les courriels afin de prouver l’identité de l’expéditeur et l’intégrité du message.

- **Vérification des signatures**  
  Les signatures des messages reçus sont vérifiées à l’aide de la clé publique de l’expéditeur.

- **Gestion des clés**  
  Les clés OpenPGP peuvent être importées, exportées et gérées directement via GnuPG.

---

## Smartphones

[**K-9 Mail**](https://k9mail.app/) est un client de messagerie open source pour Android.  
Il s’appuie sur **OpenKeychain** pour la gestion des clés OpenPGP et des clés de sécurité matérielles.

## Démonstration : sécuriser un courriel avec OpenPGP

Cette démonstration présente les bases de la sécurisation des courriels avec OpenPGP :

- chiffrer un message pour garantir sa confidentialité,
- déchiffrer un courriel reçu,
- signer un message pour prouver son authenticité,
- vérifier la signature d’un courriel.

La démonstration est réalisée avec  
[**Evolution**](https://help.gnome.org/users/evolution/stable/intro-main-window.html.fr) et [**GnuPG**](/fr/about/openpgp/) pour la gestion des clés.

{{< video src="/videos/2026/20260123-djibian-mail-chiffre.mp4" type="video/mp4" >}}

---

## Plateformes prises en charge

- **Evolution** : ordinateurs Linux/Unix.
- **Thunderbird** : Linux/Unix, Windows et macOS.
- **K-9 Mail** : smartphones Android.

## Cas d’usage

- **Evolution / Thunderbird** : usage personnel ou professionnel sur ordinateur, avec des fonctionnalités complètes.
- **K-9 Mail** : usage mobile sécurisé, idéal en déplacement.

---

## Conclusion

**Evolution**, **Thunderbird** et **K-9 Mail** offrent une prise en charge fiable d’OpenPGP pour sécuriser les communications par courriel.  
Selon la plateforme utilisée, GnuPG ou OpenKeychain permet de chiffrer, déchiffrer, signer et vérifier les messages, assurant ainsi la confidentialité et l’authenticité des échanges.
