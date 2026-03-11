---
title: "2026 S11 Rapport Hebdomadaire"
lang: fr
date: 2026-03-10T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

***Présents :*** *Jean-Jacques B, Sébastien P, François R, Laurent C.*

### Ordre du jour prochaine visio mardi 17 mars 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on ne retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fournit (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 10 mars)

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

- Lenovo a décidé cette année de produire des ordinateurs réparables, qu'il vendent directement sous Linux (si on le choisi dans la configuration de la machine lors de l'achat).

  Alors j'aime pas faire de la pub, et encore moins pour une multinationale… mais comme ça fait 20 ans que je répare des ordinateurs sur lesquels j'installe des Linux, j'hallucine un peu, c'est Noël, j'vais me réveiller…

  Quand t'as passé 20 ans à militer pour un truc et que finalement le monde change, semble te donner raison, mais que t'y es pour rien, ça fait comme un grand vide.

  <https://fr.ifixit.com/News/115827/new-thinkpads-score-perfect-10-repairability>

  <https://piaille.fr/@siltaer/116181946473781946>
- The Guardian : Quit ChatGPT: right now! Your subscription is bankrolling authoritarianism <https://www.theguardian.com/commentisfree/2026/mar/04/quit-chatgpt-subscription-boycott-silicon-valley>
- A GitHub Issue Title Compromised 4,000 Developer Machines ([grith.ai](http://grith.ai))

  <https://lwn.net/Articles/1061548/> #LWN #Linux #security

  <https://grith.ai/blog/clinejection-when-your-ai-tool-installs-another>
- Pour Huawei la 5G d’abord, la 6G attendra 2030 : <https://www.distributique.com/actualites/lire-huawei-la-5g-sa-d-abord-la-6g-attendra-2030-37045.html>
- Apple renoue avec l’entrée de gamme en laçant le MacBook Neo : <https://www.distributique.com/actualites/lire-apple-renoue-avec-l-entree-de-gamme-en-lancant-le-macbook-neo-37041.html>
- Pénurie de RAM : vers la fin de l’ère du PC bon marché : <https://www.distributique.com/actualites/lire-penurie-de-ram-vers-la-fin-de-l-ere-du-pc-bon-marche-37029.html>
- Les cyberattaques dopées à l’IA se multiplient : <https://www.distributique.com/actualites/lire-les-cyberattaques-dopees-a-l-ia-se-multiplient-selon-ibm-x-force-37030.html>
- Pas moins de 22 failles trouvées dans Firefox grâce à l’IA d’Anthropic :  
  <https://www.it-connect.fr/firefox-148-22-failles-de-securite-corrigees-grace-a-ia-claude-opus-4-6/>  
  <https://korben.info/claude-danthropic-a-trouve-22-failles-dans-firefox-en-deux-semaines.html>  
  <https://www.generation-nt.com/actualites/ia-anthropic-failles-firefox-2072065>
- Nvidia n’investira pas 100 Md$ dans OpenAI : <https://www.linformaticien.com/magazine/biz-it/64552-nvidia-n-investira-pas-100-mds-dans-openai-pour-le-moment.html>
- Un nouvel agent IA permet de concevoir des applications par “interaction conversationnelle” : <https://www.linformaticien.com/magazine/tendances/941-ia/64553-pega-simplifie-le-vibe-coding.html>
- Verticla Compute lève 57 M€ pour son architecture mémoire 3D : <https://www.linformaticien.com/magazine/biz-it/957-levees-de-fonds/64558-vertical-compute-leve-57-m-pour-son-architecture-memoire-3d.html>
- Souveraineté numérique : l’Éducation Nationale signe pour 4 ans de plus avec Micro$oft : <https://www.01net.com/actualites/tant-pis-pour-la-souverainete-numerique-leducation-nationale-signe-4-ans-de-plus-avec-microsoft.html>
- Un modèle de maturité pour la souveraineté numérique : <https://www.linformaticien.com/magazine/cybersecurite/64549-un-modele-de-maturite-pour-la-gouvernance-du-numerique.html>
- Les grosses boites sont des zombies gavées de crédits privés vérolés (en plus de l argent public)(Merz est l ancien boss europe de black rock) <https://www.lemonde.fr/economie/article/2026/03/07/a-wall-street-des-remous-et-inquietudes-sur-l-immense-marche-du-credit-prive_6669881_3234.html>
- candidature de Palantir à la mairie de Clichy : <https://blogs.mediapart.fr/thomas-le-bonniec/blog/250226/propos-de-la-candidature-de-palantir-la-mairie-de-clichy>
- Les données de plus d’un million d’élèves de l’UNSS fuitent sur le darknet après une cyberattaque : <https://www.linformaticien.com/64550-les-donnees-de-plus-d-un-million-d-eleves-de-l-unss-exposees.html>
- Et sur la plateforme “Cours d’Adultes” de Paris : <https://www.linformaticien.com/magazine/cybersecurite/64545-fuite-de-donnees-sur-la-plateforme-cours-d-adultes-de-paris.html>
- Pourquoi les jeunes sont devenus si nuls en informatique <https://www.mac4ever.com/societe/187334-pourquoi-les-jeunes-sont-devenus-si-nuls-en-informatique>
- DGFiP : pourquoi les impôts français veulent remplacer Windows par Linux en 2026  
  <https://www.frandroid.com/marques/microsoft/3004473_les-impots-francais-dgfip-pourraient-bien-abandonner-windows>

### Au cœur de la réunion

- Choix d’une date d’AG → Dimanche 19 avril
- Un gros article sur djibian devrait bientôt apparaître dans le Dauphiné Libéré.
- La bascule de la June sur une nouvelle infrastructure est passé. Beaucoup de problèmes techniques, ergonomiques et de sécurité résolus. Cette monnaie libre devrait pouvoir croître à nouveau, jusqu’à une limite de quelques centaine de millier d’utilisateurs. En effet tous les problèmes non informatique de conception demeurent, et les solutions techniques et ergonomiques sont toujours limités, et bien en deçà de ce que foopgp développe et livre avec djibian. Il faudrait désormais que foopgp puissent recruter les meilleurs développeurs d’Axiom Team pour assurer une transition douce de la june vers le dji, que nous pourrions appeler “monnaie libre V3” ! ;-).
- Mises à jour sur le site web, par exemple : <https://foopgp.org/fr/event/2026-02-28-atelier-djiian/>
- Démonstration de l’investissement en ligne (cotisations à foopgp via stripe, engendrant la réservations de dji, qui seront crée après certification OpenPGP ID).
- Inscription de l’évènement du 28 mars à l’agenda du libre : <https://www.agendadulibre.org/events/34792>

#### Actions à mener (TODO list)

- Urgent: Appel à cotisation.
- Génération des relevés de compte à coller ou glisser dans nos carnets d’échanges.
- Inscription aux JDLL les 30 et 31 mai à Lyon.

#### Actions en cours

- Gestion communauté + Communication (y’en aura jamais assez)(merci Isore)
- Prospection et gestion commerciales. (3 en cours)
- Refonte processus cotisations via stripe (CB/mastercard/visa) pour appel à cotisation. 
- R&D key server : bon contacts avec le développeur principal d’hockeypuck
- Frontend: gestion des emails ou avatars dans nos identités numériques (ajout, suppression)
- Backend: Fonctionnalités pour consulter ses comptes en djis (Ɉ), faire des paiement en (Ɉ) (grâce à OpenPGP + yubikeys).
- Backend: generation de svg avec données OpenPGP ID à intégrer dans vos cartes de visite
- Collecte d’ordinateurs dotés de Windows obsolètes, pour y installer Djibian (le système qui nous respecte !).
- Clôture comptable 2025.

#### (grosses) Actions terminées

RAS pour cette semaine

###### AMF

- Nous sommes toujours dans le cadre des “exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme” de [l’article 4, titre II](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) .

### Agenda

- Samedi 28 mars de 11h à 17h30 : 2nd atelier grand public autour de Gap (prendre en main djibian GNU/Linux + yubikeys OpenPGP) <https://foopgp.org/fr/event/2026-02-28-atelier-djiian/>
- Dimanche 19 avril : AG foopgp.
- 30 et 31 mai à Lyon : <https://www.jdll.org/>
- [… agenda du libre](https://www.agendadulibre.org)
