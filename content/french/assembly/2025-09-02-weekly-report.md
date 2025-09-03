---
title: "2025 S36 Rapport Hebdomadaire"
lang: fr
date: 2025-09-02T21:30:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/03f71eeb25b3bb4c028805feb70958ea36ee068d/content/french/assembly) .*

---

***Présents :*** *Jean-Jacques B, Laurent C., Didier L., François R., piseb.*

### Ordre du jour pour le prochain conseil, mardi 9 Septembre 2025 à **21h00**, en visio sur <https://cloud.foopgp.org/call/4du5irxe>

*Note : Si problème avec le premier lien de visio, se connecter sur [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) .*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir

- Revue de presse.
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.

### Stingynalty

Pour le mois d’août 2025, ***stingynalty* = 1.07232113192844117693**

Pour le mois de septembre 2025, ***stingynalty* = 1.07768273758808338281**

**Graphique en 3 dimensions** -> <https://www.math3d.org/xzuclzIbuZ>

Et donc pour septembre, en appliquant la formule du [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) , **j = log₂(d+1) / *stingynalty*** : 

| cotisation initiale en € | quantité de jetons Ɉ |
|--------------------------|----------------------|
| 1.00 €                   | .927916 Ɉ            |
| 1.12 €                   | 1.000000 Ɉ           |
| 2.00 €                   | 1.470713 Ɉ           |
| 3.46 €                   | 2.000000 Ɉ           |
| 5.00 €                   | 2.398630 Ɉ           |
| 8.41 €                   | 3.000000 Ɉ           |
| 10.00 €                  | 3.210064 Ɉ           |
| 18.85 €                  | 4.000000 Ɉ           |
| 20.00 €                  | 4.075705 Ɉ           |
| 40.89 €                  | 5.000000 Ɉ           |
| 50.00 €                  | 5.263539 Ɉ           |
| 87.41 €                  | 6.000000 Ɉ           |
| 100.00 €                 | 6.178266 Ɉ           |
| 185.60 €                 | 7.000000 Ɉ           |
| 200.00 €                 | 7.099539 Ɉ           |
| 392.84 €                 | 8.000000 Ɉ           |
| 500.00 €                 | 8.322177 Ɉ           |
| 830.26 €                 | 9.000000 Ɉ           |
| 1000.00 €                | 9.248757 Ɉ           |
| 1753.48 €                | 10.000000 Ɉ          |

Rappel, si vous avez déjà cotisé, la formule pour calculer la quantité de nouvelles valeurs en Ɉ est : **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) .

#### Chiffres de l’association

