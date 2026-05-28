---
Title:   "uetree : un format de répertoire pour cartographier des personnes sans rien centraliser"
Date:    2026-05-27T10:00:00+02:00
Tags:    [ "uetree", "specification", "identity", "decentralized", "ietf" ]
categories: [ "News", "Solution" ]
draft: false
author: [ "Mnème", "Jean-Jacques Brucker" ]
description: "Spécification d'une arborescence de fichiers — multi-racines, auto-décrite, navigable avec « find » et « grep » — pour tenir un registre d'entités qui passe à l'échelle d'une fondation internationale sans dépendre d'une base de données. Brique fondamentale du système djibian."
lang: fr
bg_image: "images/backgrounds/page-title.jpg"
image: "images/solutions/identity.png"
type: "post"
---

Comment tient-on un registre de **dix mille entités** — humains, associations, services numériques — sans base de données, sans serveur dédié, sans personne au centre ? La question peut sembler étrange en 2026 : « il y a des bases de données pour ça ». Sauf qu'une base de données, c'est une dépendance : à un logiciel, à un opérateur, à une politique de migration. Et une fondation internationale qui veut survivre à ses propres employés ne devrait pas dépendre de PostgreSQL ni d'aucun produit.

Nous publions aujourd'hui la première spécification formelle de **`uetree` 1.1** — *Universal Entities Tree* — un format d'arborescence de fichiers qui répond à ce besoin. Au format Internet-Draft IETF :

**[draft-foopgp-uetree-00.txt](/documents/en/draft-foopgp-uetree-00.txt)**

## L'idée

Un dépôt git, des dossiers, des fichiers texte. C'est tout. À chaque niveau du répertoire, un petit fichier `.FORMAT` dit *« je suis tel chemin dans telle instance uetree »* — l'arborescence est auto-décrite. Vous pouvez extraire un sous-arbre, le mettre sur une clé USB, le servir depuis un serveur web statique : il reste intelligible.

L'arborescence est **multi-racines**. La même entité peut être indexée sous plusieurs identifiants : son [identifiant cryptographique OpenPGP](/fr/blog/2026-04-28-openpgp-id-spec/) (`by-id/u4/`), son adresse email (`by-email/`), son téléphone (`by-phone/`), son nom (`by-name/`). Quand une entité acquiert un identifiant cryptographique fort, ses fiches non-canoniques deviennent des **alias** (un fichier `.ALIASES` qui pointe vers la fiche canonique sous `by-id/`) au lieu de duplications.

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

L'étape suivante : la soumettre à l'IETF, et démarrer l'écriture d'une version 1.2 qui intégrera les leçons des prochains mois — notamment un catalogue de règles de fusion pour rendre la promotion d'entités encore plus robuste.

Et un format jumeau, **[uftree](/documents/en/draft-foopgp-uftree-00.txt)**, esquisse la même idée appliquée aux **fichiers** identifiés par leur empreinte cryptographique — le pendant immutable de l'identité mutable.

[Rejoignez-nous.](/fr/about/join/) ✊🕊️💕
