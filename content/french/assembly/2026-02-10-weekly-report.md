---
title: "2026 S07 Rapport Hebdomadaire"
lang: fr
date: 2026-02-10T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Attention: pas de conseil le [mardi 17 février](https://alposs.fr/), [JJ et piseb rentrant des rencontres d'Échirolles](https://pretalx.com/alposs-2026/talk/KTNMTA/).*

---

***Présents :*** *Jean-Jacques B, Sébastien P, François R, Laurent C.*

### Ordre du jour prochaine visio mardi 24 février 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on ne retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fournit (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- retour sur les rencontres et l'atelier du 17 février.
- préparation de l'atelier du Samedi 28 février, de 14h à 18h à Tallard.
- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 10 février)

- Retour sur le FOSDEM à Bruxelles (François R)
- Revue de presse.
- Point sur les participations et démonstrations publiques.
- Communication.
- Actions réalisés, en cours, à prévoir.

### Stingynalty

**Graphique en 3 dimensions** -> <https://www.math3d.org/xzuclzIbuZ>

Pour février, en appliquant la formule du [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) , **j = log₂(d+1) / *stingynalty*** :

```
$ bl-foopgp --verbose giftarray --with-header --max 11
bl-foopgp: Info: stingynalty=1.10489557718673078682
|          EUR |          DJI |
|--------------|--------------|
|       1.00 € |   90.5062 cɈ |
|       1.16 € |  100.0000 cɈ |
|       2.00 € |  143.4490 cɈ |
|       3.63 € |  200.0000 cɈ |
|       5.00 € |  233.9553 cɈ |
|       8.95 € |  300.0000 cɈ |
|      10.00 € |  313.1003 cɈ |
|      20.00 € |  397.5323 cɈ |
|      20.41 € |  400.0000 cɈ |
|      45.03 € |  500.0000 cɈ |
|      50.00 € |  513.3901 cɈ |
|      98.01 € |  600.0000 cɈ |
|     100.00 € |  602.6100 cɈ |
|     200.00 € |  692.4683 cɈ |
|     211.94 € |  700.0000 cɈ |
|     456.99 € |  800.0000 cɈ |
|     500.00 € |  811.7207 cɈ |
|     984.06 € |  900.0000 cɈ |
|    1000.00 € |  902.0966 cɈ |
|    2000.00 € |  992.5377 cɈ |
|    2117.69 € | 1000.0000 cɈ |
|    4555.95 € | 1100.0000 cɈ |
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

- LibreOffice supporte enfin Markdown et personne n'en parle (c'est pourtant énorme) 

  <https://goodtech.info/libreoffice-26-2-markdown-support-revolution/>

  <https://framapiaf.org/@journalduhacker/116017988057794654>

  #LibreOffice vient de sortir sa version 26.2 avec plusieurs choses intéressantes :

  \- Une nouvelle fois gain général de performances

  \- Le multi-utilisateurs pour Base

  \- Compatibilité accrue XLSX et import sans limite de taille pour Calc

  \- Tri "naturel" également amélioré

  \- Meilleur gestion des conflits, nouveaux alignements ...

  \- ... et surtout l'import/export en #Markdown pour Writer !

  Liste complète des évolutions dans le lien suivant 

  <https://wiki.documentfoundation.org/ReleaseNotes/26.2/fr>

  <https://framapiaf.org/@danslerush/116012497705086457>
- [**Les cornucopiens sont parmi nous ! Mais qui sont-ils ?**](https://theconversation.com/les-cornucopiens-sont-parmi-nous-mais-qui-sont-ils-210481)
- IA: 285 milliards  de dollars partis en fumée : comment Anthropic est en train de tuer le SaaS (et les juniors) : (vidéo 34 minutes) : <https://www.youtube.com/watch?v=Nd2pavAegx4>
- L'effet Cantillon, pourquoi les riches restent riches (vidéo en anglais, 8 minutes) : <https://www.youtube.com/watch?v=th8mH8ywdTY>
- Sélection du nouvel opérateur de nos données de santé : évincé, Microsoft n’a pas dit son dernier mot : <https://www.humanite.fr/societe/assurance-maladie/selection-du-nouvel-operateur-de-nos-donnees-de-sante-evince-microsoft-na-pas-dit-son-dernier-mot>
- fuites : Commission Européenne

  <https://bonjourlafuite.eu.org/#Commission%20Europ%C3%A9enne-2026-02-09>
- fuites : La Carte Avantage Jeune

  <https://bonjourlafuite.eu.org/#La%20Carte%20Avantage%20Jeune-2026-02-09>
- <https://discord.com/press-releases/discord-launches-teen-by-default-settings-globally>

  <https://www.theverge.com/tech/875309/discord-age-verification-global-roll-out>

  <https://mastodon.social/@jeremyjackson/116041162828794654>
- <https://www.lemonde.fr/pixels/article/2026/02/03/les-locaux-francais-de-x-perquisitionnes-dans-le-cadre-d-une-enquete-pour-cybercriminalite_6665203_4408996.html>

  <https://mstdn.social/@slpng_giants_fr/116006262143667661>
- Plus d’un tiers des Français utilise l’IA générative tous les jours - Next

  <https://next.ink/223463/plus-dun-tiers-des-francais-utilise-lia-generative-tous-les-jours/>

  Retrouvez toute notre veille sur l'IA sur <https://curation.framamia.org>
- STMicroelectronics renforce son partenariat avec AWS (donc ... Amazon) : <https://www.linformaticien.com/magazine/tendances/941-ia/64449-stmicroelectronics-renforce-son-partenariat-strategique-avec-aws.html>
- Capgemini étend son partenariat avec ... Google Cloud : <https://www.linformaticien.com/magazine/biz-it/64444-capgemini-etend-son-partenariat-avec-google-cloud.html>
- Deutsche Telecom inaugure son industrial IA factory : <https://www.linformaticien.com/magazine/tendances/941-ia/64448-deutsche-telekom-inaugure-son-industrial-ai-factory-a-munich.html>
- Le Bachelor IA de l'Université de Troyes reconnu par la Commission des Titres d'Ingénieur : <https://www.linformaticien.com/magazine/tendances/941-ia/64443-le-bachelor-ia-de-l-utt-reconnu-cti.html>
- Des doubleurs français obtiennent la suppression de leurs voix clonées par une plateforme américaine

  <https://www.telerama.fr/cinema/des-doubleurs-francais-obtiennent-la-suppression-de-leurs-voix-clonees-par-une-plateforme-americaine-7029610.php>

  <https://mastodon.tetaneutral.net/@Natouille/116029312586502843>
- Nice trick:

  Some #maths #researchers wanted to test how good #LLMs would perform in finding actually new solutions to research questions. So they took some questions that they had recently solved themselves, but where they hadn't published the results, yet, so the LLM wouldn't be able to find the solution online, yet.

  Much to the surprise of no one, the #AI failed, badly.

  <https://www.heise.de/news/Kann-KI-neue-Mathe-Erkenntnisse-liefern-Spitzenforscher-machen-den-Test-11170432.html>

  <https://infosec.exchange/@oots/116041725117450946>
- Debian verrouille son infrastructure face à l’appétit insatiable des bots d’IA

  <https://www.it-connect.fr/debian-verrouille-son-infrastructure-face-a-appetit-insatiable-des-bots-ia/>

  <https://framapiaf.org/@journalduhacker/116040599197456178>
- AI conferences restrict the use of AI in conference papers. My kind of humor .

  <https://tldr.nettime.org/@festal/116003081545335631>
- La schadenfreude du jour : le krach du bitcoin.

  <https://www.lesechos.fr/finance-marches/marches-financiers/la-chute-des-cryptos-fait-tanguer-le-plus-grand-detenteur-mondial-de-bitcoins-2214394>

  <https://mastodon.social/@Zestryon/116024189918498982>
- BMW qui invente des vis avec leur logo sur la tête pour embêter les réparateurs. <https://fr.ifixit.com/News/115528/bmws-newest-innovation-is-a-logo-shaped-middle-finger-to-right-to-repair>
- “Ça me grille le cerveau” : des écoliers français ont renoncé dix jours aux écrans

  <https://www.courrierinternational.com/reveil/2026-02-07#article-4>

  <https://mstdn.fr/@Grrr/116040076330536317>
- "Pour ne plus être dépendante des solutions logicielles états-uniennes et acquérir une véritable souveraineté numérique, la Ville de Lyon s'est engagée dans une transformation majeure de ses outils numériques."

   <https://www.lyon.fr/actualite/action-municipale/la-ville-de-lyon-renforce-sa-souverainete-numerique>

  <https://mamot.fr/@bearstech/116041917389782312>
- NIS 2 bientôt présenté à l'Assemblée Nationale : <https://www.linformaticien.com/magazine/cybersecurite/64431-nis-2-bientot-au-menu-de-l-assemblee-nationale.html>
- Nutamix disponible sur Bare Metal d'OVH qualifiée SecNumCloud : <https://www.linformaticien.com/magazine/infra/64446-nutanix-disponible-sur-secnumcloud.html>

### Au cœur de la réunion

- Encore une vidéo de Maël : <https://foopgp.org/fr/blog/2026-02-10-djibian-tour/> 
- Un journaliste est passé dans nos bureaux. On attend notre premier article dans le dauphiné libéré.
- Démo **certification**  au niveau du frontend (pour l'atelier du 17 février).


- Il y a encore des places pour l'atelier du 17 février : <https://framaforms.org/atelier-technique-reprenez-le-controle-sur-vos-donnees-avec-les-cles-de-securite-openpgp-1769177764>
- Age de quelques développeurs les plus indispensables pour tenir et maintenir Internet et notre monde aujourd'hui numérique :
  - Linus Torvald (Linux) : 28 décembre 1969 (56 ans)
  - Chet Ramey (Bash) : 1965 (\~ 60 ans)
  - Werner Koch (GnuPG) : July 11, 1961 (age 64)
- Gros effort sur la communication en cours ; **l'heure des démos et de la vente de support/formation est venue**. On manque de ressources (temps) et de talents ("community manager") pour propager cette bonne parole !
  - Par exemple notre page linkedIn : <https://www.linkedin.com/company/foopgp>

#### Actions à mener (TODO list)

- Urgent: Appel à cotisation.
- Urgent: Gestion de nos communautés, communication.
- Urgent: Prospection et gestion commerciales.
- Génération des relevés de compte à coller ou glisser dans nos carnets d’échanges.

#### Actions en cours

- Communication (manque de ressources)
- R&D key server pour implémenter nos politiques de gestion des clés publiques : hockeypuck, onak, ou bien encore, pourquoi pas refaire notre propre serveur de clé à partir du digne successeur de thttpd (<https://troglobit.com/projects/merecat/>) , comme je (JJ) l'avais fait pour le projet OpenUDC (<https://github.com/Open-UDC/thttpgpd>) ! ?
- Frontend: gestion des emails ou avatars dans nos identités numériques (ajout, suppression)
- Frontend: gestion de la certification
- Backend: Traductions (françaises)
- Backend: Fonctionnalités pour consulter ses comptes en djis (Ɉ), faire des paiement en (Ɉ) (grâce à OpenPGP + yubikeys).
- Backend: generation de svg avec données OpenPGP ID à intégrer dans vos cartes de visite
- Site web : nouveau site, axé sur Djibian. Moins technique et plus commercial.
- Collecte d’ordinateurs dotés de Windows obsolètes, pour y installer Djibian (le système qui nous respecte !).
- Clôture comptable 2025.

#### (grosses) Actions terminées

- update djibian-gpgcponfig.
- Backend: gestion de la certification
- Mise au propre de L'ISO fournit

###### AMF

- Nous sommes toujours dans le cadre des “exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme” de [l’article 4, titre II](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) .

### Agenda

- mardi 17 février 2026 : <https://alposs.fr/> à Échirolles - **on fera une démo :** <https://pretalx.com/alposs-2026/talk/KTNMTA/>
- Samedi 28 février après-midi : premier atelier grand public autour de Gap (prendre en main djibian GNU/Linux + yubikeys OpenPGP)
- [… agenda du libre](https://www.agendadulibre.org)
