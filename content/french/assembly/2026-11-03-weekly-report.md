---
title: "2026 S45 Rapport Hebdomadaire"
lang: fr
date: 2026-11-03T21:00:00+01:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *Laurent C., Aveline G., Éric L., Jean-Jacques B., Frédéric Z.*

### Ordre du jour prochaine visio mardi 10 novembre 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp).*

- Points habituels : (revue de presse + déplacements + revue des travaux réalisés, en cours, ou à prévoir **pour l’association**).
- Revue du [flyer foodjis + foomms](https://foopgp.org/largefiles/flyers/2026/flyer_foomms-foodjis_fr_2026-11-04.pdf) (sans doute déjà parti en petite série)
- Dernière préparation du **Forum de l’innovation à Tallard** du jeudi 12 novembre.

### Ordres du soir (mardi 3 novembre)

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).
- Préparation du **Forum de l’innovation à Tallard** du jeudi 12 novembre.
- Éric L. nous rejoint, pour le développement commercial.

### Stingynalty

Pour novembre : ***stingynalty = 1.15562197303019481437***

**Simulateur de cotisation initiale** (2 dimensions) → <https://foopgp.org/djis-simulator/?lang=fr>

**Graphique en 3 dimensions** → <https://www.math3d.org/xzuclzIbuZ>

*Rappel :* si vous avez déjà cotisé, il faut appliquer la formule :

> **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/).

#### Chiffres de l’association

*Chiffres inchangés depuis le compte rendu précédent : le journal des cotisations s’arrête toujours au 7 août 2026.*

*Depuis la création de l’association le 3 avril 2023 : **106 cotisations, 66 588,68 €, 58 cotisants**.*

*Parmi eux, **22 cotisants sont certifiés** dans la Toile de Confiance : **71 % des euros** y sont adossés, mais seulement **38 % des cotisants** — l’écart tient aux plus grosses contributions, qui viennent de personnes déjà certifiées. Ces 22 identités totalisent 52 cotisations, 47 253,05 € et **162,721425 Ɉ créés**.*

***Seuls les adhérents dont l’identité PGP ID est certifiée par la Toile de Confiance voient leurs djis effectivement créés et utilisables.***

*Aux adhérents pas encore certifiés : venez nous rencontrer lors d’un de nos prochains ateliers pour finaliser la certification de votre identité, débloquer la création de vos djis et pouvoir les échanger au sein de l’association.*

### Revue de presse

- Pas de revue de presse cette semaine

### Au cœur de la réunion

