---
title: "2026 S16 Rapport Hebdomadaire"
lang: fr
date: 2026-04-14T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Rappel: [Assemblée Générale ce dimanche 19 avril à 16h à Gap (et en visio)](/fr/event/2026-04-19-ag/)***

*Pour adhérer à l'association et générer vos premiers djis (Ɉ) : <https://foopgp.org/fr/about/join/>*

---

***Présents :*** *Jean-Jacques B, François R, Laurent C.*

### Ordre du jour prochaine visio mardi 21 avril 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on ne retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fournit (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Debriefing AG
- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 14 avril)

- Présentation nouvel outil : visualiseur de djis : <https://foopgp.org/dji-viewer/> (merci Didier).
- Présentation nouvel page dans [le support de présentation](https://foopgp.org/documents/fr/20260410-presentation-djibian.pdf) : [Inégalités en 2022 et comparaison depuis 1998](https://foopgp.org/documents/fr/inegalites_patrimoine_zone_euro_1998_2022.html)
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

- [La dernière note de conjoncture de l’insee](https://www.insee.fr/fr/statistiques/8907467) révèle l’impact de l’IA dans le secteur des activités informatiques :

  ![2026-04-13_Impact_IA_dans_le_numerique.png](https://i.imgur.com/ATNA2E8.png)

  Raison de plus pour instaurer un revenue de base (ou mieux : le dji) dans nos sociétés.
- Claude Mythos ne dort jamais, ment sur son identité, et personne n'en parle : <https://www.journaldunet.com/intelligence-artificielle/1549423-claude-mythos-ne-dort-jamais-ment-sur-son-identite-et-personne-n-en-parle/>
- « S'agissant de l'évolution du poste de travail, la DINUM annonce sa sortie de Windows au profit de postes sous système d'exploitation Linux »

   @numerique_gouv 

  <https://www.numerique.gouv.fr/sinformer/espace-presse/souverainete-numerique-reduction-dependances-extra-europeennes/>

  <https://mamot.fr/@ThierryJoffredo/116374858738156916>

  La DINUM (et non l'État français, comme vu ailleurs) quitte (enfin) Microsoft Windows pour Linux. Et demande aux différents ministères de préparer leur plan de transition vers moins de dépendance étrangère d'ici l'automne 2026.

  <https://www.lesnumeriques.com/societe-numerique/la-direction-du-numerique-de-l-etat-quitte-windows-pour-linux-et-demande-aux-ministeres-de-preparer-leur-plan-n254157.html>

  <https://social.sciences.re/@maitredeconf/116380205680351088>

  La DINUM va-t-elle enclencher un mouvement de fond dans l'État français ?

  Suite à un séminaire interministériel pour « renforcer la dynamique collective de réduction des dépendances numériques extra-européennes », la DINUM a annoncé le passage à GNU/Linux sur les postes de travail de ses 250 agents et agentes.

  Elle coordonnera également un plan interministériel sur un ensemble d'usages et besoins informatiques.

  Lire le communiqué de l'April  

  <https://www.april.org/logiciel-libre-la-dinum-va-t-elle-enclencher-un-mouvement-de-fond-dans-l-etat-francais>  
  Souveraineté numérique : l’Etat débranche Windows et bascule vers Linux : <https://www.zdnet.fr/actualites/souverainete-numerique-letat-debranche-windows-25-millions-de-pc-basculent-vers-linux-493642.htm>  
  La France tourne le dos à Windows : <https://trustmyscience.com/france-tourne-dos-a-windows-mise-sur-linux-pour-saffranchir-technologies-americaines/>  
  Securix et Bureautix : le Linux de l’Etat pour remplacer Windows : <https://www.it-connect.fr/securix-et-bureautix-le-linux-de-etat-pour-remplacer-windows/>  
  L’administration étudie un poste de travail sous Linux : <https://www.zdnet.fr/blogs/l-esprit-libre/ladministration-etudie-un-poste-de-travail-sous-linux-une-circulaire-prone-lopen-source-quand-cest-pertinent-491866.htm>  
  La DINUM passe de Windows à Linux : <https://www.it-connect.fr/la-dinum-passe-de-windows-a-linux-les-autres-ministeres-doivent-preparer-leur-plan/>  
  Pourquoi l’Etat lance une offensive pour sortir des outils américain : <https://www.zdnet.fr/actualites/pourquoi-letat-lance-une-offensive-inedite-pour-sortir-des-outils-americains-et-reprendre-le-controle-de-ses-donnees-493462.htm>  
  L’Etat français lâche Windows pour Linux et veut se désensibiliser des outils américains : <https://www.clubic.com/actualite-608305-l-etat-francais-lache-windows-pour-linux-et-veut-se-desensibiliser-des-outils-americains.html>
- Basic Fit : La chaîne de salles de sport low cost a été victime d’un piratage qui concerne la France, la Belgique, l’Allemagne, l’Espagne, le Luxembourg et les Pays-Bas, où se trouve le siège social <https://www.lemonde.fr/pixels/article/2026/04/13/fuite-de-donnees-chez-basic-fit-un-million-de-membres-concernes-des-coordonnees-bancaires-piratees_6679702_4408996.html>
- C’est qui qui a fuité aujourd’hui ? C’est IAE Grenoble

  <https://bonjourlafuite.eu.org/#IAE%20Grenoble-2026-04-13>
- Des hackers exploitent une vulnérabilité ‘zero-day’ dans Adobe Reader depuis décembre (via BleepingComputer)

  Depuis décembre, des pirates informatiques exploitent une importante faille de sécurité non encore corrigée, dans Adobe Reader pour attaquer des utilisateurs, selon le chercheur Haifei Li. 

  <https://www.bleepingcomputer.com/news/security/hackers-exploiting-acrobat-reader-zero-day-flaw-since-december/>
- Someone Bought 30 WordPress Plugins and Planted a Backdoor in All of Them

  L: <https://anchor.host/someone-bought-30-wordpress-plugins-and-planted-a-backdoor-in-all-of-them/>

  C: <https://news.ycombinator.com/item?id=47755629>

  <https://hachyderm.io/@jenniferplusplus/116398353377090284>
- <https://www.computing.co.uk/news/2026/microsoft-locks-open-source-devs-out-of-their-accounts>

  <https://mastodon.social/@glynmoody/116375088667739180>

  In some rare(?) good news, the developers of VeraCrypt and WireGuard have both told me that they have regained access following their Microsoft account lockouts and can now release updates again.

  <https://mastodon.social/@zackwhittaker/116381523974054935>  
  Microsoft a bloqué les devs de Veracrypt et WireGuard : <https://www.it-connect.fr/microsoft-a-bloque-les-devs-de-veracrypt-et-wireguard-pourquoi/>
- <https://www.theverge.com/tech/908793/microsoft-devdiv-julia-liuson-resignation> It is interesting watching senior figures fleeing Microsoft in droves as they're eaten by the parasitic wasp larvae of AI. Everything must be sacrificed for AI, everything must be starved to feed AI.

  <https://furs.social/@Rycochet/116375702577450653>
- Microsoft exec suggests AI agents will need to buy software licenses, just like employees <https://www.businessinsider.com/microsoft-executive-suggests-ai-agents-buy-software-licenses-seats-2026-4>

  <https://social.coop/@cwebber/116399965854914021>
- problème, ce sont les humains, nouvel épisode. "Users preferred and trusted sycophantic AI responses, incentivizing AI developers to preserve sycophancy despite the risks." <https://www.science.org/doi/10.1126/science.aec8352>

  Et puis, c'est un joli mot, sycophante. (Mais l'article du Wiktionary francophone ne mentionne que l'ancien sens de délateur, pas le sens actuel de flatteur.)
- 80 % des français rencontrent des difficultés de navigation web sur leur #smartphone.

  Et devinez quelle est la toute première cause, loin devant les lenteurs de chargement ?

  ➜ l'intrusion publicitaire, bien sûr ! 

  #Merdification du Web, pistage des utilisateurs, pillage de données personnelles des utilisateurs, lenteurs de chargement, pollution visuelle, autant de raisons (et j'en oublie sans doute) de bloquer la pub ➜ #uBlockOrigin #PersonalDNSFilter

  #BloqueLaPub 

  <https://www.jaimelesstartups.fr/news/accessiway-publie-les-resultat-de-lenquete-les-freins-a-lusage-des-services-numeriques-sur-smartphone>

  <https://mamot.fr/@alainmi11/116390906489420328>
- « Constat alarmant » : la dématérialisation des services publics vire au fiasco selon la défenseure des droits dresse un 

  <https://www.humanite.fr/societe/defenseur-des-droits/constat-alarmant-la-dematerialisation-des-services-publics-vire-au-fiasco-selon-la-defenseure-des-droits-dresse-un>
- Red Hat prolonge le cycle de vie de son système d’exploitation jusqu’à 14 ans : <https://www.zdnet.fr/actualites/red-hat-prolonge-le-cycle-de-vie-de-son-systeme-dexploitation-493637.htm>

### Au cœur de la réunion

- On a une salle pour l’AG en dessous d’ACI à Gap. Merci Patrice et ACI.
- Page “[nous soutenir](https://foopgp.org/fr/about/join/)” mise à jour.
- bash-libs version 0.3.5 : 
  - *new function bl_json_from_var_ng(), to replace bl_json_from_var()*
  - *overwrite bl_json_from_var() by bl_json_from_var_ng(). It breaks backward compat, but probably no one (excpet me) use this function (as of today).*
  - fix missing dependency to scdaemon
  - *allow lowercase when entering country code*
  - bl_foopgp_update_input(): bugfix: date order
- Dji-viewer utilisable (à intégrer dans l’application djibian-onboarding) : <https://foopgp.org/dji-viewer/>
- Nouveau slide dans la présentation, pour expliquer l’un des objectifs du dji : réparer les inégalités qui se sont creusées par 50 ans de création monétaire inique et arbitraire : <https://foopgp.org/documents/fr/inegalites_patrimoine_zone_euro_1998_2022.html>
- La cotisation en ligne est enfin possible : 
  - Avec le graphique interactif de calcul 1ère cotisation en euros (€) ↔ gain en dji (Ɉ) : <https://api.foopgp.org/onboarding/contribution>
  - Sans le graphique mais avec la possibilité d’indiquer un parrain, ce qui vous permet par exemple d’offrir des djis pour vos proches, tout en recevant une commission : <https://donate.stripe.com/fZedSWfT74RP0sE288>
- François N’OUBLIE PAS D’ORGANISER UN PODCAST RADIO sur foopgp + djibian :-).
- Préparation de notre prochaine AG.
  - Il faudra renouveler la quasi totalité du CA
  - Rappeler qui n’est pas à jour de ses cotisations
    - Notons que la page de cotisation en ligne est en prod : <https://api.foopgp.org/onboarding/contribution>
  - Rappel statuts <https://foopgp.org/fr/about/status/>

#### Actions en cours

- Gestion communauté + Communication (y’en aura jamais assez)(merci Isore et Goyave)
- Prospection / gestion commerciale (2 en cours).
- Backend : Fonctionnalités pour consulter ses comptes en djis (Ɉ), faire des paiement en (Ɉ) (grâce à OpenPGP + yubikeys).
- Backend : génération de svg avec données OpenPGP ID à intégrer dans vos cartes de visite
- Collecte d’ordinateurs dotés de Windows obsolètes, pour y installer Djibian (le système qui nous respecte !).

#### (grosses) Actions terminées

- Clôture comptable 2025.
- Cf. “Au cœur de la réunion”.

###### AMF

- Nous sommes toujours dans le cadre des “exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme” de [l’article 4, titre II](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) .

### Agenda

- Dimanche 19 avril : AG foopgp.
- Samedi 25 avril à Gap : Débat + démonstration : monnaie libre, djibian, dji.
- 30 et 31 mai à Lyon : <https://www.jdll.org/>
- [… agenda du libre](https://www.agendadulibre.org)
