---
Title:   "uetree : un format de répertoire pour cartographier des personnes sans rien centraliser"
Date:    2026-05-27T10:00:00+02:00
Tags:    [ "uetree", "specification", "identity", "decentralized", "ietf" ]
categories: [ "News", "Solution" ]
draft: true
author: [ "Mnème", "Jean-Jacques Brucker" ]
description: "Spécification d'une arborescence de fichiers — multi-racines, auto-décrite, navigable avec « find » et « grep » — pour tenir un registre d'entités qui passe à l'échelle d'une fondation internationale sans dépendre d'une base de données. Brique fondamentale du système djibian."
lang: fr
bg_image: "images/backgrounds/page-title.jpg"
image: "images/solutions/identity.png"
type: "post"
---

Comment tient-on un registre de **dix mille entités** — humains, associations, services numériques — sans base de données, sans serveur dédié, sans personne au centre ? La question peut sembler étrange en 2026 : « il y a des bases de données pour ça ». Sauf qu'une base de données, c'est une dépendance : à un logiciel, à un opérateur, à une politique de migration. Et une fondation internationale qui veut survivre à ses propres employés ne devrait pas dépendre de PostgreSQL ni d'aucun produit.

Nous publions la spécification formelle de **`uetree`** — *Universal Entities Tree* — un format d'arborescence de fichiers qui répond à ce besoin. Au format Internet-Draft IETF :

**[draft-foopgp-uetree-00.txt](/documents/en/draft-foopgp-uetree-00.txt)**

## L'idée

Un dépôt git, des dossiers, des fichiers texte. C'est tout. À chaque niveau du répertoire, un petit fichier `.FORMAT` dit *« je suis tel chemin dans telle instance uetree »* — l'arborescence est auto-décrite. Vous pouvez extraire un sous-arbre, le mettre sur une clé USB, le servir depuis un serveur web statique : il reste intelligible.

L'arborescence est **multi-racines**. La même entité peut être indexée sous plusieurs identifiants : son [identifiant cryptographique OpenPGP](/fr/blog/2026-04-28-openpgp-id-spec/) (`by-eid/u4/`), son adresse email (`by-email/`), son téléphone (`by-tel/`), son nom (`by-name/`). Quand une entité acquiert un identifiant cryptographique *certifié*, ses fiches non-canoniques deviennent des **alias** — chacune porte le même petit manifeste, qui nomme toutes les positions de l'entité et marque d'un drapeau l'unique fiche canonique — au lieu de duplications.

## Chaque fiche est une carte de contact

La fiche canonique d'une entité n'est pas un format maison : c'est un simple fichier **vCard 4.0** (`entity.vcf`) — celui-là même que tout téléphone, tout carnet d'adresses sait déjà lire. Glissez-le dans vos contacts : vous voyez un nom, un email, un téléphone ; et dans le champ standard `KEY`, le certificat OpenPGP de la personne, prêt à ouvrir un canal chiffré. Le registre n'a besoin d'aucun visualiseur propre — les outils sont déjà dans toutes les poches. Un arbre de cartes de contact, versionné par git, authentifié par signatures.

## Pourquoi maintenant

`uetree` est la brique structurelle qui rend possibles plusieurs chantiers foopgp en cours :

- Le **registre privé des protagonistes** — qui est qui, qui a quel rôle.
- Le **registre public des cotisations djis** — quel u4 a contribué, et combien — sans exposer les emails des cotisants non encore certifiés. Cf. [le workflow d'émission djis](/fr/blog/2026-05-27-djis-emission-workflow/), publié en parallèle.
- À terme, un **registre fédéré entre associations** — chaque organisme tient son uetree, et les passerelles entre uetrees se font par fichiers `.ALIASES` typés.

`uetree` est **bête** : pas de service, pas de daemon, pas de protocole réseau. C'est cette bêtise qui en fait sa portabilité — n'importe quel ordinateur sous POSIX peut lire un uetree avec `find` et `grep`. Vingt ans dans le futur, quand PostgreSQL aura été remplacé trois fois, les fichiers seront toujours là.

## Confidentialité

Le format distingue **branches publiques par nature** (les identifiants cryptographiques) et **branches privées par nature** (les noms, les téléphones). Une instance publique ne déploie que les premières ; les secondes n'existent pas dans le dépôt public. Pas de filtrage, pas de fuite par oubli.

## Et après

La spécification est un *Internet-Draft* — un document que l'IETF examine et que la communauté peut commenter. Nous l'avons co-rédigée sur la base d'une implémentation déjà en production chez foopgp : le format n'est pas théorique, il marche sur de vrais dépôts.

Une **révision 1.2** est en cours, qui intègre les leçons de l'usage réel. Elle affine la séparation des responsabilités : l'arbre reste délibérément bête, tandis que *qui a le droit d'écrire où* passe dans une spécification compagnon — une petite couche de contrôle d'accès git, côté serveur — pour que les deux s'adoptent, et se raisonnent, indépendamment. Les fiches se standardisent sur vCard 4.0 ; le certificat OpenPGP, récupéré via WKD ou un serveur de clés, reste la source de vérité.

[Rejoignez-nous.](/fr/about/join/) ✊🕊️💕
