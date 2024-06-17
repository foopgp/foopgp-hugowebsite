---
title: "Résumé de stage"
date: 2024-06-06T10:30:00+02:00
draft: false
bg_image: "/images/blog/2024/bg_stage.jpg"
description: "Résumé de stage d'Evyn Faure et Maël Lemoine"
lang: fr
image: "/images/blog/2024/rds.avif"
author: ["Evyn Faure", "Maël Lemoine"]
categories: ["guide"]
tags: ["Stage", "SLAM"]
type: "post"
---

## Notre expérience de stage dans l'association Foopgp

---

Nous sommes deux étudiants en première année de BTS SIO (Services Informatiques aux Organisations) à Gap. Dans le cadre de notre formation, un stage est obligatoire pour passer en deuxième année. Nous avons eu la chance de réaliser ce stage au sein de l'association Foopgp, du 27 mai 2024 au 5 juillet 2024. Voici un retour détaillé et enrichissant sur notre expérience formatrice :

---

### Compétences et technologies manipulées

Pendant notre stage, nous avons travaillé avec diverses technologies et outils, ce qui a grandement enrichi notre apprentissage et notre expérience pratique :

* [GitHub](./#github)
* [Hugo](./#hugo)
* [Shell](./#shell)
* [Codeberg](./#codeberg)
* [Dolibarr](./#dolibarr)
* [OpenPGP](./#openpgp)
* [Pgpid](./#pgpid)
* [Evolution](./#evolution)
* [YubiKey](./#yubikey)
* [Nitrokey](./#nitrokey)
* [Résumé](./#resume)
* [Avis personnel](./#avis_personnel)

---

### GitHub
![logogithub](/images/blog/2024/github.png)

Sur [GitHub](https://github.com/), nous avons hébergé notre portfolio et ajouté nos clés PGP et SSH. Cela nous a permis de comprendre l'importance de la gestion de versions et de la sécurité des clés. GitHub nous a également aidés à collaborer efficacement sur divers projets.

Voici un exemple de notre configuration :
![Clé PGP et SSH Maël](/images/blog/2024/cle_pgp_ssh_mael.png)

---

### Hugo
![logohugo](/images/blog/2024/logohugo.png)

Le site web de l'association est développé avec [Hugo](https://gohugo.io/), un générateur de sites statiques en Go. Nous avons appris ce langage pour modifier, ajouter ou supprimer divers éléments sur le site. Hugo nous a permis de créer des pages web dynamiques et rapides, tout en nous initiant aux bases de la programmation en Go.

---

### Shell
![logoshell](/images/blog/2024/logoshell.png)

L'association utilise principalement Linux, ce qui nous a amenés à utiliser fréquemment le shell. Nous avons renforcé nos compétences en scripting, acquises lors de nos cours de BTS. Le shell s'est avéré être un outil puissant pour automatiser les tâches répétitives et gérer efficacement les systèmes Linux.  
[En savoir plus sur le shell](https://fr.wikipedia.org/wiki/Shellcode)

---

### Codeberg
![logocodeberg](/images/blog/2024/logocodeberg.png)

Nous avons utilisé [Codeberg](https://codeberg.org/) de manière préliminaire, car l'association est en train de migrer vers ce système de gestion de code source. Nous y avons également ajouté nos clés PGP et SSH. Codeberg, étant une alternative open source à GitHub, nous a donné un aperçu des différentes plateformes de gestion de code source.

Voici un exemple de notre configuration :
![Clé PGP et SSH Codeberg Maël](/images/blog/2024/cle_pgp_ssh_codeberg_mael.jpg)

---

### Dolibarr
![logodolibarr](/images/blog/2024/logodolibarr.png)

[Dolibarr](https://www.dolibarr.org) est un logiciel de gestion open source idéal pour les associations. Il permet de gérer les adhésions, les membres, les dons, les événements et la comptabilité de manière simple et efficace. Travailler avec Dolibarr nous a donné une perspective précieuse sur la gestion d'association et l'importance des outils de gestion intégrés.

---

### OpenPGP
![logoopenpgp](/images/blog/2024/logopgp.png)

[OpenPGP](https://www.openpgp.org/) est un format de cryptographie qui sert, par exemple, au chiffrement et à l'authentification du courrier électronique.

#### Clé publique

- **Fonction** :
  - La clé publique est utilisée pour chiffrer les messages destinés à un destinataire particulier.
  - Elle peut également être utilisée pour vérifier la signature numérique apposée par le détenteur de la clé privée correspondante.

- **Distribution** :
  - La clé publique est partagée librement avec quiconque souhaite envoyer un message chiffré au détenteur de la clé privée.
  - Elle peut être publiée sur des serveurs de clés publics ou envoyée directement aux correspondants.

- **Sécurité** :
  - La clé publique ne permet pas de déchiffrer les messages. Seule la clé privée correspondante peut effectuer cette tâche.
  - Même si un tiers accède à la clé publique, il ne peut pas lire les messages chiffrés à l'aide de cette clé.

#### Clé privée

- **Fonction** :
  - La clé privée est utilisée pour déchiffrer les messages chiffrés avec la clé publique correspondante.
  - Elle est également utilisée pour signer numériquement les messages, prouvant ainsi l'identité de l'expéditeur et l'intégrité du message.

- **Confidentialité** :
  - La clé privée doit être strictement protégée et ne doit pas être partagée.
  - Elle est souvent protégée par un mot de passe pour ajouter une couche supplémentaire de sécurité.

- **Sécurité** :
  - Si la clé privée est compromise, un attaquant pourrait déchiffrer les messages destinés au détenteur de la clé privée et signer des messages en se faisant passer pour lui.
  - Il est crucial de stocker la clé privée dans un endroit sécurisé et de la sauvegarder de manière appropriée.

---

### Pgpid
![logopgpid](/images/logos/foopgp_square.png)

Le PGP ID est un identifiant unique associé à une clé PGP (Pretty Good Privacy), utilisée pour le chiffrement et la déchiffrement des communications.

Fonctionnement du PGP ID

  - Création : Généré automatiquement lors de la création d'une paire de clés PGP.
  - Recherche : Utilisé pour trouver et partager des clés publiques.
  - Serveurs de clés : Enregistré sur des serveurs publics pour faciliter l'échange sécurisé de messages.

En résumé, le PGP ID aide à gérer et utiliser les clés PGP pour des communications sécurisées.

Dans l'association, Jean-Jacques a mis en place un système innovant basé sur des QR codes. Ce système fonctionne de la manière suivante : lorsque vous créez votre identité numérique, celle-ci est convertie en trois QR codes distincts. Ces QR codes sont ensuite imprimés pour une utilisation pratique.

Pour accéder à votre identité numérique, il suffit de scanner ces trois QR codes dans l'ordre correct. Une fois scannés dans la séquence appropriée, ils vous donnent un accès sécurisé à votre identité numérique.

Voici un exemple des QR codes utilisés :

| ![qrcode1](/images/blog/2024/qrcode/qrcode1.jpg) | ![qrcode2](/images/blog/2024/qrcode/qrcode2.jpg) | ![qrcode3](/images/blog/2024/qrcode/qrcode3.jpg) |
|---|---|---|

---

### Evolution
![logoevolution](/images/blog/2024/logoevolution.jpeg)

Beaucoup de ces applications et outils nous étaient inconnus, tels que [Evolution](https://help.gnome.org/users/evolution/stable/index.html.fr). Ce stage nous a permis d'acquérir de nouvelles compétences et d'enrichir nos connaissances, notamment sur les clés PGP, que nous avons trouvées particulièrement intéressantes.

Ci-dessous, une image d'Evolution avec la signature PGP et le chiffrement PGP entourés en rouge :
![Evolution](/images/blog/2024/Evolution_message.jpg)

On les sélectionne en ouvrant les options et en cochant 'Signer avec PGP' et 'Chiffrer avec PGP'.
![Evolution](/images/blog/2024/Evolution_message1.jpg)

---

### YubiKey
![visuelyubikey](/images/blog/2024/yubikey_image.jpeg)

La [YubiKey](https://www.yubico.com/la-cle-yubikey/?lang=fr) est un dispositif de sécurité matériel utilisé pour protéger l'accès aux comptes en ligne. Nous avons appris à l'utiliser pour améliorer la sécurité de nos authentifications. Cet outil nous a montré l'importance de la sécurité matérielle dans la protection des données sensibles.

![code_clepgp_mael](/images/blog/2024/mdp_yubikey_mael.jpg)

Ceci est un message de l'application K-9 Mail qui demande ici le jeton (Yubikey) pour ouvrir le mail chiffré.
![k-9 mail](/images/blog/2024/K-9_mail.jpg)

---

### Nitrokey
![visuelnitrokey](/images/blog/2024/nitrokey_image.jpeg)

Les [NitroKeys](https://www.nitrokey.com/) offrent une solution complète et sécurisée pour protéger les identités numériques et les données sensibles. Leur utilisation permet de renforcer significativement la sécurité des systèmes et des informations, tout en restant pratiques et accessibles pour les utilisateurs. Elles sont presque identiques à la YubiKey.

---

### Résumé
Ce début de stage a été une expérience extrêmement enrichissante pour nous. Nous avons non seulement appris à utiliser de nouveaux outils et technologies, mais nous avons également acquis une meilleure compréhension des pratiques de sécurité et de gestion de projets dans un environnement professionnel.

---

### Avis personnel

[Maël](/fr/author/mael-lemoine/) : Les clés PGP, qui m'étaient inconnues auparavant, m'ont beaucoup plu car elles renforcent la sécurité tout en la simplifiant. Le langage Go m'a aussi passionné par sa puissance et sa simplicité. Ce stage m'a offert une précieuse expérience pratique et m'a motivé à explorer davantage ces technologies.

[Evyn](/fr/author/evyn-faure/) : Pendant ce stage, j'ai été impliqué dans diverses missions, comme la modification du site web en utilisant des langages de programmation que je ne connaissais pas auparavant, et aussi la familiarisation avec les clés PGP et tout ce qui y est lié, comme les mails chiffrés, le tout en utilisant Debian, un système d'exploitation que j'avais très peu utilisé. Ce stage m'a permis de développer des compétences essentielles et de mieux comprendre les enjeux de la sécurité informatique.

---