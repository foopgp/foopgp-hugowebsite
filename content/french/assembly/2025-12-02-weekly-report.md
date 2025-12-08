---
title: "2025 S49 Rapport Hebdomadaire"
lang: fr
date: 2025-12-02T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/03f71eeb25b3bb4c028805feb70958ea36ee068d/content/french/assembly) .*

---

***Présents :*** *Jean-Jacques B, Laurent C, François R, piseb, Didier L..*

### Ordre du jour prochaine visio mardi 9 décembre 2025 à 21h sur <https://cloud.foopgp.org/call/yfomgu8q> 

*Note : Si problème avec la visio sur notre cloud.foopgp.org, se connecter sur [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) .*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 2 décembre)

- Avancement travaux.
- Revue de presse.
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.

### Stingynalty

Pour le mois de novembre 2025, **stingynalty = 1.08848650703240391871**

Pour le mois de décembre 2025, **stingynalty = 1.09392893956756593830**

**Graphique en 3 dimensions** -> <https://www.math3d.org/xzuclzIbuZ>

Et donc pour décembre, en appliquant la formule du [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) , **j = log₂(d+1) / *stingynalty*** :

| cotisation initiale en euros | quantité de jetons en decidjis |
|------------------------------|--------------------------------|
| 1.00 €                       | 9.14136 dɈ                     |
| 1.14 €                       | 10.00000 dɈ                    |
| 2.00 €                       | 14.48871 dɈ                    |
| 3.56 €                       | 20.00000 dɈ                    |
| 5.00 €                       | 23.63007 dɈ                    |
| 8.73 €                       | 30.00000 dɈ                    |
| 10.00 €                      | 31.62391 dɈ                    |
| 19.76 €                      | 40.00000 dɈ                    |
| 20.00 €                      | 40.15176 dɈ                    |
| 43.32 €                      | 50.00000 dɈ                    |
| 50.00 €                      | 51.85369 dɈ                    |
| 93.59 €                      | 60.00000 dɈ                    |
| 100.00 €                     | 60.86511 dɈ                    |
| 200.00 €                     | 69.94103 dɈ                    |
| 200.91 €                     | 70.00000 dɈ                    |
| 429.97 €                     | 80.00000 dɈ                    |
| 500.00 €                     | 81.98582 dɈ                    |
| 918.92 €                     | 90.00000 dɈ                    |
| 1000.00 €                    | 91.11401 dɈ                    |
| 1962.61 €                    | 100.00000 dɈ                   |
| 2000.00 €                    | 100.24879 dɈ                   |
| 4190.41 €                    | 110.00000 dɈ                   |

Rappel, si vous avez déjà cotisé, la formule pour calculer la quantité de nouvelles valeurs en Ɉ est : **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) .

#### Chiffres de l’association

