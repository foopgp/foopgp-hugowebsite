---
#Lastmod: 2024-07-05T02:03:09+02:00 # MANAGED by --enableGitInfo
title: "Signature"
#date: 2019-07-06T15:27:17+06:00
draft: false
# page title background image
bg_image: "images/backgrounds/puzzle.jpg"
# meta description
description : "Solutions de signature."
# Research image
image: "images/solutions/signature.png"
tags: ["Signature", "pgpid"]
categories: ["solution"]
type: "post"
---

Les signatures numériques OpenPGP (Pretty Good Privacy) sont une méthode courante pour garantir l'authenticité des données.

---

### Avantages des Signatures OpenPGP

2. **Authenticité :**
   - Les signatures numériques vérifient l'identité de l'expéditeur.

3. **Intégrité :**
   - Les signatures garantissent que le message n'a pas été altéré pendant le transit.

---

### Utilisation des Signatures OpenPGP

1. **Installation et Configuration**
   - Les utilisateurs doivent installer un logiciel OpenPGP compatible (comme [K9-Mail](/fr/solutions/theme-email/./#k9-mail), FairEmail, [Evolution](/fr/solutions/theme-email/./#evolution), Thunderbird, ...).
   - Génération de clés privées et d'un certificat publique avec **pgpid-gen**.
   - Partage ou publication du certificat publique.
   - Importation des clés privées dans une clé de sécurité (Yubikey, NitroKey,
     ...) avec **pgpid-qrscan**.

2. **Envoi de données signées**
   - Ajout d'une signature numérique en utilisant la clé privée de l'expéditeur.

3. **Réception et Vérification**
   - Vérification de la signature avec la clé publique de l'expéditeur.

---

### Signature des Emails

- Lorsqu'un utilisateur envoie un email, il peut ajouter une signature numérique en utilisant sa clé privée.
- La signature numérique prouve que le message provient bien de l'expéditeur prétendu et n'a pas été modifié en transit.
- Le destinataire peut vérifier la signature en utilisant la clé publique de l'expéditeur. Si la signature est valide, cela confirme l'authenticité du message.

---

### Exemple de Signature avec LibreOffice

Les signatures avec les clés OpenPGP sur LibreOffice permettent d'assurer l'authenticité et l'intégrité des documents que vous créez ou recevez. En utilisant OpenPGP, vous pouvez signer numériquement un document pour prouver qu'il provient bien de vous et qu'il n'a pas été modifié depuis sa signature. Voici comment utiliser les signatures OpenPGP dans LibreOffice :

#### Signer un document LibreOffice

1. **Accéder aux signatures numériques :**
   - Allez dans **Fichier**, puis cliquez sur **Signatures numériques**.
     ![Signature numérique 1](/images/solutions/signaturelibreoffice1.jpg)

2. **Brancher votre clé de sécurité :**
   - Connectez votre YubiKey ou NitroKey à votre ordinateur, puis enregistrez vous.
     ![Signature numérique 2](/images/solutions/signaturelibreoffice2.jpg)

3. **Vérification de la signature :**
   - Une bannière de confirmation devrait apparaître en haut de votre page pour indiquer que la signature a été ajoutée avec succès.
     ![Signature numérique 3](/images/solutions/signaturelibreoffice3.jpg)

#### Vérifier une signature

- **Validation automatique :**
  - Lors de l'ouverture d'un document signé, LibreOffice vérifiera automatiquement les signatures et vous informera de leur validité.

- **Accéder aux détails des signatures :**
  - Vous pouvez également aller dans **Fichier** > **Signatures numériques** pour voir les détails des signatures.

Utiliser OpenPGP pour signer vos documents dans LibreOffice est une excellente manière d'ajouter une couche de sécurité et de confiance à vos communications numériques.

---

### Signature avec git

[Git](https://git-scm.com/) est un logiciel de gestion de versions décentralisé. Depuis le début des années 2010, il s’agit du logiciel le plus populaire dans le développement logiciel et web. Il permet de travailler très efficacement à plusieurs sur du code ou autres textes communs. Il est utilisé par des dizaines de millions de personnes.

Git utilise OpenPGP pour signer et vérifier qu'un changement provient
d'une personne reconnue. Ce qui permet de s'assurer que le code n'a pas été
modifié par des personnes tierces, potentiellement incompétentes ou
malveillantes.

Aujourd'hui les signatures de code ne sont pas encore systématiques. Pourtant
elles permettraient de lutter efficacement contre certaines cyberattaques, comme
par exemple celle de [SolarWinds en
2020](https://www.lemagit.fr/definition/Le-hack-de-SolarWinds-explique-Tout-ce-quil-faut-savoir).


Aussi, tous les utilisateurs de git devraient adopter le processus recommandé
par l'association :

* Génération de certificats publiques et clés privées avec **pgpid-gen**.
* Importation des clés privées dans des clés de sécurité (YubiKey, NitroKey, ...)
  avec **pgpid-qrscan**.
* Configuration de git pour signer tous les changements dans les dépôts communs :

```bash
$ git config --global commit.gpgsign true
```
---

### Conclusion

Les signatures OpenPGP sont une puissante solution pour garantir l'authenticité et l'intégrité des communications et autres données numériques. En utilisant des paires de certificats publiques et clés privées, les utilisateurs peuvent protéger leurs informations sensibles contre les interceptions non autorisées et s'assurer que les messages proviennent de sources fiables. La mise en œuvre de OpenPGP peut nécessiter une configuration initiale, mais elle offre une sécurité extrêmement robuste pour les communications numériques.

