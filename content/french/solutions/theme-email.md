---
Lastmod: 2024-07-02T07:30:59+00:00 # MANAGED BY update_lastmod.sh
title: "Courriel"
#date: 2019-07-06T15:27:17+06:00
draft: false
# page title background image
bg_image: "images/backgrounds/puzzle.jpg"
# meta description
description : "Solutions pour le courriel."
# Research image
image: "images/solutions/mail-scryptmail-logo_large.png"
tags: ["email"]
categories: ["solution"]
type: "post"
---

Si vous avez des changements à suggérer [-> Codeberg](https://codeberg.org/foopgp/foopgp-hugowebsite/_edit/test/content/french/solutions/theme-email.md).

---

### Clients mail compatibles OpenPGP

Nos suggestions de clients email supportant OpenPGP :

- Pour l'ordinateur (GNU/Linux…) :
  - [Evolution](https://help.gnome.org/users/evolution/stable/intro-main-window.html.fr) + [GnuPG](https://gnupg.org/)

- Sur Android :
  - [K9 Mail](https://k9mail.github.io/) + [OpenKeychain](https://www.openkeychain.org/)


De nombreux autres clients mails sont compatibles OpenPGP, vous en trouverez ici :

- https://www.openpgp.org/software/
- [sur Framalibre](https://framalibre.org/recherche-par-crit-res?keys=pgp+OR+gpg) (la requête ne cherche pas que les clients mails).

---

### Evolution

[**Evolution**](https://help.gnome.org/users/evolution/stable/index.html.fr) permet de gérer vos courriels, contacts, tâches et agendas. Via GnuPG, Il prend en charge les clés de sécurité OpenPGP pour sécuriser les courriels.

#### Fonctionnalités PGP d'Evolution

1. **Chiffrement des emails :**
   - Evolution permet de chiffrer les emails en utilisant le certificat du destinataire. Cela garantit que seuls les destinataires autorisés peuvent lire le contenu du message.
   - Pour chiffrer un email, vous devez avoir importé le certificat du destinataire dans votre trousseau de clés.

2. **Déchiffrement des emails :**
   - Lors de la réception d'un email chiffré, Evolution utilise votre clé privée pour déchiffrer le message afin que vous puissiez le lire.

3. **Signature numérique :**
   - Evolution permet de signer numériquement les emails en utilisant votre clé privée. Cela permet au destinataire de vérifier l'authenticité et l'intégrité du message à l'aide de votre clé publique.
   - La signature numérique assure que le message n'a pas été altéré en transit et qu'il provient bien de vous.

4. **Vérification des signatures :**
   - Lors de la réception d'un email signé numériquement, Evolution vérifie la signature en utilisant le certificat de l'expéditeur pour confirmer l'authenticité du message.

5. **Gestion des clés :**
   - Evolution s'intègre avec des gestionnaires de clés comme GnuPG pour la gestion des certificats et clés OpenPGP. Vous pouvez importer, exporter et gérer les certificats et vos clés directement depuis l'application.

### K9-Mail

[**K-9 Mail**](https://k9mail.app/) est un client de messagerie open source pour Android qui utilise les clés de sécurité via OpenKeychain, une application de gestion de clés OpenPGP pour Android.

#### Fonctionnalités PGP de K-9 Mail

1. **Chiffrement des emails :**
   - K-9 Mail, en combinaison avec OpenKeychain, permet de chiffrer les emails en utilisant le certificat du destinataire. Les emails chiffrés garantissent que seuls les destinataires prévus peuvent lire le message.

2. **Déchiffrement des emails :**
   - Lors de la réception d'un email chiffré, K-9 Mail utilise OpenKeychain pour demander à votre clé de sécurité (YubiKey, Nitrokey,...) de déchiffrer le message, permettant ainsi la lecture du contenu.

3. **Signature numérique :**
   - Vous pouvez signer numériquement vos emails avec K-9 Mail et OpenKeychain. En utilisant votre clé de sécurité (YubiKey, Nitrokey,...), vous pouvez ajouter une signature numérique à vos messages, assurant ainsi leur authenticité et intégrité.

4. **Vérification des signatures :**
   - K-9 Mail, avec l'aide d'OpenKeychain, vérifie les signatures numériques des emails reçus en utilisant le certificat de l'expéditeur. Cela confirme que le message est authentique et n'a pas été modifié.

5. **Gestion des clés :**
   - OpenKeychain gère OpenPGP pour K-9 Mail. Vous pouvez importer, exporter et gérer les certificats OpenPGP et vos clés de sécurité à partir de l'application OpenKeychain.

### Comparaison entre Evolution et K-9 Mail

#### Plateforme

- **Evolution** : Destiné aux ordinateurs de bureau sous Linux/Unix avec une intégration d'OpenPGP via GnuPG.
- **K-9 Mail** : Conçu pour les appareils Android, nécessitant l'application OpenKeychain pour la gestion des certificats et clés OpenPGP.

#### Utilisation

- **Evolution** : Idéal pour une utilisation professionnelle ou personnelle sur des ordinateurs de bureau, avec des fonctionnalités complètes de gestion de messagerie, agenda, contact.
- **K-9 Mail** : Parfait pour une utilisation mobile, permettant aux utilisateurs de gérer leurs emails en toute sécurité en déplacement.

### Conclusion

**Evolution** et **K-9 Mail** offrent tous deux une prise en charge robuste d'OpenPGP pour sécuriser les communications par email. Evolution utilise GnuPG, tandis que K-9 Mail utilise OpenKeychain pour fournir des fonctionnalités similaires sur les appareils Android. Ces deux clients de messagerie permettent aux utilisateurs de chiffrer, déchiffrer, signer et vérifier les emails, assurant ainsi la confidentialité et l'authenticité des communications électroniques.

