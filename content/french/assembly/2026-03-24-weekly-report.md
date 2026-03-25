---
title: "2026 S13 Rapport Hebdomadaire"
lang: fr
date: 2026-03-24T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *Jean-Jacques B, François R, Laurent C, Josué.*

### Ordre du jour prochaine visio mardi 31 mars 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fournit (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Préparation AG du 19 avril
- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 24 mars)

- Préparation AG
- Check-list atelier
- Revue de presse.
- Point sur les participations et démonstrations publiques.
- Communication.
- Actions réalisés, en cours, à prévoir.

### Stingynalty

**Graphique en 3 dimensions** -> <https://www.math3d.org/xzuclzIbuZ>

Pour mars, en appliquant la formule du [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) , **j = log₂(d+1) / *stingynalty*** :

```
$ bl-foopgp --verbose giftarray --with-header --max 11
bl-foopgp: Info: stingynalty=1.11042005507266444075
|          EUR |          DJI |
|--------------|--------------|
|       1.00 € |   90.0560 cɈ |
|       1.16 € |  100.0000 cɈ |
|       2.00 € |  142.7353 cɈ |
|       3.67 € |  200.0000 cɈ |
|       5.00 € |  232.7914 cɈ |
|       9.07 € |  300.0000 cɈ |
|      10.00 € |  311.5426 cɈ |
|      20.00 € |  395.5545 cɈ |
|      20.74 € |  400.0000 cɈ |
|      45.92 € |  500.0000 cɈ |
|      50.00 € |  510.8359 cɈ |
|     100.00 € |  599.6119 cɈ |
|     100.31 € |  600.0000 cɈ |
|     200.00 € |  689.0231 cɈ |
|     217.72 € |  700.0000 cɈ |
|     471.24 € |  800.0000 cɈ |
|     500.00 € |  807.6823 cɈ |
|    1000.00 € |  897.6086 cɈ |
|    1018.60 € |  900.0000 cɈ |
|    2000.00 € |  987.5997 cɈ |
|    2200.40 € | 1000.0000 cɈ |
|    4752.00 € | 1100.0000 cɈ |
```

Rappel, si vous avez déjà cotisé, il faut appliquer la formule :

> **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) .

Et pour cela, il faut utiliser les options *--tokens* et *--gifts* :

```
$ bl-foopgp giftarray --help
Usage: bl-foopgp giftarray [OPTIONS]

Afficher un tableau indiquant combien de djis (Ɉ) seront créés à partir d’une cotisation en euros (€).

OPTIONS:
  -t, --tokens DJISUM  Définir la base de djis (Ɉ) déjà créés (par défaut : 0)
  -g, --gifts EURSUM   Définir la base des montants déjà cotisés en euros (€) (par défaut : 0)
  -m, --max VALUE      Définir une limite en nombre de djis ciblés (par défaut : 12)
  -M, --max-line NUM   Limiter le nombre de lignes (par défaut : 24)
  -H, --header-only    Afficher uniquement la ligne d’en-tête, puis quitter.
  -F, --with-header    Afficher également la ligne d’en-tête et une ligne de séparation au début du tableau.
```

#### Chiffres de l’association

