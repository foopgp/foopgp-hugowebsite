---
title: "2025 S21 Rapport Hebdomadaire"
lang: fr
date: 2025-05-20T20:30:00+01:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/03f71eeb25b3bb4c028805feb70958ea36ee068d/content/french/assembly).*

---

***Présents :*** *Jean-Jacques B, Didier L, François R.*

### Ordre du jour pour le prochain conseil, mardi 27 mai 2025 à **21h00**, en visio sur <https://cloud.foopgp.org/call/4du5irxe>

*Note : Si problème avec le premier lien de visio, se connecter sur [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir

- Dernières préparations pour notre participation aux JDDL de Lyon : 
  - <https://pretalx.jdll.org/jdll2025/talk/LYVR3T/>
  - <https://pretalx.jdll.org/jdll2025/talk/review/HHADRMV3YUCQS8N73BFLBZZJDXNQ3LTN>
- Revue de presse.
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.

### Stingynalty

Pour le mois de mai 2025, ***stingynalty* = 1.05639583270099459579**

Et donc en appliquant la formule du [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/), **j = log₂(d+1) / *stingynalty*** :

| dons initial en € | quantité de jetons Ɉ |
|-------------------|----------------------|
| 1.00 €            | .946614 Ɉ            |
| 1.08 €            | 1.000000 Ɉ           |
| 2.00 €            | 1.500349 Ɉ           |
| 3.33 €            | 2.000000 Ɉ           |
| 5.00 €            | 2.446963 Ɉ           |
| 8.00 €            | 3.000000 Ɉ           |
| 10.00 €           | 3.274749 Ɉ           |
| 17.71 €           | 4.000000 Ɉ           |
| 20.00 €           | 4.157832 Ɉ           |
| 37.91 €           | 5.000000 Ɉ           |
| 50.00 €           | 5.369602 Ɉ           |
| 79.92 €           | 6.000000 Ɉ           |
| 100.00 €          | 6.302761 Ɉ           |
| 167.29 €          | 7.000000 Ɉ           |
| 200.00 €          | 7.242599 Ɉ           |
| 348.99 €          | 8.000000 Ɉ           |
| 500.00 €          | 8.489873 Ɉ           |
| 726.89 €          | 9.000000 Ɉ           |
| 1000.00 €         | 9.435124 Ɉ           |
| 1512.80 €         | 10.000000 Ɉ          |

Rappel, si vous avez déjà fais un don identifié (aka cotisation libre), la formule pour calculer la quantité de nouvelles valeurs en Ɉ est :  
**jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**  
  
Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/).

#### Chiffres de l'association

*Au 2 Avril 2025, en utilisant le script ./tools/[gifts-stats.sh](http://gifts-stats.sh) dans la blockchain qui gère les jetons Ɉ.*

Total members: 32	-	Total certified members: 9 / 32

Total gifts:   56	-	Total certified gifts: 17 / 56

Total given:   50747.14 €	-	Total certified given: 47794.51 € / 50747.14 €

Total created: 187.338852 Ɉ	-	Total certified created: 81.095877 Ɉ / 187.338852 Ɉ

### Pas de Revue de presse ce soir

### Activité récente

#### Au cœur de la réunion

- Présentation de la blockchain gérant les comptes des adhérents à l'association, à partir de laquelle sont calculés les chiffres telle la masse monétaire cité plus haut.

#### Actions en cours

- Génération d'ISO Debian, configurées foopgp/OpenPGP. (piseb)
- Rédaction de fiches missions, pour les bénévoles et plus. (Kelyan et JJ)
- Collecte de laptop doté de windows obsolètes, et installation de système Debian GNU/Linux (en attendant nos  ISO complétée et configurée foopgp/OpenPGP). (Merci Laurent)

#### Actions terminées

- Génération des paquets : onak (amélioration), bash-libs et pgpid (Merci piseb)
- Mise en forme des carnets d'échange en Ɉ, que l'on pourra utiliser en attendant que la 1ère blockchain qui les gère soit pleinement opérationnelle. (Merci François)
- Séparation du bulletin d'adhésion en deux parties distinctes (Merci Kelyan) :
  - Une pour l'adhésion à proprement parler, avec la cotisation libre entraînant l'attribution de nouveau jetons.
  - Une pour les dons à proprement parler, entraînant l'émission d'un rescrit fiscal.
- Mise à jour de notre instance NextCloud (Merci Laurent et Frédéric)

###### AMF

L'AMF a répondu à la question : *quelles sont les obligations réglementaires auxquelles nous pourrons être assujettis si nous commençons à utiliser nos jetons de pouvoir comme monnaie d'échange ?* :

* *Nous vous invitons à contacter un conseiller juridique qui pourra vous éclairer sur la réglementation applicable à votre projet, l’AMF ne pouvant jouer ce rôle.*
* *Vous trouverez par ailleurs des informations concernant la réglementation applicable aux Prestataires de services sur actifs numériques sur [la page suivante](https://www.amf-france.org/fr/espace-professionnels/fintech/mes-relations-avec-lamf/obtenir-un-enregistrement-un-agrement-psan).*

Notre conseiller juridique nous a renvoyé sur les pages 28-29 de [la publication du Journal Officiel de l'UE L150/40](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) du [9 juin 2023](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=OJ:L:2023:150:TOC). Tout en résumant certaines des nombreuses "exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme" de l'article 4, titre II.

Livre blanc commencé : <https://foopgp.org/fr/about/white-book/>

### Actions à mener (TODO list)

- Appel à cotisation pour le nouvel exercice (dépend de l'avancement  https://foopgp.org/fr/about/donate/ )
- Commande de bannière  (slogan : ***Liberté ? Vie privée ? Responsabilité ? Maîtrisez vos données ! )***
- Étudier les outils et infrastructures utilisé par les notaires, notamment Genapi/Septeo, pour connaître leur attentes et (in)satisfactions.
- Étudier et cibler laposte.net, déjà en charge de confidentialité avec notamment les médecin. Exemple : https://www.apicrypt.org/

### Agenda

- Jeudi 22 mai de 9 h 30 à 12 h 00 à Gap : [ADELHA : Penser ses fiches missions de bénévolat](https://docs.google.com/forms/d/e/1FAIpQLSfYEgB59lleVhW4ILt-r785Kjpv0-LdrRFxFbWrImAIXQBE9g/viewform)
- WE du 24 et 25 mai 2025 à Lyon : [Les 26es Journées du Logiciel Libre](https://www.jdll.org/contact-and-informations)
- WE du 25 au 27 juillet 2025 à Saint-Maixent-l'École (79400) : <https://decroissancelefestival.org/>
- Du jeudi 7 au dimanche 10 Août : Les résistantes 2025 en Normandie.
- camp CHATONS 7-10 août
- [... agenda du libre](https://www.agendadulibre.org)

---
