---
title: "2026 S15 Rapport Hebdomadaire"
lang: fr
date: 2026-04-07T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

*Pour adhérer à l'association et générer vos premiers djis (Ɉ) : <https://foopgp.org/fr/about/join/>*

---

***Présents :*** *Jean-Jacques B, François R, Laurent C.*

### Ordre du jour prochaine visio mardi 14 avril 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on ne retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fournit (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Présentation nouvel outil : visualiseur de djis : <https://foopgp.org/dji-viewer/> (merci Didier).
- Présentation nouvel page dans [le support de présentation](https://foopgp.org/documents/fr/20260410-presentation-djibian.pdf) : [Inégalités en 2022 et comparaison depuis 1998](https://foopgp.org/documents/fr/inegalites_patrimoine_zone_euro_1998_2022.html)
- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 7 avril)

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

- Cybermalveillance.gouv.fr publie son rapport 2025 : <https://www.cybermalveillance.gouv.fr/tous-nos-contenus/actualites/rapport-activite-2025>
- Opération de sensibilisation au hameçonnage : <https://www.cybermalveillance.gouv.fr/tous-nos-contenus/actualites/action-prevention-cactus-2026>
- Cybersécurité et IA : l’inquiétude monte chez les décideurs : <https://www.linformaticien.com/magazine/cybersecurite/64676-cybersecurite-et-ia-l-inquietude-monte-chez-les-decideurs.html>
- Orange Business intègre la détection des deepfakes : <https://www.linformaticien.com/magazine/cybersecurite/64683-orange-business-integre-la-detection-de-deepfakes.html>
- Docaposte veut développer l’Indice de Résilience Numérique (IRN) : <https://www.linformaticien.com/magazine/cybersecurite/64687-docaposte-veut-developper-l-irn.html>
- L’État finalise le rachat de Bull : <https://www.linformaticien.com/magazine/infra/64679-l-etat-finalise-le-rachat-de-bull.html>
- L’État se tourne résolument vers le cloud : <https://www.linformaticien.com/magazine/cloud/64673-l-etat-se-tourne-resolument-vers-le-cloud.html>
- La France renforce sa coopération avec Québec autour de la Souveraineté Numérique : <https://www.linformaticien.com/magazine/cybersecurite/64687-docaposte-veut-developper-l-irn.html>
- Le portail Europa de la Commission Européenne victime d’une cyberattaque : <https://www.linformaticien.com/magazine/cybersecurite/64669-le-portail-europa-de-la-commission-europeenne-cible-d-une-cyberattaque.html>
- Le chiffrement est possible sur l’ADN : <https://www.linformaticien.com/magazine/cybersecurite/64678-le-chiffrement-est-possible-sur-l-adn.html>  (Ça sent gros le poisson d’avril ! ;-) <https://www.youtube.com/watch?v=M1U8zkYX1II> )
- Nous signons avec #HalteALObsolescenceProgrammee et une coalition d'associations contre l'obsolescence une tribune dans le monde sur l'arrêt des réseaux 2G / 3G et les conséquences sociales et environnementales de cette obsolescence voulue par des opérateurs télécoms et poussée par des entreprises à qui elle profite. Nous exigeons que nos réseaux soient protégés de ces dynamiques de profit, et soient enfin gérés comme des communs numériques !

  <https://www.lemonde.fr/article-offert/e947ab7a6cf6-6675608/arret-de-la-2g-et-de-la-3g-nous-exigeons-des-garde-fous>

  <https://mamot.fr/@LaQuadrature/116324644583744593>
- Proton lance une alternative à Google Workspace : <https://www.linformaticien.com/magazine/logiciel/64680-proton-lance-une-alternative-a-google-workspace.html>
- L'affaire OnlyOffice vs Euro-Office devient un cas d'école et pourrait clarifier l'AGPLv3

  \> Le conflit entre OnlyOffice et le consortium Euro-Office soulève une question que le monde du logiciel libre n'a jamais vraiment tranchée. Jusqu'où un auteur peut-il imposer ses conditions dans une licence open source sans créer une contradiction interne ?

  <https://www.clubic.com/actualite-607399-l-affaire-onlyoffice-vs-euro-office-devient-un-cas-d-ecole-et-pourrait-clarifier-l-agplv3.html>

  <https://framapiaf.org/@marnic/116353237174731967>
