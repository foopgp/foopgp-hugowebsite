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

* [**OpenPGP**](./#openpgp)
* [**Pgpid**](./#pgpid)
* [**Clé de sécurité**](./#clé-de-sécurité)
  * [YubiKey](./#YubiKey)
  * [Nitrokey](./#nitrokey)
* [**Couriel**](./#couriel)
  * [Evolution](./#evolution)
  * [K9mail](./#k9mail)
* [**GitHub**](./#github)
* [**Hugo**](./#hugo)
* [**Codeberg**](./#codeberg)
* [**Dolibarr**](./#dolibarr)
* [**Résumé**](./#resume)
* [**Avis personnel**](./#avis_personnel)

---

### OpenPGP
![logoopenpgp](/images/blog/2024/logopgp.png)

[OpenPGP](https://www.openpgp.org/) est un format de cryptographie qui sert, par exemple, au chiffrement, à l'authentification et a la signature du courrier électronique.

#### Clé publique

- **Fonction** :
  - La clé publique est utilisée pour chiffrer les messages destinés à un destinataire particulier.
  - Elle peut également être utilisée pour vérifier la signature numérique apposée par le détenteur de la clé privée correspondante.

- **Distribution** :
  - La clé publique est partagée librement avec quiconque souhaite envoyer un message chiffré au détenteur de la clé privée.
  - Elle peut être publiée sur des serveurs de clés publics ou envoyée directement aux correspondants.

- **Sécurité** :
  - La clé publique ne permet pas de déchiffrer les messages. Seule la clé privée correspondante peut effectuer cette tâche.
  - Permet de créer des signatures numériques quasiment infalsifiables et d'éviter l'utilisation de mots de passe pour l'authentification.

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

Pour en savoir plus sur [Openpgp](/fr/about/openpgp/) 

---

### Pgpid
![logopgpid](/images/logos/foopgp_square.png)

[PgpId](https://codeberg.org/foopgp/pgpid) est une suite logiciel qui permet de créer, sauvegarder sur un support physique et récupérer des identités numériques uniques basées sur le standard OpenPGP (Pretty Good Privacy), lesquelles peuvent être utilisées pour :

* [Signer](/fr/solutions/signature) vos données numériques.
* [Chiffrer et déchiffrer](/fr/solutions/encryption)  vos données et communications numériques.
* Vous [authentifier](/fr/solutions/theme-authentication) auprès de services numériques.
* Et bientôt [voter](/fr/solutions/theme-vote) et [payer](/fr/solutions/theme-currency) (fonctionnalités en cours de développement par
  certaines communautés des logiciels libres, dont l'association foopgp).

**En résumé, [pgpid](https://codeberg.org/foopgp/pgpid) aide à gérer et utiliser les clés PGP pour des utilisations numériques sécurisées.**

Dans l'association, [Jean-Jacques](/fr/author/jean-jacques-brucker/) a mis en place ce système innovant. Il fonctionne de la manière suivante : lorsque vous créez votre [identité numérique](/fr/solutions/theme-identity),
celle-ci est [repartie](https://fr.wikipedia.org/wiki/Secret_r%C3%A9parti) en trois QR codes distincts. Ces QR codes sont ensuite imprimés pour une utilisation pratique.

Pour accéder à votre identité numérique, il suffit de scanner ces trois QR codes. Une fois scannés, les principales clés privées associées à votre certificat [OpenPGP](/fr/about/openpgp/) sont reconstruites. Elle peuvent alors être poussées dans des clés de sécurité comme la [YubiKey](./#YubiKey) ou la [Nitrokey](./#nitrokey).

Ces clés de sécurité permettent d'utiliser les clés privés de votre [identité numérique](/fr/solutions/theme-identity), sans permettre aucun accès direct à ces dernières. À chaque utilisation, un code PIN peut-être demandé. Au bout de 3 erreurs successives de code PIN, la clé se bloque. Elle peut être débloquée avec un autre code (PUK), sinon elle efface ses données. Il faudra alors la réinitialiser pour recommencer le scan des QR codes.

Voici un exemple des QR codes utilisés :

| ![qrcode1](/images/blog/2024/qrcode/qrcode1.jpg) | ![qrcode2](/images/blog/2024/qrcode/qrcode2.jpg) | ![qrcode3](/images/blog/2024/qrcode/qrcode3.jpg) |
|---|---|---|

---

### YubiKey
![visuelyubikey](/images/blog/2024/yubikey_image.jpeg)

La [YubiKey](https://www.yubico.com/la-cle-yubikey/?lang=fr) est un dispositif de sécurité matériel utilisé pour protéger l'accès aux comptes en ligne. Nous avons appris à l'utiliser pour améliorer la sécurité de nos [authentifications](/fr/solutions/theme-authentication). Cet outil nous a montré l'importance de la sécurité matérielle dans la protection des données sensibles.

![code_clepgp_mael](/images/blog/2024/mdp_yubikey_mael.jpg)

---

### Nitrokey
![visuelnitrokey](/images/blog/2024/nitrokey_image.jpeg)

Les [NitroKeys](https://www.nitrokey.com/) offrent une solution complète et sécurisée pour protéger les [identité numérique](/fr/solutions/theme-identity) et les données sensibles. Leur utilisation permet de renforcer significativement la sécurité des systèmes et des informations, tout en restant pratiques et accessibles pour les utilisateurs. Elles sont presque identiques à la [YubiKey](./#YubiKey).


---

### Evolution
![logoevolution](/images/blog/2024/logoevolution.jpeg)

Beaucoup de ces applications et outils nous étaient inconnus, tels que [Evolution](https://help.gnome.org/users/evolution/stable/index.html.fr). Ce stage nous a permis d'acquérir de nouvelles compétences et d'enrichir nos connaissances, notamment sur les clés PGP, que nous avons trouvées particulièrement intéressantes.

Ci-dessous, une image d'Evolution avec la signature PGP et le chiffrement PGP entourés en rouge :
![Evolution](/images/blog/2024/Evolution_message.jpg)

On les sélectionne en ouvrant les options et en cochant 'Signer avec PGP' et 'Chiffrer avec PGP'.
![Evolution](/images/blog/2024/Evolution_message1.jpg)

---

### K9 Mail
![logok9mail](/images/blog/2024/logok9mail.jpeg)

[K-9 Mail](https://k9mail.app/) est un client de messagerie open source pour Android, reconnu pour ses fonctionnalités avancées et sa confidentialité des utilisateurs. Créé par Jesse Vincent, l'application a été intégrée à la famille Thunderbird en 2022. Cette collaboration vise à améliorer [K9mail](/fr/solutions/theme-email) avec des fonctionnalités comme une meilleure configuration des comptes, la gestion des dossiers et la synchronisation avec Thunderbird sur bureau. [K9mail](/fr/solutions/theme-email) sera progressivement renommé Thunderbird sur Android​ (K-9 Mail)​​ (The Thunderbird Blog)​​ (K-9 Mail)​.

Pour plus de détails, visitez le site officiel de [K-9 Mail](https://k9mail.app/about.html) et le [blog de Thunderbird](https://blog.thunderbird.net/fr/).

Dans l'application, on va utiliser dans cet exemple une YubiKey. Tout d'abord, il faut cliquer sur "Utiliser un jeton de sécurité". Puis, quand la clé est scannée, elle sera vérifiée.

| ![k9mail](/images/blog/2024/K-9_Mail_1.jpg) | ![k9mail](/images/blog/2024/K-9_Mail_2.jpg) |
|---|---|

Pour envoyer un mail [chiffré](/fr/solutions/encryption) il suffit de cliquer sur le cadenas en haut à droite.

![k9mail](/images/blog/2024/K-9_Mail_cadena.jpg)

Et pour lire les mails [chiffrés](/fr/solutions/encryption) via [OpenKeychain](https://www.openkeychain.org) un message apparaîtra :

![k9mail](/images/blog/2024/K-9_Mail_3.jpg)

---

### GitHub
![logogithub](/images/blog/2024/github.png)

Sur [GitHub](https://github.com/), nous avons hébergé notre portfolio ([portfiolo de Mael](https://maelbts.github.io/PortfolioSIO/) , [portfolio de Evyn](https://hankloche.github.io/PORTFOLIO/)) et ajouté nos clés PGP et SSH. Cela nous a permis de comprendre l'importance de la gestion de versions et de la sécurité des clés. GitHub nous a également aidés à collaborer efficacement sur divers projets.

---

### Codeberg
![logocodeberg](/images/blog/2024/logocodeberg.png)

Nous avons utilisé [Codeberg](https://codeberg.org/) de manière préliminaire, car l'association est en train de migrer vers ce système de gestion de code source. Nous y avons également ajouté nos clés PGP et SSH. Codeberg, étant une alternative open source à GitHub, nous a donné un aperçu des différentes plateformes de gestion de code source.

Voici un exemple de notre configuration :
![Clé PGP et SSH Codeberg Maël](/images/blog/2024/cle_pgp_ssh_codeberg_mael.jpg)

---

### Hugo
![logohugo](/images/blog/2024/logohugo.png)

Le site web de l'association est développé avec [Hugo](https://gohugo.io/), un générateur de sites statiques en Go. Nous avons appris ce langage pour modifier, ajouter ou supprimer divers éléments sur le site. Hugo nous a permis de créer des pages web dynamiques et rapides, tout en nous initiant aux bases de la programmation en Go.

---

### Shell
![logoshell](/images/blog/2024/logoshell.png)

L'association utilise principalement GNU/Linux, ce qui nous a amenés à utiliser fréquemment le shell. Nous avons [renforcé nos compétences](https://github.com/phyver/GameShell) en scripting, acquises lors de nos cours de BTS. Le shell s'est avéré être un outil puissant pour automatiser les tâches répétitives et gérer efficacement les systèmes Linux.

[En savoir plus sur le shell](https://fr.wikipedia.org/wiki/Shell_Unix).

---

### Dolibarr
![logodolibarr](/images/blog/2024/logodolibarr.png)

[Dolibarr](https://www.dolibarr.org) est un logiciel de gestion open source idéal pour les associations comme pour les PME. Il permet de gérer les adhésions, les membres, les dons, les événements et la comptabilité de manière simple et efficace. Travailler avec Dolibarr nous a donné une perspective précieuse sur la gestion d'entreprise et l'importance des outils de gestion intégrés.

---

### Résumé
Ce début de stage a été une expérience extrêmement enrichissante pour nous. Nous avons non seulement appris à utiliser de nouveaux outils et technologies, mais nous avons également acquis une meilleure compréhension des pratiques de sécurité et de gestion de projets dans un environnement professionnel.

---

### Avis personnel

[Maël](/fr/author/mael-lemoine/) : Les clés PGP, qui m'étaient inconnues auparavant, m'ont beaucoup plu car elles renforcent la sécurité tout en la simplifiant. Le langage Go m'a aussi passionné par sa puissance et sa simplicité. Ce stage m'a offert une précieuse expérience pratique et m'a motivé à explorer davantage ces technologies.

[Evyn](/fr/author/evyn-faure/) : Pendant ce stage, j'ai été impliqué dans diverses missions, comme la modification du site web en utilisant des langages de programmation que je ne connaissais pas auparavant, et aussi la familiarisation avec les clés PGP et tout ce qui y est lié, comme les mails chiffrés, le tout en utilisant Debian, un système d'exploitation que j'avais très peu utilisé. Ce stage m'a permis de développer des compétences essentielles et de mieux comprendre les enjeux de la sécurité informatique.

---
