---
title: "2026 S10 Rapport Hebdomadaire"
lang: fr
date: 2026-03-03T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

***Présents :*** *Jean-Jacques B, Sébastien P, François R, Laurent C.*

### Ordre du jour prochaine visio mardi 10 mars 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on ne retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fournit (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 3 mars)

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

- La CFDT confirme un vol de données qui concerne aussi les ex-adhérents
  <https://next.ink/brief_article/la-cfdt-confirme-un-vol-de-donnees-qui-concerne-aussi-les-ex-adherents/>
  <https://piaille.fr/@mart1oeil/116103261344210047>
- Allez une dernière (pour ce vendredi) : nouvelle fuite de PayPal (paiements et transferts de fonds « sécurisés » en ligne), qui a duré 6 mois (!) suite à un bug logiciel. Volume : un petit nombre de personnes (d’après PayPal) de l’application de prêts (PPWC), types de DCP : non indiqués, sans doute au moins identités et moyens de contact. Voir <https://www.bleepingcomputer.com/news/security/paypal-discloses-data-breach-exposing-users-personal-information/>

  <https://framapiaf.org/@adwr/116103777840977095>
- Sur les dernières fuites de données indiquant notamment votre IBAN, déroulez ce fil bluesky pour découvrir une nouvelle manière de sérieusement vous emmerder <https://bsky.app/profile/stephpolyb.bsky.social/post/3mf7vqq6cek22>

  <https://mast.eu.org/@dascritch/116098066945410277>
- Mon mot de passe root est "admin". Au moins, comme ça, je ne serais pas piraté, l'attaquant ne croira jamais que c'est aussi simple.
  <https://frenchbreaches.com/blog/des-acces-a-des-portails-internes-de-la-gendarmerie-et-du-ministere-des-armees-diffuses>
  <https://mastodon.gougere.fr/@bortzmeyer/116099321913311479>
- De manière assez convaincante bien que sur un échantillon restreint (5 articles de conférence), une étude récente montre que le fait de fournir le code source avec un #dockerfile pour en obtenir une image Docker échoue à garantir une reproductibilité des résultats en quelques mois. En chargeant  les dernières versions de paquets issus de gestionnaires qui sont en soi non reproductibles, cette "recette" ne peut construire que des images qui varient assez vite avec le temps
  <https://dl.acm.org/doi/10.1145/3736731.3746146>
  <https://mastodon.social/@SO_UnivRennes/116099261330273727>
- Une spirale infernale boursière frappe tout ce qui a trait à l'IA : les craintes liées aux pertes d'emplois massives et aux investissements stériles effacent près de 1 500 milliards de dollars de capitalisation
  <https://www.developpez.net/forums/d2152703-20/general-developpement/algorithme-mathematiques/intelligence-artificielle/fuite-courriel-revele-projet-dystopique-base-fonctionnalite-search-party-cameras-ring/#post12114598>
  <https://piaille.fr/@siltaer/116120459262623971>
- La CAF : 
  - les données de contact relatives à la demande de RSA
  - matricule allocataire
  - nom et prénom(s) du bénéficiaire
  - nom et prénom(s) du responsable du dossier
  - numéro de sécurité sociale
  - date de la demande de RSA
  - date de début des droits et devoirs
  - numéro de téléphone
  - adresse électronique
  <https://bonjourlafuite.eu.org/#Caisse%20d'allocations%20familiales-2026-02-25>  
- Ah tiens c'est la DINum qui s'est faite poutrer cette fois-ci ! (En laissant sortir les données des bénéficiaires du RSA) 
  <https://kulturegeek.fr/news-347835/piratage-lie-caf-expose-donnees-beneficiaires-rsa>
  <https://mamot.fr/@klorydryk/116142122310218426>
- Le ministère de la Santé confirme que les "données administratives" de 15 millions de Français ont fuité, au lendemain des révélations de France Télévisions. Le hacker affirme avoir volé ces données de la société Cegedim, qui fournit 25 000 cabinets médicaux et 500 centres de santé en France en logiciels, selon une estimation de la CNIL. Il a déclaré avoir signalé les faits à l’entreprise, sans réaction… <https://www.franceinfo.fr/sante/le-ministere-de-la-sante-confirme-que-les-donnees-administratives-de-15-millions-de-francais-ont-fuite-au-lendemain-des-revelations-de-france-televisions_7833605.html#xtor=RSS-3-%5Blestitres%5D>
  <https://mastodon.social/@paul_denton/116142624635977411>
- "Putting a former Meta lobbyist in charge of rewriting Europe's privacy rules – the so-called GDPR – is unacceptable" <https://www.brusselstimes.com/1992574/ex-meta-lobbyist-put-in-charge-of-eus-digital-rules-tech-oligarchy-writing-its-own-rulebook>
  <https://eupolicy.social/@lobbyctrl_tech/116159625836549208>
- Un spécialiste de la vérification d'identité aurait laissé fuiter les données d’1 milliard de personnes... donc 52 millions de français (!).
  <https://sebsauvage.net/links/?6dfI7g>
  <https://framapiaf.org/@sebsauvage/116102082858582582>

