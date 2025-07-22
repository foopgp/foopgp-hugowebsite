---
title: "2025 S27 Rapport Hebdomadaire"
lang: fr
date: 2025-07-01T21:30:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/03f71eeb25b3bb4c028805feb70958ea36ee068d/content/french/assembly).*

---

***Présents :**** Jean-Jacques B, François R, Laurent C, piseb.*

### Ordre du jour pour le prochain conseil, mardi 22 juillet 2025 à **21h00**, en visio sur <https://cloud.foopgp.org/call/4du5irxe>

*Note : Si problème avec le premier lien de visio, se connecter sur [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).
- Debrief AG du dimanche 20 juillet
- Explications du dernier graphique 3D: [Gains in € depending on investment in Ɉ and time](https://www.math3d.org/VHvPcDNBY9).

### Ordres du soir

- Revue de presse.
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.
- Revue des dernières avancées sur la blockchain <https://codeberg.org/foopgp/foopgp-members>
- Explications des derniers graphiques 3D:
  - impact du paramètre stingynalty sur le prix de la création de djis: <https://www.math3d.org/5HynykPuzt>
  - Évolution des prix en euros de la création de djis : <https://www.math3d.org/EtrxWAkUYL>

### Stingynalty

Pour le mois de juin 2025, ***stingynalty* = 1.06167781186449956876**

Pour le mois de juillet 2025, ***stingynalty* = 1.06698620092382206660**

**Graphique en 3 dimensions** -> <https://www.math3d.org/xzuclzIbuZ>

Et donc pour juillet, en appliquant la formule du [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/), **j = log₂(d+1) / *stingynalty*** :

| cotisation initiale en € | quantité de jetons  Ɉ |
|--------------------------|-----------------------|
| 1.00 €                   | .937219 Ɉ             |
| 1.10 €                   | 1.000000 Ɉ            |
| 2.00 €                   | 1.485457 Ɉ            |
| 3.39 €                   | 2.000000 Ɉ            |
| 5.00 €                   | 2.422676 Ɉ            |
| 8.20 €                   | 3.000000 Ɉ            |
| 10.00 €                  | 3.242245 Ɉ            |
| 18.27 €                  | 4.000000 Ɉ            |
| 20.00 €                  | 4.116564 Ɉ            |
| 39.37 €                  | 5.000000 Ɉ            |
| 50.00 €                  | 5.316306 Ɉ            |
| 83.57 €                  | 6.000000 Ɉ            |
| 100.00 €                 | 6.240203 Ɉ            |
| 176.16 €                 | 7.000000 Ɉ            |
| 200.00 €                 | 7.170712 Ɉ            |
| 370.16 €                 | 8.000000 Ɉ            |
| 500.00 €                 | 8.405607 Ɉ            |
| 776.60 €                 | 9.000000 Ɉ            |
| 1000.00 €                | 9.341476 Ɉ            |
| 1628.11 €                | 10.000000 Ɉ           |

Rappel, si vous avez déjà cotisé, la formule pour calculer la quantité de nouvelles valeurs en Ɉ est :  
**jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**  
  
Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/).

#### Chiffres de l'association