*Au 31 juin 2025, en utilisant le script ./tools/[gifts-stats.sh](http://gifts-stats.sh) dans la blockchain qui gère les jetons Ɉ.*

- Total members: 33 - Total certified members: 13 / 33
- Total contribs: 60 - Total certified contribs: 27 / 60
- Total contribution: 51408.14 € - Total certified contribution: 50142.51 € / 51408.14 €
- Total created: 194.337979 Ɉ - Total certified created: 114.195817 Ɉ / 194.337979 Ɉ

### Revue de presse

- Microsoft présente son CPU Cobalt 200 à 132 coeurs basé sur ARM : <https://www.distributique.com/actualites/lire-microsoft-presente-son-cpu-cobalt-200-base-sur-arm-36767.html>
- La Chine bientôt privée de logiciels et système d'origine US : <https://www.distributique.com/actualites/lire-la-chine-bientot-privee-de-logiciels-et-systemes-d-origine-us-36687.html>
- Cloud souverain : un référentiel européen controversé : <https://www.distributique.com/actualites/lire-cloud-souverain-un-referentiel-europeen-controverse-36696.html>
- Seagate monte à 30 To : <https://www.distributique.com/actualites/lire-seagate-monte-a-30-to-sur-ses-exos-m-36682.html>
- <https://www.businessinsider.com/ai-tools-are-deskilling-workers-philosophy-professor-2025-11>
  <https://toot.cafe/@baldur/115643520741720526>
- C’est qui qui a rererererererererererererere fuité ? C’est France Travail bien sûr !
  <https://bonjourlafuite.eu.org/#France%20Travail-2025-12-01>
  <https://firefish.imirhil.fr/notes/afqyjomg80at00ou>
- <https://www.alternatives-economiques.fr/pix-bresilien-une-revolution-financiere-ne-commencer/00116210>
- The [#OpenPGP](https://m.g3l.org/tags/OpenPGP) ecosystem is moving forward with new certificate formats from RFC 9580, as well as upcoming [#PQC](https://m.g3l.org/tags/PQC) support: <https://floss.social/@keys_openpgp_org/115510841412154086>

### Au cœur de la réunion

- Tentative d'installation de djibian sur chromebook (nécessite <https://docs.mrchromebox.tech/docs/support/unbricking/unbrick-suzyq.html> )
- Nécessité pour djibian de mettre en avant (et configurer) Thunderbird pour ne pas forcer les utilisateurs gmail à créer un autre email (aller chercher les utilisateurs où ils sont).
- Pas mal de bugs découverts et résolus cette semaine (Merci les bêta-testeurs, on vous aime ^^).
- JJ monte à L'OSX Paris les 10 et 11 décembre. Foopgp n'a pas (encore) de stand ni conf cette année, mais il espère pouvoir faire quelques démos djibian en marge (dans les stand des autres ^^).
- On attend toujours des réponses que l'on espère positives pour AlpoSS à Échirolles en février.
- Départ de Marc Odef.
- Les développement qui avancent. On espère une release Djibian 1.0 avant Noël.
- Séries de 4 documentaire sur la monnaie, vu notamment en Belgique : <https://www.youtube.com/watch?v=eE2VSOUdhE8>

#### Actions en cours

- Développement du "on-boarding" (création de compte avec identité numérique OpenPGP, au premier démarrage de l'ordinateur). Interface graphique multiplatforme (réutilisable pour la futur application Android).
- Refactoring de pgpid en découpant la procédure dans de nouvelles bashlibs, utilisées notamment par le onboarding 
- Industrialisation des informations à poser dans les carnets d’échanges. (Stickers à coller).

#### Actions à mener (TODO list)

- Collecte d’ordinateurs dotés de Windows obsolètes, pour y installer Djibian (le système qui nous respecte !).
- numelib  à contacter pour infra + services mail.
- Appel à cotisation.

#### (grosses) Actions terminées

- Livre blanc : <https://foopgp.org/fr/about/white-book/>

###### AMF

L’AMF a répondu à la question : *quelles  sont les obligations réglementaires auxquelles nous pourrons être  assujettis si nous commençons à utiliser nos jetons de pouvoir comme  monnaie d’échange ?* 

- *Nous vous invitons à contacter  un conseiller juridique qui pourra vous éclairer sur la réglementation  applicable à votre projet, l’AMF ne pouvant jouer ce rôle.*
- *Vous  trouverez par ailleurs des informations concernant la réglementation  applicable aux Prestataires de services sur actifs numériques sur [la page suivante](https://www.amf-france.org/fr/espace-professionnels/fintech/mes-relations-avec-lamf/obtenir-un-enregistrement-un-agrement-psan) .*

Notre conseiller juridique nous a renvoyé sur les pages 28-29 de [la publication du Journal Officiel de l’UE L150/40](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) du [9 juin 2023](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=OJ:L:2023:150:TOC) . Tout en résumant certaines des nombreuses “exemptions qui permettent  aux émetteurs d’alléger, voire de supprimer le formalisme” de l’article  4, titre II.

### Agenda

- 10 & 11 décembre 2025 : <https://www.opensource-experience.com/> à Paris (notre proposition conf/stand a été refusé).
- mardi 17 février 2026 : <https://alposs.fr/> à Échirolles.
- [… agenda du libre](https://www.agendadulibre.org)

---
