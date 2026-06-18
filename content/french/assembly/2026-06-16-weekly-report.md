---
title: "2026 S25 Rapport Hebdomadaire"
lang: fr
date: 2026-06-16T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *Jean-Jacques B, François R, Laurent C.*

### Ordre du jour prochaine visio mardi 23 juin 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on ne retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fourni (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 16 juin)

- Campagne de financement de juin → <https://www.helloasso.com/associations/friends-of-openpgp-foopgp/collectes/juin-2>
- Revue de presse.
- Point sur les participations et démonstrations publiques.
- Communication.
- Actions réalisés, en cours, à prévoir.

### Stingynalty

Pour juin : ***stingynalty =* 1.12715977620539174126**

**Simulateur de cotisation initiale** (2 dimensions) → <https://foopgp.org/djis-simulator/?lang=fr>

**Graphique en 3 dimensions** → <https://www.math3d.org/xzuclzIbuZ>

*Rappel :*  si vous avez déjà cotisé, il faut appliquer la formule :

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

*Au 9 mai 2026, calculés avec nos nouveaux outils* `bl-foopgp` *(*`inputs` *pour la vue d’ensemble,* `contribs --resume` *pour le sous-ensemble certifié) appliqués à l’instance* `uetree-djis-by-email/`*.*

- Total contributors : 46 - Total certified members : 13 / 46
- Total contribs : 86 - Total certified contribs : 36 / 86
- Total contribution : 61 494,10 € - Total certified contribution : 42 485,47 € / 61 494,10 €
- Total certified created : 99,733737 Ɉ — *seuls  les adhérents dont l’identité OpenPGP est certifiée par la Toile de  Confiance voient leurs djis effectivement créés et utilisables.*

*Aux adhérents pas encore certifiés : venez nous rencontrer lors d’un de nos prochains ateliers ([cf. agenda ci-dessous](https://foopgp.org/fr/assembly/2026-05-26-weekly-report/#agenda) ) pour finaliser la certification de votre identité OpenPGP, débloquer  la création de vos djis et pouvoir les échanger au sein de  l’association.*

### Revue de presse

- Pour changer, encore un piratage de données personnelles dans un service de l’état : <https://www.frandroid.com/culture-tech/securite-applications/3143397_encore-une-fuite-massive-de-donnee-de-letat-francais-un-demi-million-de-personnes-concernees>
- Sous l’ordre du Président Trump, Antropic débranche ses modèles Fable 5 et Mytho 5 : <https://www.linformaticien.com/magazine/tendances/941-ia/64965-sous-la-pression-de-trump-anthropic-debranche-ses-modeles.html>
- Les pays sous sanction des USA pourraient ne plus pouvoir utiliser les services de certificats de Let’s Encrypt : <https://www.frandroid.com/culture-tech/web/3133725_la-navigation-securisee-est-elle-en-danger-lets-encrypt-prive-une-partie-de-la-planete-de-https>
- Derrière la loi « simplification », l’offensive des Big Tech et du lobby des datacenters : <https://multinationales.org/fr/enquetes/profits-et-pertes-derriere-le-boom-des-datacenters-en-france/derriere-la-loi-simplification-l-offensive-des-big-tech-et-du-lobby-des>
- Comment agir en entreprise pour tendre vers une société postcapitaliste : <https://bonpote.com/comment-agir-en-entreprise-pour-tendre-vers-une-societe-postcapitaliste/>
- "L'IA de BMW se plante et fait une grosse offre de reprise à un client, le concessionnaire est contraint d'accepter"

  <https://www.lesnumeriques.com/intelligence-artificielle/l-ia-de-bmw-se-plante-et-fait-une-grosse-offre-de-reprise-a-un-client-le-concessionnaire-est-contraint-d-accepter-n257500.html>

  <https://mastodon.gougere.fr/@PierreCol/116754263042576412>
- Le logiciel libre l’emporte : Polytechnique dit non à Microsoft et déclenche une vague de rébellion dans les universités : <https://www.lesnumeriques.com/informatique/le-logiciel-libre-l-emporte-polytechnique-dit-non-a-microsoft-et-declenche-une-vague-de-rebellion-dans-les-universites-n243905.html>
- La nouvelle suite EuroOffice fait déjà polémique sur son format par défaut : <https://www.frandroid.com/culture-tech/politique/3133595_eurooffice-arrive-pour-detroner-microsoft-en-europe-et-libreoffice-laccuse-deja-de-faire-le-jeu-de-redmond>
- Le projet cURL prend des vacances des failles. Pendant le "cURL summer of bliss", jusqu'à fin juillet, aucun rapport de vulnérabilité ne sera traité, pour permettre de traiter d'autres bugs, ou juste se reposer. Et la libexpat fait de même.

  <https://daniel.haxx.se/blog/2026/06/15/curl-summer-of-bliss/>

  <https://github.com/libexpat/libexpat/issues/1277>

### Au cœur de la réunion

- Campagne Hello Asso en cours : <https://www.helloasso.com/associations/friends-of-openpgp-foopgp/collectes/juin-2>
- Nouvelle page présentation djibian  <https://foopgp.org/fr/solutions/djibian/> 
- JJ est bien arrivé à Vannes pour 3 conférences + ateliers organisées par Aveline
  - <https://www.coopdesvenetes.bzh/>
  - …
- Production de la semaine : 
  - Nouvelle ISO : <https://iso.foopgp.org/djibian/latest/>
  - bash-libs → 0.3.10-1 : 
    -  bl-qrkey: new action token_retries, to map SW 6982/6983 to return 0xC0/C1/C2 in  
          change_token_code
    - *drop trailing dots in OPTIONS descriptions + ASCII '...' → '…' (U+2026)*
    - i18n: refresh fr + es .po after string cohérence pass
  - hugowebsite : 
    - svg: convert 6 logos text → path (Ɉ + foopgp wordmark)
    - add more intern cross-links
- Signatures sous djibian de fichiers Open Document avec libreoffice : Expérience utilisateur  OpenPGP + YubiKey très fluide. (Merci Aveline).
- Génération d’un fichier .vcf contenant tous les adhérents certifiés

### Agenda

- 17 juin : Conférences + Ateliers près de Vannes (Bretagne) : <https://foopgp.org/fr/event/2026-06-17-atelier-djiian/>
- Samedi 27 Juin : présentation + atelier à la Mairie de Pelleautier : <https://foopgp.org/fr/event/2026-06-27-atelier-djiian/>
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/)
- 9 et 10 décembre 2026 : [OSXP Paris- Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)