*Au 31 décembre 2025, en utilisant le script ./tools/[gifts-stats.sh](http://gifts-stats.sh) dans la blockchain qui gère les jetons Ɉ.*

- Total members: 40 - Total certified members: 16 / 40
- Total contribs: 70 - Total certified contribs: 33 / 70
- Total contribution: 59503.14 € - Total certified contribution: 50812.51 € / 59503.14 €
- Total created: 236.044486 Ɉ - Total certified created: 129.063714 Ɉ / 236.044486 Ɉ

### Revue de presse

- Une initiative locale pour sécuriser son ordinateur et ses données : <https://www.ledauphine.com/science-et-technologie/2026/03/22/une-initiative-locale-pour-securiser-son-ordinateur-et-ses-donnees>
- Risques que fait peser le vibe coding sur l’open source :  <https://www.lemagit.fr/conseil/Ces-risques-que-fait-peser-le-vibe-coding-sur-lopen-source>
- Fuite : L’Enseignement Catholique <https://bonjourlafuite.eu.org/#Enseignement%20Catholique-2026-03-21>
- « StravaLeaks » : le porte-avions « Charles-de-Gaulle » localisé en temps réel par « Le Monde » grâce à l’application de sport  <https://www.lemonde.fr/international/article/2026/03/19/stravaleaks-le-porte-avions-charles-de-gaulle-localise-en-temps-reel-par-le-monde-grace-a-l-application-de-sport_6672445_3210.html>
  Est-ce que ça vaut la peine de dépenser des milliards pour offrir un nouveau porte-avions à la marine qui n'est même pas capable d'empêcher ses troufions de révéler la position de leur raffiot avec leurs applis de sport ?  Le fleuron de la marine nationale repéré par le premier internaute venu, c'est pas un peu ridicule ?
- An open-source intelligence investigation into how Meta Platforms built a multi-channel influence operation to pass age verification laws that shift regulatory burden from social media platforms onto Apple and Google's app stores.  <https://github.com/upper-up/meta-lobbying-and-other-findings> <https://masto.hackers.town/@drwho/116224951346479868>
- L’ANSSI lance le référenciel ReCyF pour anticiper sur NIS2 : <https://www.linformaticien.com/magazine/cybersecurite/64628-l-anssi-lance-un-referentiel-recyf-pour-anticiper-sur-nis-2.html>
- SAP lance son cloud souverain avec Bleu : <https://www.linformaticien.com/magazine/cloud/64621-sap-lance-son-cloud-souverain-en-france-avec-bleu.html>
- Le Cispe appelle à préférer les fournisseurs de cloud européens : <https://www.linformaticien.com/magazine/cloud/64617-le-cispe-appelle-a-preferer-les-fournisseurs-de-cloud-europeens.html>
- Ionos et Nextcloud s’allient autour d’une suite souveraine : <https://www.linformaticien.com/magazine/cloud/64616-ionos-et-nextcloud-s-allient-autour-d-une-suite-souveraine.html>
- Un écart entre la détection des cyberattaques et leurs confinements : <https://www.linformaticien.com/magazine/cybersecurite/64610-un-ecart-entre-la-detection-des-cyberattaques-et-leur-confinement.html>

### Au cœur de la réunion

- On est dans le journal : <https://www.ledauphine.com/science-et-technologie/2026/03/22/une-initiative-locale-pour-securiser-son-ordinateur-et-ses-donnees>
- Atelier, stand et conf. acceptés pour le JDLL (30 et 31 Mai à Lyon).
- “Disparition” de piseb. Causes ? sécurité ? chenilles processionnaires menaçant ses chiens ? (En contact avec Katia, merci à toi). 
-  Préparation de notre prochaine AG.
  - Il faudra renouveler la quasi totalité du CA
  - Rappeler qui n’est pas à jour de ses cotisations - Notons que la page de cotisation en ligne est bientôt en prod : <https://api.foopgp.org/onboarding/contribution>
  - Rappel statuts <https://foopgp.org/fr/about/status/>
- Démo djis pour Josué
- Grille de tarif NextCloud de Ionos : <https://www.ionos.fr/solutions-bureau/herbergement-managed-nextcloud#packs>
- Rendez-vous le 28 mars à Tallard <https://foopgp.org/fr/event/2026-02-28-atelier-djiian/> 

  ![Flyer pour l'atelier djibian du 28 mars à Tallard - Merci Isore  ^](/images/events/2026/20260328_djibian_atelier.png)

#### Actions en cours

- Gestion communauté + Communication (y’en aura jamais assez)(merci Isore)
- Prospection / gestion commerciale (4 en cours).
- Refonte processus cotisations via stripe (CB/mastercard/visa) pour appel à cotisation. 
- Frontend: gestion des emails ou avatars dans nos identités numériques (ajout, suppression)
- Backend: Fonctionnalités pour consulter ses comptes en djis (Ɉ), faire des paiement en (Ɉ) (grâce à OpenPGP + yubikeys).
- Backend: generation de svg avec données OpenPGP ID à intégrer dans vos cartes de visite
- Collecte d’ordinateurs dotés de Windows obsolètes, pour y installer Djibian (le système qui nous respecte !).
- Clôture comptable 2025.

#### (grosses) Actions terminées

Cf. “Au cœur de la réunion”.

###### AMF

- Nous sommes toujours dans le cadre des “exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme” de [l’article 4, titre II](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) .

### Agenda

- Samedi 28 mars de 11h à 17h30 : 2nd atelier grand public autour de Gap (prendre en main djibian GNU/Linux + yubikeys OpenPGP) <https://foopgp.org/fr/event/2026-02-28-atelier-djiian/>
- Dimanche 19 avril : AG foopgp.
- 30 et 31 mai à Lyon : <https://www.jdll.org/>
- [… agenda du libre](https://www.agendadulibre.org)