- Microsoft lâche OpenAI : le divorce tech qui risque de tout faire basculer pour ChatGPT
  <https://www.clubic.com/actualite-600379-microsoft-lache-openai-le-divorce-tech-qui-risque-de-tout-faire-basculer-pour-chatgpt.html>

- Et aussi l'éclatement de la bulle «IA». C'est pour bientôt ?
  <https://mamot.fr/@Khrys/116074476708269173>

- États-Unis. “QuitGPT”, la campagne pour résilier son abonnement à ChatGPT, prend de l’ampleur 
  <https://www.courrierinternational.com/article/etats-unis-quitgpt-la-campagne-pour-resilier-son-abonnement-a-chatgpt-prend-de-l-ampleur_240494>

- Lancée sur la plateforme Reddit, une initiative visant à encourager les usagers de ChatGPT à résilier leur abonnement à cet outil d’intelligence artificielle prend de l’ampleur. Le média américain “MIT Technology Review” raconte les motivations de ceux qui suivent ce mouvement, principalement pour s’opposer aux politiques de Trump.
  <https://piaille.fr/@siltaer/116125196007808989>
- Jean-Baptiste Kempf menace de quitter la France : le créateur de VLC tacle Gérald Darmanin
  <https://www.frandroid.com/actualites-generales/2986099_jean-baptiste-kempf-menace-de-quitter-la-france-le-createur-de-vlc-tacle-gerald-darmanin>
  <https://mamot.fr/@Steve12L/116119754180977195>
- Une collaboration entre Ericson et Apple autour de la 6G : <https://www.distributique.com/actualites/lire-une-etroite-collaboration-entre-ericsson-et-apple-autour-de-la-6g-37027.html>
- "Lunettes connectées : des scènes d’intimité envoyées aux sous-traitants kényans de Meta"  
  <https://next.ink/227179/lunettes-connectees-des-scenes-dintimite-envoyees-aux-sous-traitants-kenyans-de-meta/>
  (Purin de saloperies d'objets connectés de merde.)
  <https://framapiaf.org/@sebsauvage/116165669674584923>
- Le Medef mise sur une IA souveraine : <https://www.linformaticien.com/magazine/tendances/941-ia/64542-le-medef-mise-sur-une-ia-souveraine.html>
- Amazon investi 33.7 Md€ en Espagne : <https://www.linformaticien.com/magazine/biz-it/64540-amazon-investit-33-7-mds-en-espagne.html>

### Au cœur de la réunion

- Grosse participation à l’atelier du 17 février à Échirolles. Gros bug pour la moitié des participants (résolu depuis) mais retour très positifs parmi l’autre moitié. 4 yubikeys vendues.
- 3 nouveaux participants à l’atelier de samedi 28, 1 djibian installé et 2 yubikeys vendus.
- 3 prospections en cours.
- Nextcloud maj → version 32 (Merci Fred 😘 ).
- Rajout de https pour le dépots de paquets + iso <https://djibian.foopgp.org>
- le vieux kimsuffi de Jean-Jacques a été réinstallé pour l’association, en debian 13 puis migré vers djibian. 

#### Actions à mener (TODO list)

- Urgent: Appel à cotisation.
- Génération des relevés de compte à coller ou glisser dans nos carnets d’échanges.
- Inscription aux JDLL les 30 et 31 mai à Lyon.

#### Actions en cours

- Gestion communauté + Communication (y’en aura jamais assez)(merci Isore)
- Prospection et gestion commerciales.
- Refonte processus cotisations via stripe (CB/mastercard/visa) pour appel à cotisation. 
- R&D key server pour implémenter nos politiques de gestion des clés publiques : hockeypuck, onak, ou bien encore, pourquoi pas refaire notre propre serveur de clé à partir du digne successeur de thttpd (<https://troglobit.com/projects/merecat/>) , comme je (JJ) l'avais fait pour le projet OpenUDC (<https://github.com/Open-UDC/thttpgpd>) ! ?
- Frontend: gestion des emails ou avatars dans nos identités numériques (ajout, suppression)
- Backend: Fonctionnalités pour consulter ses comptes en djis (Ɉ), faire des paiement en (Ɉ) (grâce à OpenPGP + yubikeys).
- Backend: generation de svg avec données OpenPGP ID à intégrer dans vos cartes de visite
- Site web : nouveau site, axé sur Djibian. Moins technique et plus commercial.
- Collecte d’ordinateurs dotés de Windows obsolètes, pour y installer Djibian (le système qui nous respecte !).
- Clôture comptable 2025.

#### (grosses) Actions terminées

- update djibian-gpgcponfig.
- Frontend: gestion de la certification
- refactoring de l’outil de génération de l’ISO → génération plus propre et plus rapide.

###### AMF

- Nous sommes toujours dans le cadre des “exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme” de [l’article 4, titre II](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) .

### Agenda

- 10 mars 19h30 à Gap : <https://www.linux-alpes.org/soiree-linux-alpes-a-gap-le-10-mars/>
- Samedi 28 mars après-midi : 2nd atelier grand public autour de Gap (prendre en main djibian GNU/Linux + yubikeys OpenPGP) <https://foopgp.org/fr/event/2026-02-28-atelier-djiian/>
- 30 et 31 mai à Lyon : <https://www.jdll.org/>
- [… agenda du libre](https://www.agendadulibre.org)
