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

## Clients mail compatibles OpenPGP

- [Evolution](https://help.gnome.org/users/evolution/stable/intro-main-window.html.fr) : ordinateurs Linux/Unix.
- [Thunderbird](https://www.thunderbird.net/fr/) : Linux/Unix, Windows, macOS, Android et IOS.
- [K-9 Mail](https://k9mail.app/) : smartphones Android.

## Cas d’usage

- **Evolution / Thunderbird** + **GnuPG** : usage personnel ou professionnel sur ordinateur, avec des fonctionnalités complètes.
- **K-9 Mail / Thunderbird** + **OpenKeychain** : usage mobile sécurisé, idéal en déplacement.

---

## Conclusion

**Evolution**, **Thunderbird** et **K-9 Mail** sont des applications de messagerie offrant une prise en charge fiable d’OpenPGP pour sécuriser vos courriels.  
Selon la plateforme utilisée, ces applications utilisent **GnuPG** ou **OpenKeychain** pour chiffrer, déchiffrer, signer et vérifier les messages, assurant ainsi la confidentialité et l’authenticité des échanges.
