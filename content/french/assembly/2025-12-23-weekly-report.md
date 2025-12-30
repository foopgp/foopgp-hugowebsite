---
title: "2025 S52 Rapport Hebdomadaire"
lang: fr
date: 2025-12-23T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

***Présents :*** *Jean-Jacques B, Laurent C, piseb, François R.*

### Ordre du jour prochaine visio mardi 6 janvier 2026 à 21h sur JITSI : <https://meet.jit.si/foopgp>

*Note  : Si problème, on ne retrouve sur notre salon NextCloud : <https://cloud.foopgp.org/call/yfomgu8q> (qui fonctionne à nouveau, quoique toujours un peu sous dimensionné).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 23 décembre)

- Revue de presse.
- Démo GUI djibian-onbarding
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

- <https://fy.blackhats.net.au/blog/2025-12-17-yep-passkeys-still-have-problems/> <https://mastodon.social/@alatitude77/115736801814224439>
- Découvrez #Grammalecte v2.3 : en dehors des nouveautés que nous vous laissons découvrir dans l'article, notez surtout le transfert du projet à #Algoo, société iséroise, éditrice de la solution @tracimfr. Félicitation à eux  

  <https://linuxfr.org/users/or/journaux/grammalecte-v2-3>

  <https://pouet.chapril.org/@arawa/115745854852677464>
- La CNIL condamne Ledger sans publier la décision : un juge ordonne de la recevoir

  (Sébastien Gavois) 

  <https://next.ink/brief_article/la-cnil-condamne-ledger-sans-publier-la-decision-un-juge-ordonne-de-la-recevoir/>
- <https://www.quantamagazine.org/cryptographers-show-that-ai-protections-will-always-have-holes-20251210/>

  <https://infosec.exchange/@nono2357/115715155843499326>
- Centreon se rallie aux principe Open Source de l'ONU : <https://www.linformaticien.com/magazine/logiciel/64284-centreon-se-rallie-aux-principes-open-source-de-l-onu.html>
- Cyberattaques
  - Ministère des Sports : <https://www.linformaticien.com/magazine/cybersecurite/64287-le-ministere-des-sports-touche-par-une-cyberattaque.html>
  - Ministère de l'intérieur : <https://www.linformaticien.com/magazine/cybersecurite/64280-cyberattaque-place-beauvau-un-suspect-de-22-ans-interpelle.html>
  - La poste : <https://www.lesnumeriques.com/banque-en-ligne/colissimo-la-banque-postale-les-services-de-la-poste-victimes-d-une-cyberattaque-n248544.html>

### Au cœur de la réunion

- Derniers test, notamment sur la GUI djibian-onboarding. Presque livrable.
- Rendez-vous le 17 février avec [AlpOSS](https://alposs.fr/) à Échirolles : <https://pretalx.com/alposs-2026/talk/KTNMTA/>
- L’appel à cotisation et l’augmentation du  nombre de membres (ou la vente en euros) est maintenant une priorité (les comptes sont dans le rouge clair).
- Des Pull Request sur un projet de JJ dormant : <https://github.com/jbar/LynxBot/pulls?q=is%3Aclosed>
- Semaine de vacance bien méritée jusqu'au Lundi 5 janvier. (Même si on aurait aimé sortir djibian avec son onboarding graphique 1.0 avant, on pourra le faire la semaine de la rentrée).
- 2 stagiaires arrivent pour 6 semaines le 5 janvier (un dev, un ops/IT).

#### Jalons (presque) tenus

- Développement  “onboarding” (Interface graphique lancée au démarrage de l’ordinateur,  permettant la création de comptes avec identité numérique OpenPGP +  yubikeys).
- Découpage propre des fonctionnalités dans les bash-libs, utilisé pas les deux frontend (“onboarding” et pgpid).
- Refactoring de pgpid en utilisant les nouvelles bashlibs.
- Livraisons logiciels + iso pour Noël ! ^^ :-)

#### Actions à mener (TODO list)

- Appel à cotisation (Urgent).
- Clôturâtion comptable 2025.
- Communication.
- Gestion de nos communautés.
- Développer les fonctionnalités pour consulter ses comptes en djis (Ɉ), faire des paiement en (Ɉ) (grâce à OpenPGP + yubikeys).
- Gestion des emails ou avatars dans nos identités numériques (ajout, suppression)
- Industrialisation des informations à poser dans les carnets d’échanges. (Stickers à coller).
- Collecte d’ordinateurs dotés de Windows obsolètes, pour y installer Djibian (le système qui nous respecte !).
- numelib à contacter pour infra + services mail.

#### (grosses) Actions terminées

- Livre blanc : <https://foopgp.org/fr/about/white-book/>

###### AMF

- Nous sommes toujours dans le cadre des “exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme” de [l’article 4, titre II](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) .

### Agenda

- 39C3 du 27 au 30 décembre en Allemagne :
  - <https://fahrplan.events.ccc.de/congress/2025/fahrplan/event/to-sign-or-not-to-sign-practical-vulnerabilities-i>
  - <https://fahrplan.events.ccc.de/congress/2025/fahrplan/event/trump-government-demands-access-to-european-police-databases-and-biometrics>
- 31 janvier & 1 février : [FOSDEM 2026](https://fosdem.org/2026/), toujours à Bruxelle. (foopgp n'a pas prévu d'y aller).
- mardi 17 février 2026 : <https://alposs.fr/> à Échirolles - **on fera une démo :** <https://pretalx.com/alposs-2026/talk/KTNMTA/>
- [… agenda du libre](https://www.agendadulibre.org)

---
