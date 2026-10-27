---
title: "2026 S44 Rapport Hebdomadaire"
lang: fr
date: 2026-10-27T21:00:00+01:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *(à compléter)*

### Ordre du jour prochaine visio mardi 3 novembre 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp).*

- Points habituels : (revue de presse + déplacements + revue des travaux réalisés, en cours, ou à prévoir **pour l’association**).
- Préparation du **Forum de l’innovation à Tallard** du jeudi 12 novembre.

### Ordres du soir (mardi 27 octobre)

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).
- Retour sur la **conférence de Peipin** du samedi 24 octobre.

### Stingynalty

Pour octobre : ***stingynalty = 1.14987260998029334764***

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

- *(à compléter)*

### Au cœur de la réunion

- *(à compléter)*

### Production de la semaine (20 — 27 octobre)

- **foomms est validée par le magasin Google**, et sa version **1.2.5** y est
  **en production** depuis le 26 octobre. Depuis la 1.2.2 :
  - un message chiffré reste « non lu » tant qu’il n’a pas été déchiffré ;
    chaque message reçu peut être marqué lu ou non lu ;
  - une page des **non-lus**, avec « Tout marquer comme lu », et une rubrique
    **Chiffrement** dans la configuration ;
  - avant d’envoyer **en clair** un message qui aurait pu être chiffré,
    foomms le demande, et propose de le chiffrer ;
  - ce qui était en train d’être écrit est **gardé**, même quand Android
    ferme la conversation ;
  - les photos prises avec l’appareil photo de /e/OS (Murena) passent ;
  - l’application occupe tout l’écran sur les Android récents, et elle est
    plus légère ;
  - dans la liste des conversations, chaque visage est **encadré de la
    couleur de son certificat**, comme dans foodjis.
- **foodjis 1.4.5** — en production sur le magasin Google.
  - La fenêtre de la clé de sécurité ouverte par une autre application
    (foomms, SSH) **appelle par son nom** la personne dont la clé est
    attendue.
  - Un fichier chiffré **garde son nom** à l’intérieur, et le retrouve au
    déchiffrement.
  - La liste des certificats montre les **visages encadrés** de la couleur
    de leur certificat ; la liste des contacts s’ouvre bien plus vite.
- **foodjis.foopgp.org** — la page des clés de sécurité offertes montre en
  photo les trois modèles de clés.
- **En cours : les MMS de groupe dans foomms** (prochaine version, 1.3.0).
  - Trois pages : « Conversations », « Non-lus » et « Groupes MMS ».
  - Dans un groupe, chaque message porte le **visage** de son auteur ; ceux
    qui n’ont pas de photo reçoivent un visage de pixels, toujours le même.
  - « Nouveau message » propose, pour plusieurs destinataires, l’**envoi
    multiple** (chacun reçoit son message) ou le **groupe MMS** (un seul MMS
    pour tous, de 2 à 9 destinataires).

### TODO — Tâches à faire

Liste non-exhaustive des tâches à réaliser ou chantiers en cours :

- **Comptabilité €** ([dépôt](https://codeberg.org/foopgp/foopgp-cashflow) git non-public) — automatiser la chaîne HelloAsso : se rapprocher du temps réel plutôt que d’une reprise manuelle, et remercier automatiquement. L’essentiel est écrit et testé depuis juin ; ce qui manque est une mise en service.
- **Comptabilité Ɉ** — publier les deux certifications en attente, puis faire passer le registre au format courant : l’outil de promotion ne lit plus la version dans laquelle il est écrit. Finaliser par ailleurs [les innovations et concepts sous-jacents](https://foopgp.org/documents/en/), comme celui d’**arbres universels d’entités** ([spécifications](https://foopgp.org/documents/en/draft-foopgp-uetree-00.txt) et [code](https://codeberg.org/foopgp/bash-libs/src/branch/main/bin/bl-uetree)). Et démarrer le frontend (dépot et paquet à créer).
- **Bibliothèque d’identité pgpid** — les neuf catalogues de traduction sont désormais complets ; restent quelques points de forme dans le paquet avant de la présenter à une communauté extérieure (Debian, LibrePGP).
- **Serveur de certificats** ([onak-foopgp](https://codeberg.org/foopgp/onak) → <https://keys.foopgp.org/>) — durcissement et redondance.
- **Adresses de courriel** — publier les clés de `*@foopgp.org` par le mécanisme standard de découverte (WKD).
- **Application mobile** — foodjis 1.4.5 est en production sur le magasin Google ; reste la signature avec la clé de l’association.
- **Messagerie foomms** — terminer les **MMS de groupe** (version 1.3.0) et les éprouver avec de vrais groupes ; puis l’éprouver sur d’autres téléphones que les nôtres.
- **Bibliothèque système** — reprendre la bibliothèque bl-djibian qui crée les comptes sur les postes : trois fonctions, dont une à refaire entièrement. Elle aura son propre paquet.
- **Infrastructure** — migrer la chaîne de construction sur un serveur à jour, puis mettre nos deux serveurs en redondance, afin qu’une panne de l’un ne coupe rien. La machine de construction actuelle n’a plus assez de mémoire pour la dernière version de l’assistant.
- **Djibian** (la plupart de [nos dépots git](https://codeberg.org/djibian)) — Maintenance continue : prise en compte des retours utilisateur, préselection de logiciels pertinents, pré-configuration des logiciels que nous mettons en avant (eg: xfce, evolution, thunderbird, …), etc.

### Agenda

- Jeudi 12 novembre : foopgp (Laurent, Jean-Jacques, …) seront présents au [Forum de l’innovation à Tallard](https://www.digitalpesdusud.fr/evenements/forum-innovation-2026/)
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/) (à priori nous n’irons pas, privilégiant le développement local).
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)