*Au 31 juin 2025, en utilisant le script ./tools/[gifts-stats.sh](http://gifts-stats.sh) dans la blockchain qui gère les jetons Ɉ.*

- Total members:	33 - Total certified members: 13 / 33
- Total contribs:	60 - Total certified contribs: 27 / 60
- Total contribution:	51408.14 € - Total certified contribution: 50142.51 € / 51408.14 €
- Total created:	194.337979 Ɉ - Total certified created: 114.195817 Ɉ / 194.337979 Ɉ

### 

### Revue de presse

- When there's too much hype around Chinese researchers factoring RSA keys on a D-Wave Quantum computer, it's good to put that into comparison with other cutting edge factoring techniques like using an abacus or the barking patterns of a dog.

  Researchers are pleased to report that Scribble's barking is more effective for factoring prime numbers than a $15M D-Wave machine.

  <https://eprint.iacr.org/2025/1237>

  <https://mastodon.social/@fj/114851035651415691>
- <https://www.pcmag.com/news/google-gemini-bug-turns-gmail-summaries-into-phishing-attack>

  <https://mamot.fr/@Khrys/114853045203024685>

  <https://0din.ai/blog/phishing-for-gemini>

  <https://mastodon.social/@nixCraft/114852829363078529>
- Des failles découvertes dans certains processeurs AMD : <https://www.distributique.com/actualites/lire-les-failles-amd-inquietent-crowdstrike-et-microsoft-36431.html>
- Zoom passe de la conversation à l'exécution des tâches avec de l'IA : <https://www.distributique.com/actualites/lire-zoom-passe-de-la-conversation-a-l-execution-des-taches-grace-a-l-ia-36427.html>
- La DDR6 en cours de finalisation : <https://www.distributique.com/actualites/lire-la-ddr6-pointe-le-bout-de-son-nez-36428.html>
- SUSE met en place un "support souverain" : <https://www.linformaticien.com/magazine/infra/63672-suse-met-en-place-un-support-souverain.html>
- L'hôpital de St-Etienne victime d'une cyberattaque  : <https://www.linformaticien.com/magazine/cybersecurite/63667-un-hopital-de-saint-etienne-victime-d-une-cyberattaque.html>
- Airbus Defense et Space décroche le marché des simulateurs des cyber combattants : <https://www.linformaticien.com/magazine/cybersecurite/63663-airbus-defense-space-decroche-la-marche-des-simulateurs-destines-aux-cyber-combattants.html>
- 

### Activité récente

#### Au cœur de la réunion

- Présentation des dernières avancées sur la blockchain <https://codeberg.org/foopgp/foopgp-members> : Les processus de création de djis () en fonction des cotisations certifiées commencent à être au point. La première transaction "on-chain" est proche.
- Amélioration du premier graphique "Ɉ creation by initial contribution" : <https://www.math3d.org/xzuclzIbuZ>

#### Actions en cours

- Rédaction de fiches missions, pour les bénévoles et plus.
- Collecte d'ordinateurs dotés de Windows obsolètes, et installation de système Debian GNU/Linux (en attendant nos  ISO complétées et configurées foopgp/OpenPGP). (Merci Laurent, Sébastien, Stéphane)
- Industrialisation des informations à poser dans les carnets d'échanges. (Stickers à coller).

#### Actions terminées

Livre blanc : <https://foopgp.org/fr/about/white-book/>

Listes de diffusion : confer <https://foopgp.org/fr/contact/>

###### AMF

L'AMF a répondu à la question : *quelles sont les obligations réglementaires auxquelles nous pourrons être assujettis si nous commençons à utiliser nos jetons de pouvoir comme monnaie d'échange ?* :

* *Nous vous invitons à contacter un conseiller juridique qui pourra vous éclairer sur la réglementation applicable à votre projet, l’AMF ne pouvant jouer ce rôle.*
* *Vous trouverez par ailleurs des informations concernant la réglementation applicable aux Prestataires de services sur actifs numériques sur [la page suivante](https://www.amf-france.org/fr/espace-professionnels/fintech/mes-relations-avec-lamf/obtenir-un-enregistrement-un-agrement-psan).*

Notre conseiller juridique nous a renvoyé sur les pages 28-29 de [la publication du Journal Officiel de l'UE L150/40](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) du [9 juin 2023](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=OJ:L:2023:150:TOC). Tout en résumant certaines des nombreuses "exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme" de l'article 4, titre II.

### Actions à mener (TODO list)

- Appel à cotisation pour le nouvel exercice (dépend de l'avancement  https://foopgp.org/fr/about/donate/ )
- Commande de bannière  (slogan : ***Liberté ? Vie privée ? Responsabilité ? Maîtrisez vos données ! )***
- Étudier les outils et infrastructures utilisé par les notaires, notamment Genapi/Septeo, pour connaître leur attentes et (in)satisfactions.
- Étudier et cibler laposte.net, déjà en charge de confidentialité avec notamment les médecin. Exemple : https://www.apicrypt.org/

### Agenda

- 20 juillet 2025 à 14h30 : Assemblée Générale extraordinaire foopgp (convocation à venir prochainement).
- WE du 25 au 27 juillet 2025 à Saint-Maixent-l'École (79400) : <https://decroissancelefestival.org/>
- Du jeudi 7 au dimanche 10 Août : Les résistantes 2025 en Normandie.
- camp CHATONS 7-10 août
- 3 octobre près de Gap : présentation de la monnaie libre avec le collectif Philarmonia
- 15 Novembre 2025 : Capitole du libre à Toulouse
- 15 Novembre 2025 : Campus du Libre à Villeurbanne (oui il y a comme une collision)
- 10 & 11décembre 2025 : <https://www.opensource-experience.com/> à Paris.
- [... agenda du libre](https://www.agendadulibre.org)

---
