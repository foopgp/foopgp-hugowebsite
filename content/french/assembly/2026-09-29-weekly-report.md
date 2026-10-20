---
title: "2026 S40 Rapport Hebdomadaire"
lang: fr
date: 2026-09-29T21:00:00+02:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *(à compléter)*

### Ordre du jour prochaine visio mardi 6 octobre 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) .*

- Points habituels : (revue de presse + déplacements + revue des travaux réalisés, en cours, ou à prévoir **pour l'association**).
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- **foodjis sur Android et la clé de sécurité en SSH** : premiers retours, sur d'autres téléphones que les nôtres.

### Ordres du soir (mardi 29 septembre)

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- **Retour d'Émancip'Actions à Bourges** (24 — 27 septembre) : ce qu'on y a montré, ce qu'on en rapporte.
- **Publication de foodjis sur le magasin Google** : où en est le compte de l'association, et ce qu'il reste à décider.

### Stingynalty

Pour septembre : ***stingynalty = 1.14415185072666004741***

Pour octobre : ***stingynalty = 1.14987260998029334764***

**Simulateur de cotisation initiale** (2 dimensions) → <https://foopgp.org/djis-simulator/?lang=fr>

**Graphique en 3 dimensions** → <https://www.math3d.org/xzuclzIbuZ>

*Rappel :* si vous avez déjà cotisé, il faut appliquer la formule :

> **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/)     .

#### Chiffres de l'association

*Chiffres inchangés depuis le compte rendu précédent : le journal des cotisations s'arrête toujours au 7 août 2026.*

*Depuis la création de l'association le 3 avril 2023 : **106 cotisations, 66 588,68 €, 58 cotisants**.*

*Parmi eux, **22 cotisants sont certifiés** dans la Toile de Confiance : **71 % des euros** y sont adossés, mais seulement **38 % des cotisants** — l'écart tient aux plus grosses contributions, qui viennent de personnes déjà certifiées. Ces 22 identités totalisent 52 cotisations, 47 253,05 € et **162,721425 Ɉ créés**.*

***Seuls les adhérents dont l'identité PGP ID est certifiée par la Toile de Confiance voient leurs djis effectivement créés et utilisables.***

*Aux adhérents pas encore certifiés : venez nous rencontrer lors d'un de nos prochains ateliers pour finaliser la certification de votre identité, débloquer la création de vos djis et pouvoir les échanger au sein de l'association.*

### Revue de presse

*(à compléter)*

### Au cœur de la réunion

*(à compléter pendant la séance)*

### Production de la semaine (22 — 29 septembre)

- **foodjis sur Android** (<https://iso.foopgp.org/>) — l'application est
  sortie en version 1.0, puis **1.2.0** en fin de semaine.
  - **Thunderbird lit, signe, chiffre et déchiffre vos courriels avec votre
    clé de sécurité**, en passant par foodjis. Pendant l'opération,
    Thunderbird reste visible derrière : tout se passe dans la fenêtre de la
    clé, qui dit quand on peut l'éloigner.
  - **Votre clé de sécurité ouvre aussi des sessions SSH** depuis le
    téléphone : `ssh`, `scp` et `git` dans l'application Termux
    s'authentifient avec elle, sans qu'aucune clé privée ne soit jamais
    copiée sur le téléphone. foodjis ne se montre que lorsqu'un serveur
    accepte la clé ; l'outil qui fait le lien s'installe depuis foodjis,
    sans réseau. Éprouvé avec nos serveurs, Codeberg et GitHub.
  - **Une page pour chiffrer un texte et ouvrir un message chiffré**, depuis
    le menu, et vos **crédibilités** s'exportent et se reprennent, signées,
    comme sur l'ordinateur.
  - La page de la clé dit combien de **signatures** votre clé a faites :
    une clé qui a signé plus que vous ne vous en souvenez mérite qu'on s'y
    arrête.
  - L'application fonctionne sur **Android 16** (vérifié sur un téléphone
    Murena), et la version 1.0.4 est passée par le magasin Google.
