---
title: "2025 S44 Rapport Hebdomadaire"
lang: fr
date: 2025-10-28T21:30:00+02:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

 *Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/03f71eeb25b3bb4c028805feb70958ea36ee068d/content/french/assembly) .*

---

***Présents :*** *Jean-Jacques B, Laurent C, piseb.*

***Excusés :*** *François R, Didier L.*

### Ordre du jour prochaine visio mardi 4 novembre 2025 à 21h sur <https://cloud.foopgp.org/call/yfomgu8q> 

*Note : Si problème avec la visio sur notre cloud.foopgp.org, se connecter sur [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) .*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 28 octobre)

- Avancement travaux.
- Revue de presse.
- Point sur les participations aux forums ou salons. (Préparation week-end du 15 novembre à Toulouse, Capitole du libre).
- Actions réalisés, en cours, à prévoir.

### Stingynalty

Pour le mois de septembre 2025, ***stingynalty* = 1.07768273758808338281**

Pour le mois d'octobre 2025, ***stingynalty* = 1.08307115127602379972**

**Graphique en 3 dimensions** -> <https://www.math3d.org/xzuclzIbuZ>

Et donc pour octobre, en appliquant la formule du [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) , **j = log₂(d+1) / *stingynalty*** : 

| cotisation initiale en euros | quantité de jetons en decidjis |
|--------------------------|----------------------|
|       1.00 € |   9.23300 dɈ |
|       1.12 € |  10.00000 dɈ |
|       2.00 € |  14.63396 dɈ |
|       3.49 € |  20.00000 dɈ |
|       5.00 € |  23.86696 dɈ |
|       8.51 € |  30.00000 dɈ |
|      10.00 € |  31.94094 dɈ |
|      19.15 € |  40.00000 dɈ |
|      20.00 € |  40.55428 dɈ |
|      41.68 € |  50.00000 dɈ |
|      50.00 € |  52.37352 dɈ |
|      89.42 € |  60.00000 dɈ |
|     100.00 € |  61.47529 dɈ |
|     190.54 € |  70.00000 dɈ |
|     200.00 € |  70.64218 dɈ |
|     404.79 € |  80.00000 dɈ |
|     500.00 € |  82.80773 dɈ |
|     858.68 € |  90.00000 dɈ |
|    1000.00 € |  92.02743 dɈ |
|    1820.25 € | 100.00000 dɈ |
|    2000.00 € | 101.25378 dɈ |
|    3857.39 € | 110.00000 dɈ |

Rappel, si vous avez déjà cotisé, la formule pour calculer la quantité de nouvelles valeurs en Ɉ est : **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) .

#### Chiffres de l’association

