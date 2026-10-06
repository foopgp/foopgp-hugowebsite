---
title: "2026 S41 Rapport Hebdomadaire"
lang: fr
date: 2026-10-06T21:00:00+02:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *(à compléter)*

### Ordre du jour prochaine visio mardi 13 octobre 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) .*

- Points habituels : (revue de presse + déplacements + revue des travaux réalisés, en cours, ou à prévoir **pour l'association**).
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- **foodjis 1.3.6** : retours des premiers téléphones, et où en est l'examen du magasin Google.

### Ordres du soir (mardi 6 octobre)

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- **foodjis sur Android et la clé de sécurité en SSH** : premiers retours, sur d'autres téléphones que les nôtres.

### Stingynalty

Pour octobre : ***stingynalty = 1.14987260998029334764***

Pour novembre : ***stingynalty = 1.15562197303019481437***

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

### Production de la semaine (29 septembre — 6 octobre)

- **foodjis a son site** : <https://foodjis.foopgp.org/>, une page, en
  **onze langues**, qui dit ce que fait l'application et propose de
  l'installer — depuis le magasin Google ou en téléchargement direct, signé.
- **foodjis sur Android** — l'application est sortie en version **1.3.6**.
  Elle est envoyée au magasin Google, qui l'examine encore, et se télécharge
  dès maintenant depuis [notre article](https://foopgp.org/fr/blog/2026-09-24-foodjis-android/)
  et depuis son site.
  - Elle parle maintenant **grec et turc**, en plus des neuf langues
    précédentes.
  - **N'importe quel fichier se chiffre ou se signe** : ouvert depuis
    l'application, ou partagé depuis une autre (une photo, un document). Le
    résultat se partage ou s'enregistre.
  - **Elle vérifie un fichier contre sa signature** — par exemple
    l'application elle-même, téléchargée depuis notre site : vous n'avez pas
    à nous croire. Elle sait aussi signer un message sans le chiffrer.
  - **Thunderbird se sert de votre identité sans question préalable** ; la
    clé de sécurité reste demandée à chaque signature et à chaque
    déchiffrement.
  - Votre clé de sécurité **signe aussi vos contributions git** depuis le
    téléphone, en plus d'ouvrir vos sessions SSH.
  - La photo d'un certificat est mieux réduite, celle d'une fiche s'agrandit
    quand on la touche, chaque bouton porte un petit symbole, et les pages
    suivent la rotation de l'écran.
  - L'application pèse 4,7 Mo, contre 7,7 auparavant. Un bug critique apparu
    avec cet allègement — la version 1.3.5 ne savait plus générer une
    identité — est corrigé dans la 1.3.6.
  - Sa **fiche sur le magasin Google** est réécrite, avec ses captures
    d'écran, dans les onze langues.
- **foopgp.org**
  - [Un article explique comment ouvrir des sessions SSH avec sa clé de
    sécurité depuis un téléphone](https://foopgp.org/fr/blog/2026-09-30-foodjis-agent-ssh/),
    en français et en anglais, avec une démonstration en vidéo.
  - La façon dont un certificat PGP ID se lit comme une **carte de visite**,
    par n'importe quel carnet d'adresses, est maintenant
    [écrite noir sur blanc](https://foopgp.org/documents/en/draft-foopgp-openpgp-vcard-00.txt),
    avec nos autres spécifications.
- **sshwgpg** (<https://codeberg.org/foopgp/sshwgpg>) — sortie en version
  **1.6.1**, avec son paquet Debian. L'outil qui prête sa clé de sécurité à
  une connexion SSH sait désormais s'installer pour tout le poste : `ssh`,
  `scp` et `git` s'authentifient alors par la clé, sans passer par lui. Son
  petit frère pour le téléphone, *sshwfoodjis*, sort du même paquet source,
  à la même version.
- **Thunderbird** — foodjis a été présenté
  [aux utilisateurs de Thunderbird pour Android](https://github.com/thunderbird/thunderbird-android/issues/5662)
  qui cherchent une application maintenue pour chiffrer leurs courriels.

### TODO — Tâches à faire

Liste non-exhaustive des tâches à réaliser ou chantiers en cours :

- **Comptabilité €** ([dépôt](https://codeberg.org/foopgp/foopgp-cashflow)     git non-public) — automatiser la chaîne HelloAsso : se rapprocher du    temps réel plutôt que d'une reprise manuelle, et remercier    automatiquement. L'essentiel est écrit et testé depuis juin ; ce qui    manque est une mise en service.
- **Comptabilité Ɉ** — publier les deux certifications en    attente, puis faire passer le registre au format courant : l'outil de    promotion ne lit plus la version dans laquelle il est écrit.  Finaliser   par ailleurs [les innovations et concepts sous-jacents](https://foopgp.org/documents/en/)  , comme celui d'**arbres universels d'entités** ([spécifications](https://foopgp.org/documents/en/draft-foopgp-uetree-00.txt)     et [code](https://codeberg.org/foopgp/bash-libs/src/branch/main/bin/bl-uetree)    ). Et démarrer le frontend (dépot et paquet à créer).
- **Bibliothèque d'identité pgpid** — les neuf catalogues de  traduction sont désormais complets ; restent quelques points de forme  dans le paquet avant de la présenter à une communauté extérieure  (Debian, LibrePGP).
- **Moteur de chiffrement** — les paquets corrigés sont livrés dans nos dépôts ; reste à faire aboutir les correctifs en amont, auprès du projet d'origine.
- **Serveur de certificats** ([onak-foopgp](https://codeberg.org/foopgp/onak)     → <https://keys.foopgp.org/>    ) — durcissement et redondance ; proposer nos améliorations du protocole au groupe de travail qui le révise.
- **Adresses de courriel** — publier les clés de `*@foopgp.org` par le mécanisme standard de découverte (WKD).
- **Application mobile** — la version 1.3.6 attend l'examen du magasin Google ; restent la signature avec la clé de l'association, et à l'éprouver sur d'autres téléphones que les nôtres.
- **Fournisseur PGP pour Thunderbird** — Thunderbird lit, signe, chiffre et déchiffre par foodjis, désormais sans question préalable ; reste à le faire savoir, et à l'éprouver avec d'autres applications de courriel.
- **SSH par la clé de sécurité** — le paquet Debian de sshwgpg est construit, avec son petit frère sshwfoodjis ; restent à faire suivre la clé de machine en machine depuis le téléphone, comme depuis l'ordinateur, et à proposer à Termux de reconnaître lui-même un agent SSH extérieur.
- **Bibliothèque système** — reprendre la bibliothèque  bl-djibian qui crée les comptes sur les postes : trois fonctions, dont  une à   refaire entièrement. Elle aura son propre paquet.
- **Infrastructure** — migrer la chaîne de construction   sur un serveur à jour, puis mettre nos deux serveurs en redondance, afin   qu'une panne de l'un ne coupe rien. La machine de construction  actuelle  n'a plus assez de mémoire pour la dernière version de  l'assistant.
- **Djibian** (la plupart de [nos dépots git](https://codeberg.org/djibian)    ) — Maintenance continue : prise en compte des retours utilisateur,     préselection de logiciels pertinents, pré-configuration des logiciels     que nous mettons en avant (eg: xfce, evolution, thunderbird, …), etc.

### Agenda

- 11 septembre — 11 octobre : [Fête des Possibles](https://linuxfr.org/news/l-april-invite-a-participer-a-la-fete-des-possibles-2026-pour-toucher-de-nouveaux-publics)   2026, initiée et coordonnée par le Collectif pour une Transition   Citoyenne. Des centaines d'événements partout en France et en Belgique.
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/)   (à priori nous n'irons pas, privilégiant le développement local).
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)
