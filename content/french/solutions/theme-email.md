---
title: "Courriel"
#date: 2019-07-06T15:27:17+06:00
draft: false
# page title background image
bg_image: "images/backgrounds/puzzle.jpg"
# meta description
description : "Solutions pour le courriel."
# Research image
image: "images/solutions/mail-scryptmail-logo_large.png"
categories: ["solution"]
type: "post"
---

### pour le courriel

(TODO)

### Clients mail compatibles OpenPGP

Nos suggestions de clients email supportant OpenPGP&nbsp;:

- Pour l'ordinateur (Mac, Windows ou GNU/Linux…)&nbsp;:
  - [Thunderbird](https://www.thunderbird.net/fr/): À partir de la version 78 le support d'OpenPGP est intégré. Fonctionne sur tous les systèmes courants.
  - [Claws Mail](https://claws-mail.org/) (Windows, GNU/Linux)

- Sur Android&nbsp;:
  - [FairEmail](https://email.faircode.eu/) + [OpenKeychain](https://www.openkeychain.org/)
  - [K9 Mail](https://k9mail.github.io/) + [OpenKeychain](https://www.openkeychain.org/)


De nombreux autres clients mails sont compatibles OpenPGP, vous en trouverez ici&nbsp;:

- https://www.openpgp.org/software/
- [sur Framalibre](https://framalibre.org/recherche-par-crit-res?keys=pgp+OR+gpg) (la requête ne cherche pas que les clients mails).

---

Cette page est toujours en cours d'écriture, vous pouvez nous aider [en contribuant sur GitHub](https://github.com/foopgp/foopgp-hugowebsite/blob/test/content/french/solutions/theme-email.md).


### Evolution

[**Evolution**](https://help.gnome.org/users/evolution/stable/index.html.fr) est un gestionnaire d'informations personnelles pour les systèmes Unix, qui offre une prise en charge intégrée de la cryptographie PGP (Pretty Good Privacy) pour sécuriser les emails.

#### Fonctionnalités PGP d'Evolution

1. **Chiffrement des emails :**
   - Evolution permet de chiffrer les emails en utilisant la clé publique du destinataire. Cela garantit que seuls les destinataires autorisés peuvent lire le contenu du message.
   - Pour chiffrer un email, vous devez avoir importé la clé publique du destinataire dans votre trousseau de clés.

2. **Déchiffrement des emails :**
   - Lors de la réception d'un email chiffré, Evolution utilise votre clé privée pour déchiffrer le message afin que vous puissiez le lire.

3. **Signature numérique :**
   - Evolution permet de signer numériquement les emails en utilisant votre clé privée. Cela permet au destinataire de vérifier l'authenticité et l'intégrité du message à l'aide de votre clé publique.
   - La signature numérique assure que le message n'a pas été altéré en transit et qu'il provient bien de vous.

4. **Vérification des signatures :**
   - Lors de la réception d'un email signé numériquement, Evolution vérifie la signature en utilisant la clé publique de l'expéditeur pour confirmer l'authenticité du message.

5. **Gestion des clés :**
   - Evolution s'intègre avec des gestionnaires de clés comme GnuPG pour la gestion des clés PGP. Vous pouvez importer, exporter et gérer vos clés directement depuis l'application.

### K9-Mail

[**K-9 Mail**](https://k9mail.app/) est un client de messagerie open source pour Android qui offre une prise en charge de la cryptographie PGP via l'intégration avec OpenKeychain, une application de gestion de clés PGP pour Android.

#### Fonctionnalités PGP de K-9 Mail

1. **Chiffrement des emails :**
   - K-9 Mail, en combinaison avec OpenKeychain, permet de chiffrer les emails en utilisant la clé publique du destinataire. Les emails chiffrés garantissent que seuls les destinataires prévus peuvent lire le message.

2. **Déchiffrement des emails :**
   - Lors de la réception d'un email chiffré, K-9 Mail utilise OpenKeychain pour accéder à votre clé privée et déchiffrer le message, permettant ainsi la lecture du contenu.

3. **Signature numérique :**
   - Vous pouvez signer numériquement vos emails avec K-9 Mail et OpenKeychain. En utilisant votre clé privée, vous pouvez ajouter une signature numérique à vos messages, assurant ainsi leur authenticité et intégrité.

4. **Vérification des signatures :**
   - K-9 Mail, avec l'aide d'OpenKeychain, peut vérifier les signatures numériques des emails reçus en utilisant la clé publique de l'expéditeur. Cela confirme que le message est authentique et n'a pas été modifié.

5. **Gestion des clés :**
   - OpenKeychain gère les clés PGP pour K-9 Mail. Vous pouvez créer, importer, exporter et gérer vos clés PGP à partir de l'application OpenKeychain.

### Comparaison entre Evolution et K-9 Mail pour PGP

#### Plateforme

- **Evolution** : Destiné aux ordinateurs de bureau sous Linux/Unix avec une intégration directe de PGP via GnuPG.
- **K-9 Mail** : Conçu pour les appareils Android, nécessitant l'application OpenKeychain pour la gestion des clés PGP.

#### Intégration PGP

- **Evolution** : Intégration native de PGP, permettant un chiffrement, un déchiffrement, une signature et une vérification des emails directement dans l'application.
- **K-9 Mail** : Utilisation de OpenKeychain pour gérer les clés PGP et effectuer des opérations de chiffrement, de déchiffrement, de signature et de vérification.

#### Utilisation

- **Evolution** : Idéal pour une utilisation professionnelle ou personnelle sur des ordinateurs de bureau, avec des fonctionnalités complètes de gestion de messagerie et de PGP.
- **K-9 Mail** : Parfait pour une utilisation mobile, permettant aux utilisateurs de gérer leurs emails en toute sécurité en déplacement.

### Conclusion

**Evolution** et **K-9 Mail** offrent tous deux une prise en charge robuste de PGP pour sécuriser les communications par email. Evolution intègre PGP directement dans son application de bureau, tandis que K-9 Mail utilise OpenKeychain pour fournir des fonctionnalités similaires sur les appareils Android. Ces deux clients de messagerie permettent aux utilisateurs de chiffrer, déchiffrer, signer et vérifier les emails, assurant ainsi la confidentialité et l'authenticité des communications électroniques.