- TDF ejects its core developers?!

  In an exciting episode of the ongoing saga of The Document Foundation (TDF), their Membership Committee has decided that in order to grow the community and accelerate its mission – it would be fitting to eject from membership all Collabora staff and partners.

  This is indeed April the 1st, but sadly this really is a summary of where we are now at; a double April Fool as it were.

  <https://www.collaboraonline.com/blog/tdf-ejects-its-core-developers/>

  Ideally, we would have preferred to avoid this post. However, the articles and comments published in response to Collabora’s and Michael Meeks’ biased posts compel us to provide this background information on the events that led to the current situation.

  <https://blog.documentfoundation.org/blog/2026/04/05/lets-put-an-end-to-the-speculation/>
- transport.data.gouv.fr/ une des principales "startup d'État",  qui permet aux collectivités de diffuser à tous les acteurs leurs horaires de transports en commun, sur le point de fermer (mise en "maintenance", on sait ce que ça veut dire...). L'abandon d'un service public aussi crucial est grave et en dit long sur l'incapacité de l'État à pérenniser des services impactants et utiles. 

  <https://teamopendata.org/t/passage-en-maintenance-de-transport-data-gouv-fr/4891>

  <https://framapiaf.org/@Olivierb/116324873620841398>

### Au cœur de la réunion

- On a une salle pour l’AG en dessous d’ACI à Gap. Merci Patrice et ACI.
- On a un nouveau laptop - Merci Fred Z.
- La quasi-totalité de nos paquets sont fonctionnels tel quel sur Linux Mint (et donc à priori sur Ubuntu).
- Il manque cependant de tirer la dépendance à scdaemon pour faire fonctionner les yubikeys.
- Il faudrait se rapprocher de l’association [France paiements](https://www.francepaymentsforum.eu/), à laquelle sont membres quelques entreprises travaillant sur l’identité numérique européenne, par exemple France Titres (ANTS), afin de leur vendre OpenPGP ID. La solution la plus ouverte, et la seule décentralisée (qui respecte donc les citoyens et présente moins de risque de glissement vers une dystopie totalitaire).
- L’estimation de la valeur future du dji (sous condition d’atteindre en nombre d’adhérent un échantillon significatif d’acteur économique) a été recalculé :[ 1 Ɉ > 2369.31 €](https://foopgp.org/fr/about/join/)
- La cotisation en ligne est enfin possible : 
  - Avec le graphique interactif de calcul 1ère cotisation en euros (€) ↔ gain en dji (Ɉ) : <https://api.foopgp.org/onboarding/contribution>
  - Sans le graphique mais avec la possibilité d’indiquer un parrain, ce qui vous permet par exemple d’offrir des djis pour vos proches, tout en recevant une commission : <https://donate.stripe.com/fZedSWfT74RP0sE288>
- François N’OUBLIE PAS D’ORGANISER UN PODCAST RADIO sur foopgp + djibian :-).
- Préparation de notre prochaine AG.
  - Il faudra renouveler la quasi totalité du CA
  - Rappeler qui n’est pas à jour de ses cotisations
    - Notons que la page de cotisation en ligne est bientôt en prod : <https://api.foopgp.org/onboarding/contribution>
  - Rappel statuts <https://foopgp.org/fr/about/status/>

#### Actions en cours

- Gestion communauté + Communication (y’en aura jamais assez)(merci Isore et Goyave)
- Prospection / gestion commerciale (3 en cours).
- Frontend : gestion des emails ou avatars dans nos identités numériques (ajout, suppression)
- Backend : Fonctionnalités pour consulter ses comptes en djis (Ɉ), faire des paiement en (Ɉ) (grâce à OpenPGP + yubikeys).
- Backend : génération de svg avec données OpenPGP ID à intégrer dans vos cartes de visite
- Collecte d’ordinateurs dotés de Windows obsolètes, pour y installer Djibian (le système qui nous respecte !).
- Clôture comptable 2025.

#### (grosses) Actions terminées

Cf. “Au cœur de la réunion”.

###### AMF

- Nous sommes toujours dans le cadre des “exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme” de [l’article 4, titre II](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) .

### Agenda

- Dimanche 19 avril : AG foopgp.
- Samedi 25 avril à Gap : Débat + démonstration : monnaie libre, djibian, dji.
- 30 et 31 mai à Lyon : <https://www.jdll.org/>
- [… agenda du libre](https://www.agendadulibre.org)