- **foopgp.org**
  - [Un article présente foodjis sur Android](https://foopgp.org/fr/blog/2026-09-24-foodjis-android/),
    en français et en anglais : ce qu'elle remplace, comment l'installer,
    comment obtenir une clé.
  - La page qui présente nos **solutions de chiffrement** est réécrite.
  - Nouveaux **logos** de foodjis.
- **sshwgpg** (<https://codeberg.org/foopgp/sshwgpg>) — l'outil qui prête sa
  clé de sécurité à une connexion SSH vérifie maintenant lui-même ce qui
  manque, ici et sur le serveur, et dit quoi faire. Il a un petit frère,
  *sshwfoodjis*, pour le téléphone.

### TODO — Tâches à faire

Liste non-exhaustive des tâches à réaliser ou chantiers en cours :

- **Comptabilité €** ([dépôt](https://codeberg.org/foopgp/foopgp-cashflow) git non-public) — automatiser la chaîne HelloAsso : se rapprocher du temps réel plutôt que d'une reprise manuelle, et remercier automatiquement. L'essentiel est écrit et testé depuis juin ; ce qui manque est une mise en service.
- **Comptabilité Ɉ** — publier les deux certifications en attente, puis faire passer le registre au format courant : l'outil de promotion ne lit plus la version dans laquelle il est écrit. Finaliser par ailleurs [les innovations et concepts sous-jacents](https://foopgp.org/documents/en/), comme celui d'**arbres universels d'entités** ([spécifications](https://foopgp.org/documents/en/draft-foopgp-uetree-00.txt) et [code](https://codeberg.org/foopgp/bash-libs/src/branch/main/bin/bl-uetree)). Et démarrer le frontend (dépot et paquet à créer).
- **Bibliothèque d'identité pgpid** — les neuf catalogues de traduction sont désormais complets ; restent quelques points de forme dans le paquet avant de la présenter à une communauté extérieure (Debian, LibrePGP).
- **Moteur de chiffrement** — les paquets corrigés sont livrés dans nos dépôts ; reste à faire aboutir les correctifs en amont, auprès du projet d'origine.
- **Serveur de certificats** ([onak-foopgp](https://codeberg.org/foopgp/onak) → <https://keys.foopgp.org/>) — durcissement et redondance.
- **Adresses de courriel** — publier les clés de `*@foopgp.org` par le mécanisme standard de découverte (WKD).
- **Application mobile** — restent la signature avec la clé de l'association, et la mise à jour de la fiche du magasin Google avec les versions de cette semaine.
- **Fournisseur OpenPGP pour Thunderbird** — Thunderbird lit, signe, chiffre et déchiffre par foodjis ; reste à l'éprouver sur d'autres téléphones et à le faire savoir.
- **SSH par la clé de sécurité** — construire le paquet Debian de sshwgpg avec son petit frère sshwfoodjis, et proposer à Termux de reconnaître lui-même un agent SSH extérieur.
- **Bibliothèque système** — reprendre la bibliothèque bl-djibian qui crée les comptes sur les postes : trois fonctions, dont une à refaire entièrement. Elle aura son propre paquet.
- **Infrastructure** — migrer la chaîne de construction sur un serveur à jour, puis mettre nos deux serveurs en redondance, afin qu'une panne de l'un ne coupe rien. La machine de construction actuelle n'a plus assez de mémoire pour la dernière version de l'assistant.
- **Djibian** (la plupart de [nos dépots git](https://codeberg.org/djibian)) — Maintenance continue : prise en compte des retours utilisateur, préselection de logiciels pertinents, pré-configuration des logiciels que nous mettons en avant (eg: xfce, evolution, thunderbird, …), etc.

### Agenda

- 11 septembre — 11 octobre : [Fête des Possibles](https://linuxfr.org/news/l-april-invite-a-participer-a-la-fete-des-possibles-2026-pour-toucher-de-nouveaux-publics) 2026, initiée et coordonnée par le Collectif pour une Transition Citoyenne. Des centaines d'événements partout en France et en Belgique.
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/) (à priori nous n'irons pas, privilégiant le développement local).
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)
