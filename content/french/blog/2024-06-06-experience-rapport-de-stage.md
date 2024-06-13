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
* [CodeBerg](./#codeBerg)
* [Dolibarr](./#dolibarr)
* [OpenPGP](./#openPGP)
* [Evolution](./#evolution)
* [Yubikey](./#yubikey)
* [Resume](./#resume)
* [Avis personnel](./#avis_personnel)

---

### GitHub
Sur GitHub, nous avons hébergé notre portfolio et ajouté nos clés PGP et SSH. Cela nous a permis de comprendre l'importance de la gestion de versions et de la sécurité des clés. GitHub nous a également aidés à collaborer efficacement sur divers projets.

Voici un exemple de notre configuration :
![Clé PGP et SSH Maël](/images/blog/2024/cle_pgp_hss_mael.png)

---

### Hugo
Le site web de l'association est développé avec Hugo, un générateur de sites statiques en Go. Nous avons appris ce langage pour modifier, ajouter ou supprimer divers éléments sur le site. Hugo nous a permis de créer des pages web dynamiques et rapides, tout en nous initiant aux bases de la programmation en Go.

---

### Shell
L'association utilise principalement Linux, ce qui nous a amenés à utiliser fréquemment le shell. Nous avons renforcé nos compétences en scripting, acquises lors de nos cours de BTS. Le shell s'est avéré être un outil puissant pour automatiser les tâches répétitives et gérer efficacement les systèmes Linux.

---

### Codeberg
Nous avons utilisé Codeberg de manière préliminaire, car l'association est en train de migrer vers ce système de gestion de code source. Nous y avons également ajouté nos clés PGP et SSH. Codeberg, étant une alternative open source à GitHub, nous a donné un aperçu des différentes plateformes de gestion de code source.
[Codeberg](https://codeberg.org/)

Voici un exemple de notre configuration :

![Clé PGP et SSH doce berg Maël](/images/blog/2024/cle_pgp_ssh_codeberg_mael.jpg)

---

### Dolibarr
Dolibarr est un logiciel de gestion open source idéal pour les associations. Il permet de gérer les adhésions, les membres, les dons, les événements et la comptabilité de manière simple et efficace. Travailler avec Dolibarr nous a donné une perspective précieuse sur la gestion d'association et l'importance des outils de gestion intégrés.

---

### OpenPGP
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

### Evolution
Beaucoup de ces applications et outils nous étaient inconnus. Ce stage nous a permis d'acquérir de nouvelles compétences et d'enrichir nos connaissances, notamment sur les clés PGP, que nous avons trouvées particulièrement intéressantes.

---

### YubiKey
La YubiKey est un dispositif de sécurité matériel utilisé pour protéger l'accès aux comptes en ligne. Nous avons appris à l'utiliser pour améliorer la sécurité de nos authentifications. Cet outil nous a montré l'importance de la sécurité matérielle dans la protection des données sensibles.

---

### Resume
Ce debut de stage a été une expérience extrêmement enrichissante pour nous. Nous avons non seulement appris à utiliser de nouveaux outils et technologies, mais nous avons également acquis une meilleure compréhension des pratiques de sécurité et de gestion de projets dans un environnement professionnel.

---

### Avis_personnel

**Maël** : Les clés PGP, qui m'étaient inconnues auparavant, m'ont beaucoup plu car elles renforcent la sécurité tout en la simplifiant. Le langage Go m'a aussi passionné par sa puissance et sa simplicité. Ce stage m'a offert une précieuse expérience pratique et m'a motivé à explorer davantage ces technologies.

**Evyn** : Pendant ce stage, j'ai été impliqué dans diverses missions, comme la modification du site web en utilisant des langages de programmation que je ne connaissais pas auparavant, et aussi la familiarisation avec les clés PGP et tout ce qui y est lié, comme les mails chiffrés, le tout en utilisant Debian, un système d'exploitation que j'avais très peu utilisé. Ce stage m'a permis de développer des compétences essentielles et de mieux comprendre les enjeux de la sécurité informatique.

---