*Au 31 juin 2025, en utilisant le script ./tools/[gifts-stats.sh](http://gifts-stats.sh) dans la blockchain qui gère les jetons Ɉ.*

- Total members: 33 - Total certified members: 13 / 33
- Total contribs: 60 - Total certified contribs: 27 / 60
- Total contribution: 51408.14 € - Total certified contribution: 50142.51 € / 51408.14 €
- Total created: 194.337979 Ɉ - Total certified created: 114.195817 Ɉ / 194.337979 Ɉ

### Revue de presse

- À propos de l'IA : 
  - Checkmarx lance un outil pour sécuriser le développement par l'IA : <https://www.linformaticien.com/magazine/tendances/941-ia/63799-checkmarx-lance-un-outil-pour-securiser-le-developpement-par-l-ia.html>
  - Checkmarx met en garde contre les vulnérabilité de développement par l'IA : <https://www.linformaticien.com/magazine-linfo-cyber-risques/menaces/63793-codage-par-ia-checkmarx-met-en-garde-contre-les-vulnerabilites-2.html>
  - Un ransomware génère son code en temps réel grâce à l'IA : <https://www.linformaticien.com/magazine-linfo-cyber-risques/menaces/63788-un-ransomware-qui-genere-son-code-en-temps-reel-grace-a-l-ia-2.html>
  - La très grande majorité des projets de GenAI en entreprise échouent : <https://www.linformaticien.com/magazine/tendances/941-ia/63794-la-tres-grande-majorite-des-projets-de-genai-en-entreprise-echouent.html>
  - ChatGPT écrase la concurrence : <https://www.linformaticien.com/magazine/tendances/950-etudes/63796-chatgpt-ecrase-la-concurrence.html>
  - L'IA générative ralenti les développeurs : <https://www.linformaticien.com/magazine/tendances/941-ia/63720-quand-l-ia-generative-ralentit-les-developpeurs.html>
- Micro$oft va supprimer 10 % de ses effectifs en France : <https://www.linformaticien.com/magazine/biz-it/63802-microsoft-va-supprimer-10-de-ses-effectifs-francais.html>
- Et Intel veut finir l'année avec 75 000 employés : <https://www.linformaticien.com/magazine/biz-it/63732-intel-veut-finir-l-annee-avec-75-000-employes.html>
- L'ENISA prend en charge la réserve européenne de cybersécurité : <https://www.linformaticien.com/magazine-linfo-cyber-risques/ecosysteme/63781-l-enisa-prend-en-charge-la-reserve-europeenne-de-cybersecurite-2.html>
- Le Royaume-Uni veut instaurer veut instaurer l'interdiction de payer les rançons : <https://www.linformaticien.com/magazine/cybersecurite/63726-le-royaume-uni-muscle-sa-lutte-contre-les-rancongiciels.html>

### Au cœur de la réunion

- De nouveaux dépôts sur <https://codeberg.org/foopgp> Une nouvelle "organisation" codeberg pour ce qui concerne exclusivement le système djibian :  <https://codeberg.org/djibian>
- Jean-Jacques a fait un outil pour notifier et faire les mises à jour sous xfce : <https://codeberg.org/djibian/apt-notify-updates> . Il a perdu trois jours puisque nous découvrons ce soir : <https://code.guido-berhoerster.org/projects/package-update-indicator/> .
- Sébastien : L'ISO <http://iso.foopgp.org> est toujours en peaufinage. Et en parallèle il commence à faire en sorte que les adhérents puissent vérifier leurs contributions et l'état de leur comptes en djis à travers une interface web.
- Laurent installe environ 1 système GNU/Linux par semaine. Il semble que nous ayons besoin d'une bonne stratégie de communication et marketing afin que ce soit plusieurs dizaines de djibian qui se font installer chaque semaine.
  - Il devient impératif de réaliser et imprimer des premiers flyers.
  - Participer à des "install party", en organiser autour de nous.
- Katia s'est enregistré auprès de la banque, elle a désormais pouvoir sur notre compte en banque.

#### Actions en cours

- Industrialisation des informations à poser dans les carnets d’échanges. (Stickers à coller).

#### Actions à mener (TODO list)

- Collecte d’ordinateurs dotés de Windows obsolètes, pour installation de nos ISO.
- Appel à cotisation.
- Commande de bannière (slogan ? : ***Liberté ? Vie privée ? Responsabilité ? Maîtrisez vos données !*** ou ***Embarquons vers des horizons plus radieux*** )
- Étudier et cibler [laposte.net](http://laposte.net), déjà en charge de confidentialité avec notamment les médecin. Exemple : <https://www.apicrypt.org/>

#### (grosses) Actions terminées

Livre blanc : <https://foopgp.org/fr/about/white-book/>

Listes de diffusion : confer <https://foopgp.org/fr/contact/>

###### AMF

L’AMF a répondu à la question : *quelles  sont les obligations réglementaires auxquelles nous pourrons être  assujettis si nous commençons à utiliser nos jetons de pouvoir comme  monnaie d’échange ?* :

- *Nous vous invitons à contacter  un conseiller juridique qui pourra vous éclairer sur la réglementation  applicable à votre projet, l’AMF ne pouvant jouer ce rôle.*
- *Vous  trouverez par ailleurs des informations concernant la réglementation  applicable aux Prestataires de services sur actifs numériques sur [la page suivante](https://www.amf-france.org/fr/espace-professionnels/fintech/mes-relations-avec-lamf/obtenir-un-enregistrement-un-agrement-psan) .*

Notre conseiller juridique nous a renvoyé sur les pages 28-29 de [la publication du Journal Officiel de l’UE L150/40](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) du [9 juin 2023](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=OJ:L:2023:150:TOC) . Tout en résumant certaines des nombreuses “exemptions qui permettent  aux émetteurs d’alléger, voire de supprimer le formalisme” de l’article  4, titre II.

### Agenda

- 25 septembre : install party à Crets ? 
- 27 septembre : install party à Villeurbane : <https://www.aldil.org/events/install-party-rize-2025/>
- 3 octobre près de Gap : présentation de la monnaie libre avec le collectif Philarmonia
- 15 Novembre 2025 : Capitole du libre à Toulouse
- 15 Novembre 2025 : Campus du Libre à Villeurbanne (oui il y a comme une collision)
- 10 & 11décembre 2025 : <https://www.opensource-experience.com/> à Paris. (notre proposition a été refusé).
- [… agenda du libre](https://www.agendadulibre.org)

---
