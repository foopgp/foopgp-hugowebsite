---
title: "2026 S17 Rapport Hebdomadaire"
lang: fr
date: 2026-04-21T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *Jean-Jacques B, François R, Laurent C.*

### Ordre du jour prochaine visio mardi 28 avril 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on ne retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fournit (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 21 avril)

- Debriefing AG - Revue du [Procès-Verbal](../2026-04-19-report-ago/)
- Revue de presse.
- Point sur les participations et démonstrations publiques.
- Communication.
- Actions réalisés, en cours, à prévoir.

### Stingynalty

**Graphique en 3 dimensions** -> <https://www.math3d.org/xzuclzIbuZ>

Pour avril, en appliquant la formule du [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) , **j = log₂(d+1) / *stingynalty*** :

```bash
$ bl-foopgp --verbose giftarray --with-header --max 11
bl-foopgp: Info: stingynalty=1.11597215534802776295
|          EUR |          DJI |
|--------------|--------------|
|       1.00 € |   89.6079 cɈ |
|       1.17 € |  100.0000 cɈ |
|       2.00 € |  142.0252 cɈ |
|       3.70 € |  200.0000 cɈ |
|       5.00 € |  231.6332 cɈ |
|       9.19 € |  300.0000 cɈ |
|      10.00 € |  309.9926 cɈ |
|      20.00 € |  393.5866 cɈ |
|      21.07 € |  400.0000 cɈ |
|      46.84 € |  500.0000 cɈ |
|      50.00 € |  508.2945 cɈ |
|     100.00 € |  596.6288 cɈ |
|     102.67 € |  600.0000 cɈ |
|     200.00 € |  685.5952 cɈ |
|     223.70 € |  700.0000 cɈ |
|     486.00 € |  800.0000 cɈ |
|     500.00 € |  803.6640 cɈ |
|    1000.00 € |  893.1429 cɈ |
|    1054.53 € |  900.0000 cɈ |
|    2000.00 € |  982.6862 cɈ |
|    2286.77 € | 1000.0000 cɈ |
|    4957.52 € | 1100.0000 cɈ |
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

- Total members : 40 - Total certified members : 16 / 40
- Total contribs : 70 - Total certified contribs : 33 / 70
- Total contribution : 59503.14 € - Total certified contribution : 50812.51 € / 59503.14 €
- Total created : 236.044486 Ɉ - Total certified created : 129.063714 Ɉ / 236.044486 Ɉ

### Revue de presse

- Ulysse 31 revient !

  <https://www.franceinfo.fr/culture/tv/ulysse-31-le-dessin-anime-emblematique-des-annees-80-reprend-son-odyssee-a-la-television_7936811.html>

  La série animée est de nouveau diffusée sur la chaîne payante Mangas depuis le 5 avril en version haute définition.

  <https://pipou.academy/@pink_automaton/116402719133847930>
- Original Apollo 11 code open-sourced by NASA — original Command Module and Lunar Module code repos are now public domain resources

  The historic computer software code that took Apollo 11 to the moon has been open-sourced and is available to anyone to read, download, and tinker with.

  #hardware

  <https://www.tomshardware.com/software/original-apollo-11-code-open-sourced-by-nasa-original-command-module-and-lunar-module-code-repos-are-now-public-domain-resources>
- France Titre / ANTS (encore)

  <https://bonjourlafuite.eu.org/#France%20Titre%20/%20ANTS-2026-04-15>

  'ANTS piratée à cause d'une faille basique et 19 millions de Français en font les frais, une fois de plus !

  − <https://www.clubic.com/actualite-609775-l-ants-piratee-a-cause-d-une-faille-basique-et-19-millions-de-francais-en-font-les-frais-une-fois-de-plus.html>

  <https://mamot.fr/@Steve12L/116436490366754913>
- Fuite de données sur une plateforme de formation de la police : <https://www.linformaticien.com/magazine/cybersecurite/64740-fuite-de-donnees-sur-une-plateforme-de-formation-de-la-police.html>
- Anthropic secretly installs spyware when you install Claude Desktop

  <https://www.thatprivacyguy.com/blog/anthropic-spyware/>

  <https://types.pl/@amy/116436180446800432>
- <https://www.francebleu.fr/nouvelle-aquitaine/vienne-86/buxerolles/ils-ont-grignote-la-fibre-a-buxerolles-des-rats-privent-des-centaines-de-personnes-d-internet-5299627>

  <https://mastodon.gougere.fr/@bortzmeyer/116402436898394679>
- 80 % des français rencontrent des difficultés de navigation web sur leur #smartphone.

  Et devinez quelle est la toute première cause, loin devant les lenteurs de chargement ?

   l'intrusion publicitaire, bien sûr ! 

  #Merdification du Web, pistage des utilisateurs, pillage de données personnelles des utilisateurs, lenteurs de chargement, pollution visuelle, autant de raisons (et j'en oublie sans doute) de bloquer la pub 

  <https://www.jaimelesstartups.fr/news/accessiway-publie-les-resultat-de-lenquete-les-freins-a-lusage-des-services-numeriques-sur-smartphone>

  <https://mamot.fr/@alainmi11/116390906489420328>
- La Commission européenne attribue un marché Cloud Souverain de 180 M€ : <https://www.linformaticien.com/magazine/cloud/64745-la-commission-europeenne-attribue-un-contrat-de-cloud-souverain-de-180-m.html>
- La Commission Européenne choisit Deep : <https://www.linformaticien.com/magazine/cloud/64742-la-commission-europeenne-choisit-deep.html>
- Entente entre AMD et l’État : <https://www.linformaticien.com/magazine/infra/64743-entente-entre-amd-et-l-etat.html>
- Palantir veut faire du numérique un instrument de puissance coercitive : <https://next.ink/234267/palantir-veut-faire-du-numerique-un-instrument-de-puissance-coercitive/>
- Every Data Centre Is a US Military Base : <https://thetyee.ca/Opinion/2026/04/16/Every-Data-Centre-US-Military-Base/>

### Au cœur de la réunion

- Revue du [PV d’AG](../2026-04-19-report-ago/) (généré par IAa).
- Instructions données aux JDDL (30&31 mai à Lyon) pour installer nos logiciels sur leurs systèmes debian.
- La cotisation en ligne est enfin possible : 
  - Avec le graphique interactif de calcul 1ère cotisation en euros (€) ↔ gain en dji (Ɉ) : <https://api.foopgp.org/onboarding/contribution>
  - Sans le graphique mais avec la possibilité d’indiquer un parrain, ce qui vous permet par exemple d’offrir des djis pour vos proches, tout en recevant une commission : <https://donate.stripe.com/fZedSWfT74RP0sE288>
- François N’OUBLIE PAS D’ORGANISER UN PODCAST RADIO sur foopgp + djibian :-).

#### Actions en cours

- Gestion communauté + Communication (y’en aura jamais assez)(merci Isore et Goyave)
- Prospection / gestion commerciale (2 en cours).
- Backend : Fonctionnalités pour consulter ses comptes en djis (Ɉ), faire des paiement en (Ɉ) (grâce à OpenPGP + yubikeys).
- Backend : génération de svg avec données OpenPGP ID à intégrer dans vos cartes de visite
- Collecte d’ordinateurs dotés de Windows obsolètes, pour y installer Djibian (le système qui nous respecte !).

#### (grosses) Actions terminées

- Clôture comptable 2025 (à rouvrir, quelques irrégularités à corriger).
- Cf. “Au cœur de la réunion”.

###### AMF

- Nous sommes toujours dans le cadre des “exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme” de [l’article 4, titre II](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) .

### Agenda

- Dimanche 19 avril : AG foopgp.
- Samedi 25 avril à Gap : Débat + démonstration : monnaie libre, djibian, dji.
- 30 et 31 mai à Lyon : <https://www.jdll.org/>
- [… agenda du libre](https://www.agendadulibre.org)