- Présentations Éric L.
- Discussion stratégie Marketing et communication → Brouillon de flyers : [ici](https://foopgp.org/largefiles/flyers/2026/flyer_foomms-foodjis_fr_2026-11-04.pdf)
- Préparation du [Forum de l’innovation à Tallard](https://www.digitalpesdusud.fr/evenements/forum-innovation-2026/) du jeudi 12 novembre.
- Installation et découverte des dernières versions de foomms et foodjis.

### Production de la semaine (27 octobre — 3 novembre)

- **foomms sort en version 1.3.3** : téléchargeable sur
  <https://foomms.foopgp.org/>, et en cours de validation par le magasin
  Google. Depuis la 1.2.5 :
  - les **groupes MMS**, jusqu’à **20 membres** par défaut : chaque message
    porte le visage de son auteur, et l’on peut **nommer un groupe** — ce nom
    reste sur votre téléphone ;
  - l’**envoi multiple** : chacun reçoit son message, chiffré pour lui seul ;
  - trois pages : **Conversations** (échanges à deux et groupes ensemble),
    **Non-lus**, et **Mon profil** (messages reçus et émis, brouillons,
    sauvegarde, et votre fiche « Moi ») ;
  - les **brouillons** se retrouvent dans la liste et se reprennent d’un appui ;
  - un texte court part en SMS, plus sûr d’arriver qu’un MMS ; un message
    refusé par l’opérateur le dit sous sa bulle ;
  - après une mise à jour de foodjis, foomms se reconnecte tout seul.
- **foodjis sort en version 1.6.0**, sur le magasin Google et sur
  <https://foodjis.foopgp.org/>. Depuis la 1.4.5 :
  - les **gros trousseaux** (plus de mille certificats) restent légers et
    rapides ; chaque certificat importé est nettoyé, et les clés trop faibles
    sont refusées ;
  - la **toile de confiance** est plus juste : une identité recopiée n’est
    plus prise pour une identité certifiée ;
  - le code PIN est gardé une heure par défaut ; un thème sombre enfin
    lisible ; l’empreinte d’un certificat mène à son QR code.
- **foomms.foopgp.org** — une nouvelle rubrique : **ce que foomms fait mieux
  que les messageries servies par des entreprises** (chiffrement de bout en
  bout, pas de serveur central, pas besoin d’Internet, **sobriété
  numérique**), et une présentation de l’écriture à un groupe.
- **foopgp.org et foodjis.foopgp.org** — l’adhésion se fait désormais sur la
  page HelloAsso elle-même, sur la campagne du mois en cours.
- **En cours dans foomms** (prochaine version) :
  - les photos reçues s’ouvrent **en plein écran**, à agrandir et à tourner ;
  - la longueur d’un texte envoyé en SMS et la taille des MMS se règlent,
    avec ce qu’indique l’opérateur.

### TODO — Tâches à faire

Liste non-exhaustive des tâches à réaliser ou chantiers en cours :

- **Comptabilité €** ([dépôt](https://codeberg.org/foopgp/foopgp-cashflow) git non-public) — automatiser la chaîne HelloAsso : se rapprocher du temps réel plutôt que d’une reprise manuelle, et remercier automatiquement. L’essentiel est écrit et testé depuis juin ; ce qui manque est une mise en service.
- **Comptabilité Ɉ** — publier les deux certifications en attente, puis faire passer le registre au format courant : l’outil de promotion ne lit plus la version dans laquelle il est écrit. Finaliser par ailleurs [les innovations et concepts sous-jacents](https://foopgp.org/documents/en/), comme celui d’**arbres universels d’entités** ([spécifications](https://foopgp.org/documents/en/draft-foopgp-uetree-00.txt) et [code](https://codeberg.org/foopgp/bash-libs/src/branch/main/bin/bl-uetree)). Et démarrer le frontend (dépôt et paquet à créer).
- **Bibliothèque d’identité pgpid** — les neuf catalogues de traduction sont désormais complets ; restent quelques points de forme dans le paquet avant de la présenter à une communauté extérieure (Debian, LibrePGP).
- **Serveur de certificats** ([onak-foopgp](https://codeberg.org/foopgp/onak) → <https://keys.foopgp.org/>) — durcissement et redondance.
- **Adresses de courriel** — publier les clés de `*@foopgp.org` par le mécanisme standard de découverte (WKD).
- **Application mobile** — foodjis 1.6.0 est sur le magasin Google ; reste la signature avec la clé de l’association.
- **Messagerie foomms** — éprouver les **groupes MMS** avec de vrais groupes, et foomms sur d’autres téléphones que les nôtres.
- **Bibliothèque système** — reprendre la bibliothèque bl-djibian qui crée les comptes sur les postes : trois fonctions, dont une à refaire entièrement. Elle aura son propre paquet.
- **Infrastructure** — migrer la chaîne de construction sur un serveur à jour, puis mettre nos deux serveurs en redondance, afin qu’une panne de l’un ne coupe rien. La machine de construction actuelle n’a plus assez de mémoire pour la dernière version de l’assistant.
- **Djibian** (la plupart de [nos dépôts git](https://codeberg.org/djibian)) — Maintenance continue : prise en compte des retours utilisateur, présélection de logiciels pertinents, pré-configuration des logiciels que nous mettons en avant (eg: xfce, evolution, thunderbird, …), etc.

### Agenda

- Jeudi 12 novembre : foopgp (Laurent, Jean-Jacques, …) seront présents au [Forum de l’innovation à Tallard](https://www.digitalpesdusud.fr/evenements/forum-innovation-2026/)
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/) (à priori nous n’irons pas, privilégiant le développement local).
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)