*Au 31 juin 2025, en utilisant le script ./tools/[gifts-stats.sh](http://gifts-stats.sh) dans la blockchain qui gère les jetons Ɉ.*

- Total members: 33 - Total certified members: 13 / 33
- Total contribs: 60 - Total certified contribs: 27 / 60
- Total contribution: 51408.14 € - Total certified contribution: 50142.51 € / 51408.14 €
- Total created: 194.337979 Ɉ - Total certified created: 114.195817 Ɉ / 194.337979 Ɉ

### Revue de presse

- OpenAI rachète Sky pour s'intégrer à macOS : <https://www.linformaticien.com/magazine/tendances/941-ia/64043-openai-rachete-sky.html>
- Le service public teste l'IA : <https://www.linformaticien.com/magazine/tendances/941-ia/64039-le-service-public-teste-l-ia.html>
- Budget de l’État Français 2026 : une taxe visant les géants du numérique approuvée par l'Assemblée Nationale : <https://www.linformaticien.com/magazine/biz-it/64038-budget-2026-une-taxe-visant-les-geants-du-numerique-approuvee-par-l-assemblee.html>
- Reddit dépose plainte contre Perplexity pour avoir utilisé ses données afin d'entrainer son moteur IA : <https://www.linformaticien.com/magazine/tendances/968-donnees-personnelles/64033-reddit-depose-une-plainte-contre-perplexity.html>
- Une vulnérabilité qui permet de contrôler les résultats des modèles IA : <https://www.linformaticien.com/magazine/cybersecurite/64024-jfrog-decrit-une-vulnerabilite-qui-permet-de-controler-les-sorties-des-modeles-d-ia.html>
- La Direction interministérielle du numérique (DINUM) soutient Matrix.org : <https://www.linformaticien.com/magazine/cloud/64021-la-dinum-soutient-matrix-org.html>
- Chat control est repoussé, tribune dans le monde : <https://www.lemonde.fr/idees/article/2025/10/27/yasmine-douadi-specialiste-en-cybersecurite-affaiblir-le-chiffrement-des-donnees-affaiblit-la-securite-de-tous_6649836_3232.html>
- Du pouvoir de nuisance sur l'état de droit : <https://www.france24.com/fr/info-en-continu/20251010-vis%C3%A9-par-des-sanctions-am%C3%A9ricaines-le-juge-fran%C3%A7ais-de-la-cpi-d%C3%A9nonce-des-atteintes-%C3%A0-l-etat-de-droit>

### Au cœur de la réunion

- Discussion sur les avancées de djibian, les bash-libs commencent à être propres et complètes, création d'utilisateur avec quelques innovations (bl-djibian adduser), intégration de gpgfrontend, systèmes configurés avec quelques clés publiques préexistantes, découverte de gnome-software pour remplacer synaptic,
- Petits retour sur les dernières rencontres et réseautage de Jean-Jacques (Aubignosc, etc.).
- Préparation déplacement au capitole du libre.

#### Actions en cours

- Visuel de présentation des projets développés par l'association : <https://codeberg.org/foopgp/foopgp-hugowebsite/raw/commit/cadc666233bdd7d2b2a295298cc230d290f2f01a/resources/svg/DJI_DJIBIAN_projets_mind_map.svg>
- Étude rsync vs syncthing vs unison.
- Industrialisation des informations à poser dans les carnets d’échanges. (Stickers à coller).
- Développement du "on-boarding" (création de compte avec identité numérique OpenPGP, au premier démarrage de l'ordinateur). Interface graphique multiplatforme (réutilisable pour la futur application Android).

#### Actions à mener (TODO list)

- Collecte d’ordinateurs dotés de Windows obsolètes, pour y installer Djibian (le système qui nous respecte !).
- Appel à cotisation.
- Étudier et cibler [laposte.net](http://laposte.net), déjà en charge de confidentialité avec notamment les médecin. Exemple : <https://www.apicrypt.org/>

#### (grosses) Actions terminées

- Commande de bannières (slogan : cf <https://foopgp.org/fr/blog/2025-09-12-welcome-djibian/> )
- Livre blanc : <https://foopgp.org/fr/about/white-book/>

###### AMF

L’AMF a répondu à la question : *quelles  sont les obligations réglementaires auxquelles nous pourrons être  assujettis si nous commençons à utiliser nos jetons de pouvoir comme  monnaie d’échange ?* 

- *Nous vous invitons à contacter  un conseiller juridique qui pourra vous éclairer sur la réglementation  applicable à votre projet, l’AMF ne pouvant jouer ce rôle.*
- *Vous  trouverez par ailleurs des informations concernant la réglementation  applicable aux Prestataires de services sur actifs numériques sur [la page suivante](https://www.amf-france.org/fr/espace-professionnels/fintech/mes-relations-avec-lamf/obtenir-un-enregistrement-un-agrement-psan) .*

Notre conseiller juridique nous a renvoyé sur les pages 28-29 de [la publication du Journal Officiel de l’UE L150/40](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) du [9 juin 2023](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=OJ:L:2023:150:TOC) . Tout en résumant certaines des nombreuses “exemptions qui permettent  aux émetteurs d’alléger, voire de supprimer le formalisme” de l’article  4, titre II.

### Agenda

- 15 novembre 2025 : Capitole du libre à Toulouse
- 15 novembre 2025 : Campus du Libre à Villeurbanne (oui il y a comme une collision)
- 10 & 11 décembre 2025 : <https://www.opensource-experience.com/> à Paris (notre proposition a été refusé).
- 17 février 2026 : <https://alposs.fr/> à Échirolles.
- [… agenda du libre](https://www.agendadulibre.org)

---
