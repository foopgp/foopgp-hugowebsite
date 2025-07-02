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

***Présents :*** *Jean-Jacques B, François R.*  
***Excusés :*** *Laurent C, piseb.*

### Ordre du jour pour le prochain conseil, mardi 8 juillet 2025 à **21h00**, en visio sur <https://cloud.foopgp.org/call/4du5irxe>

*Note : Si problème avec le premier lien de visio, se connecter sur [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).
- Discussion sur les mises à jours des statuts et du règlement intérieur que nous voterons en Assemblée Générale extraordinaire le Dimanche 20 juillet après-midi : 
  - comparaison entre [les statuts actuels](https://foopgp.org/fr/about/status/) et [le projet](https://foopgp.org/fr/about/status-wip/) : https://foopgp.org/fr/about/status.diff.html
  - comparaison entre [l'actuel règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) et [le projet](https://foopgp.org/fr/about/rules-of-procedures-wip/) : <https://foopgp.org/fr/about/rules-of-procedures.diff.html>

### Ordres du soir

- Revue de presse.
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.

### Stingynalty

Pour le mois de juin 2025, ***stingynalty* = 1.06167781186449956876**

Pour le mois de juillet 2025, ***stingynalty* = 1.06698620092382206660**

Et donc pour juin, en appliquant la formule du [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/), **j = log₂(d+1) / *stingynalty*** :

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

*Au 2 Avril 2025, en utilisant le script ./tools/[gifts-stats.sh](http://gifts-stats.sh) dans la blockchain qui gère les jetons Ɉ.*

Total members: 32	-	Total certified members: 9 / 32
Total gifts:   56	-	Total certified gifts: 17 / 56
Total given:   50747.14 €	-	Total certified given: 47794.51 € / 50747.14 €
Total created: 187.338852 Ɉ	-	Total certified created: 81.095877 Ɉ / 187.338852 Ɉ

### Revue de presse

- <https://arstechnica.com/tech-policy/2025/07/pay-up-or-stop-scraping-cloudflare-program-charges-bots-for-each-crawl/>
- 7 People Now Have Elon Musk's Neuralink Brain Implant

  <https://www.pcmag.com/news/7-people-now-have-elon-musks-neuralink-brain-implant>

  The brain-computer interface lets those with cervical spinal cord injuries or ALS control a computer with their thoughts.

  <https://mamot.fr/@Khrys/114762393386506773>
- <https://arstechnica.com/ai/2025/06/anthropic-destroyed-millions-of-print-books-to-build-its-ai-models/>

  <https://orbital.horse/@emma/114745818011771505>
- 

### Activité récente

#### Au cœur de la réunion

- Il fait chaud !
- Petites améliorations sur le site :
  - Minification : réduit la tailles des pages de 15 à 25%.
  - Ajout d'un shortcode hugo pour inclure des pdf dans une page. Exemple : <https://foopgp.org/fr/event/2025-05-24-jdll-lyon/>
- Page d'invitation à l'AG du 20 juillet 2025 : <https://foopgp.org/fr/event/2025-07-20-ag/>
- Création d'une nouvelle liste de diffusion, pour ceux qui suivent de loin et ne souhaitent pas être spammé de blabla trop pointu, confer <https://foopgp.org/fr/contact/>

#### Actions en cours

- Rédaction de fiches missions, pour les bénévoles et plus.
- Collecte de laptop dotés de Windows obsolètes, et installation de système Debian GNU/Linux (en attendant nos  ISO complétées et configurées foopgp/OpenPGP). (Merci Laurent)
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

- Du 1er au 3 juillet : <https://2025.pass-the-salt.org/> à Lille.
- Les 3, 4 et 5 juillet : [rencontres économiques d'Aix-en-Provence](https://www.lesrencontreseconomiques.fr/) 
- Le Samedi 5 juillet : rencontres et fête de soutien Radio Zinzine.
- Du 6 au 11 juillet 2025 : [Campus des jardiniers du Nous](https://www.helloasso.com/associations/jardinier-e-s-du-nous/evenements/campus-des-jardiniers-du-nous-2025) avec Virginie Deleu.
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
