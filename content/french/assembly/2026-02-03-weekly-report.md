---
title: "2026 S06 Rapport Hebdomadaire"
lang: fr
date: 2026-02-03T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

***Présents :*** *Jean-Jacques B, Sébastien P, François R.*

***Excusé :**** Laurent C.*

### Ordre du jour prochaine visio mardi 10 février 2026 à 21h sur JITSI : <https://meet.jit.si/foopgp>

*Note : Si problème, on ne retrouve sur notre salon NextCloud : [https://cloud.foopgp.org/call/yfomgu8q](https://cloud.foopgp.org/call/yfomgu8q) (qui fonctionne à nouveau, quoique toujours un peu sous dimensionné).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 3 février)

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
|       1.00 € |   9.05062 dɈ |
|       1.16 € |  10.00000 dɈ |
|       2.00 € |  14.34490 dɈ |
|       3.63 € |  20.00000 dɈ |
|       5.00 € |  23.39553 dɈ |
|       8.95 € |  30.00000 dɈ |
|      10.00 € |  31.31003 dɈ |
|      20.00 € |  39.75323 dɈ |
|      20.41 € |  40.00000 dɈ |
|      45.03 € |  50.00000 dɈ |
|      50.00 € |  51.33901 dɈ |
|      98.01 € |  60.00000 dɈ |
|     100.00 € |  60.26100 dɈ |
|     200.00 € |  69.24683 dɈ |
|     211.94 € |  70.00000 dɈ |
|     456.99 € |  80.00000 dɈ |
|     500.00 € |  81.17207 dɈ |
|     984.06 € |  90.00000 dɈ |
|    1000.00 € |  90.20966 dɈ |
|    2000.00 € |  99.25377 dɈ |
|    2117.69 € | 100.00000 dɈ |
|    4555.95 € | 110.00000 dɈ |
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

- France 24 produit une série de reportages et interviews pour aider à prendre conscience et à aller vers la souveraineté numérique :
  - <https://www.france24.com/fr/%C3%A9co-tech/20260129-souverainet%C3%A9-num%C3%A9rique-1-3-menace-donald-trump-r%C3%A9veil-pays-europ%C3%A9ens>
  - <https://www.france24.com/fr/%C3%A9co-tech/20260130-souverainete-numerique-entreprise-dependance-gafam-europe-alternatives>
  - <https://www.france24.com/fr/%C3%A9co-tech/20260131-souverainet%C3%A9-num%C3%A9rique-3-3-2-les-citoyens-europ%C3%A9ens-pris-au-pi%C3%A8ge-des-big-tech-am%C3%A9ricaines>
- Du coté de l'ANSSI :
  - <https://messervices.cyber.gouv.fr/guides/ANSSI-views-on-crypto-agility>
  - <https://cyber.gouv.fr/actualites/fiabiliser-la-v%C3%A9rification-didentit%C3%A9-%C3%A0-distance-avec-leuropean-digital-identity-wallet/>
- La Fédération nationale des chasseurs porte plainte après avoir subi une cyberattaque - ICI

  <https://www.francebleu.fr/infos/faits-divers-justice/la-federation-nationale-des-chasseurs-porte-plainte-apres-avoir-subi-une-cyberattaque-1933480>
- 149M Logins and Passwords Exposed Online Including Financial Accounts, Instagram, Facebook, Roblox, Dating Sites, and More.

  <https://www.expressvpn.com/blog/149m-infostealer-data-exposed/>

  <https://mamot.fr/@Steve12L/115951376663657497>
- Match Group, the owner of multiple popular online dating services, Tinder, [Match.com](http://Match.com), Meetic, OkCupid, and Hinge, confirmed a cybersecurity incident that compromised user data.

  <https://www.bleepingcomputer.com/news/security/match-group-breach-exposes-data-from-hinge-tinder-okcupid-and-match/>
- France Travail écope de 5 millions d’euros d’amende pour sa gigantesque fuite de données - Next | #francetravail #cybersécurité #amende #cnil <https://next.ink/221664/france-travail-ecope-de-5-millions-deuros-damende-pour-sa-gigantesque-fuite-de-donnees/>

  <https://mastodon.social/@alatitude77/115979117387530160>
- Capgemini met en vente sa filiale travaillant pour la police de l’immigration américaine, l’ICE

  <https://www.lemonde.fr/economie/article/2026/02/01/capgemini-met-en-vente-sa-filiale-travaillant-pour-la-police-de-l-immigration-americaine-l-ice_6664972_3234.html>

  <https://mastodon.tetaneutral.net/@Natouille/115995540003332674>

  <https://www.mediapart.fr/journal/economie-et-social/290126/le-geant-de-l-informatique-capgemini-conspue-de-toute-part-pour-ses-liens-avec-la-sinistre-ice>

  <https://framapiaf.org/@metaphys/115980816203275770>
- États-Unis : après Capgemini, les groupes français Thalès et Parrot sont accusés de fournir des services à ICE 

  <https://www.humanite.fr/monde/etats-unis/etats-unis-apres-capgemini-les-groupes-francais-thales-et-parrot-sont-accuses-de-fournir-des-services-a-ice>

  <https://mamot.fr/@Khrys/115994215803676720>
- « C’est officiel : stocker \[nos\] données en Europe ne sert à rien face aux USA »

  #privacy #data #vieprivée #souverainté #cloud

  <https://www.mac4ever.com/web/193689-c-est-officiel-stocker-vos-donnees-en-europe-ne-sert-a-rien-face-aux-usa>

  <https://framapiaf.org/@pylapp/116006149239279918>
- Vous vous souvenez des moqueries quand on accusait nos téléphones de nous écouter à notre insu? Google a accepté de payer 68 millions de dollars (!) pour régler un recours collectif qui alléguait que l'assistant vocal du géant de la technologie avait enregistré illégalement des utilisateurs et ensuite partagé leurs conversations privées avec les annonceurs <https://www.cbsnews.com/news/google-voice-assistant-lawsuit-settlement-68-million>

  <https://mastodon.social/@paul_denton/116001043448443298>
- Huit doubleureuses français·es mettent en demeure deux sociétés d’IA pour avoir cloné leur voix

  <https://www.lemonde.fr/pixels/article/2026/02/03/huit-doubleurs-francais-mettent-en-demeure-deux-societes-d-ia-pour-avoir-clone-leur-voix_6665183_4408996.html>

  <https://mamot.fr/@Khrys/116005636773909983>
- À l’entrée à l’université, 40% des étudiants sont en deçà du niveau attendu, et en sortie de licence, 52% des étudiants ne maîtrisent pas les usages numériques nécessaires à leur poursuite d’études ou à leur insertion sur le marché du travail. Parmi les compétences soulevant des difficultés : vérifier la fiabilité d’une information en ligne ou connaître ses droits en matière de protection des données.

  <https://theconversation.com/illectronisme-les-difficultes-des-jeunes-face-au-numerique-273606>

  <https://pouet.chapril.org/@syll/115978477592147638>

### Au cœur de la réunion

- On arrête plus Mael dans le montage vidéo :
  - <https://foopgp.org/fr/solutions/theme-email/>
  - <https://foopgp.org/fr/blog/2026-01-19-djibian-release/>
- Nouvelle fonctionnalité fournie par le backend : **la certification** (traduction française en cours) :

```
$ bl-pgpid certify --help
Utilisation : bl-pgpid certify [OPTIONS]... [TARGET_U4|TARGET_U5] [TARGET_KEYFPR]

Certifier une autre personne, identifiée par son OpenPGP ID TARGET_U4
Les informations manquantes seront demandées de manière interactive. E.g.: Civil status to calculate TARGET_U4.

La certification signifie : je confirme que ce certificat appartient bien à cette personne réelle.
Cela implique de vérifier l’état civil ainsi que l’empreinte de la clé publique de la personne ciblée.
Cela permet d’étendre et de renforcer votre toile de confiance ainsi que celle de vos proches.
This is a commitment: the more you certify, the more you increase your reputation, but if you do it wrong, you will ruin your credibility.

OPTIONS:
  -u, --use-privkey NAME|KEYID Select private key to use. Par défaut : Guess it from connected token, else ask.
  -R, --revoke                 Révoquer vos certifications précédentes sur le certificat d’une autre personne.
  -G, --vouch                  Assumer la responsabilité des actions (éventuellement illégales) de la personne ciblée. Identique à '--vouch-for ALL'. (Not implemented yet)
  -g, --vouch-for DOMAIN       Assumer des responsabilités légales supplémentaires concernant la personne ciblée (Not implemented yet)
  -l, --local                  « Non-exportable » certification. Pretty useless. Allow to less affect credibility.
  -f, --force-sign-key         Allow to unrevoke or to change vouching.
  -k, --keyserver KEYSERVER    Si non vide, recevoir et envoyer le certificat mis à jour vers ce serveur de clés. Par défaut : hkps://keys.foopgp.org.
  -H, --homedir GNUPGHOME      Répertoire personnel de GnuPG (par défaut : ~/.gnupg). Variable d’environnement : $GNUPGHOME.

```

- Les inscription à l'atelier du 17 février sont ouvertes : <https://framaforms.org/atelier-technique-reprenez-le-controle-sur-vos-donnees-avec-les-cles-de-securite-openpgp-1769177764>
- Gros effort sur la communication en cours ; **l'heure des démos et de la vente de support/formation est venue**. On manque de ressources (temps) et de talents ("community manager") pour propager cette bonne parole !
  - Par exemple notre page linkedIn : <https://www.linkedin.com/company/foopgp>

#### Actions à mener (TODO list)

- Urgent: Appel à cotisation.
- Urgent: Gestion de nos communautés, communication.
- Urgent: Prospection et gestion commerciales.
- Génération des relevés de compte à coller ou glisser dans nos carnets d’échanges.

#### Actions en cours

- Communication (manque de ressources)
- Frontend: gestion des emails ou avatars dans nos identités numériques (ajout, suppression)
- Frontend: gestion de la certification
- Backend: Fonctionnalités pour consulter ses comptes en djis (Ɉ), faire des paiement en (Ɉ) (grâce à OpenPGP + yubikeys).
- Backend: generation de svg avec données OpenPGP ID à intégrer dans vos cartes de visite
- Site web : nouveau site, axé sur Djibian. Moins technique et plus commercial.
- Collecte d’ordinateurs dotés de Windows obsolètes, pour y installer Djibian (le système qui nous respecte !).
- Clôture comptable 2025.

#### (grosses) Actions terminées

- Backend: gestion de la certification
- Mise au propre de L'ISO fournit

###### AMF

- Nous sommes toujours dans le cadre des “exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme” de [l’article 4, titre II](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) .

### Agenda

- mardi 17 février 2026 : <https://alposs.fr/> à Échirolles - **on fera une démo :** <https://pretalx.com/alposs-2026/talk/KTNMTA/>
- Samedi 28 février après-midi : premier atelier grand public autour de Gap (prendre en main djibian GNU/Linux + yubikeys OpenPGP)
- [… agenda du libre](https://www.agendadulibre.org)
