---
title: "2025 S04 Rapport Hebdomadaire"
lang: fr
date: 2025-01-21T21:00:00+01:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/acff16d0f3efc196aea1bdc3baca5a266526b0f8/content/french/assembly).*

---

***Présents :***  *Henri Geist, Jean-Jacques Brucker, Laurent Céard.*

***Excusé****: Didier Loyens.*

### Ordre du jour pour le prochain conseil, mardi 28 janvier 2025 à 21h, en visio sur https://cloud.foopgp.org/call/4du5irxe

* En plus des points habituels : Finaliser la préparation de l'AG du dimanche 9 mars à 16h. Notamment trouver et préparer tous les points de l'ordre du jour. 

### Ordres du soir

- Revue de presse.
- Préparation AG du 9 mars
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.

#### Jetons Ɉ pour l'exercice 2024

Vérifications en cours

### Revue de presse

- <https://www.linformaticien.com/magazine/tendances/941-ia/62931-biden-renforce-encore-les-controles-sur-les-exportations-de-puces-d-ia.html>
- <https://www.linformaticien.com/magazine/tendances/941-ia/62928-l-afp-et-mistral-ai-partenaires.html>
- <https://www.cybernetica.fr/j-1-avant-la-fin-de-linternet-tel-que-nous-lavons-toujours-connu-2/>
- <https://www.linformaticien.com/magazine/cybersecurite/62924-kiabi-victime-d-une-attaque-par-credential-stuffing.html>

### Activité récente

#### Au cœur de la réunion

- Signalement auprès de la CNIL. Absence de François Revol pour obtenir des conseils. Recherche DPO ?
- Travaux des stagiaires : sur le serveur, sur les git hooks.
- Préparation de l'AG
  - Si une personne n'a pas signé son adhésion et payé sa cotisation elle ne recevra pas le DU mensuel, OK. Mais pourra-t-elle encore échanger avec les membres actifs ? ou doit-on l'interdire ?
  - Les personnes moralement non responsables (eg enfants, tutelles) peut-elle "donner" procuration à leur tuteur ?
  - Présenter un schéma de fonctionnement (partie 3 de livre blanc !? )
  - Aligner les dates d'exercice correspondant aux années civil.
  - Mettre en place une redistribution de jetons (revenu de base) ?
  - Descendre l'exposant de pouvoir à 1/2 ? (vote "quadratique")
  - Discuter d'éventuelles mises à jours Statuts +RI pour une AGE en automne
  - ... Trouver d'autres questions pour l'ordre du jour à clôturer avec la convocation fin janvier.

#### Actions terminées

- Mise en place de notre propre serveur de clé HKP <http://keys.foopgp.org:11371/pks/lookup?op=index&search=udid4> (afin de ne pas dépendre de keys.openpgp.org qui minimalise systématiquement les certificats).
- Mise en place des dépôts git :
  - <https://codeberg.org/foopgp/foopgp-accounting> pour gérer les comptes en euros €.
  - <https://codeberg.org/foopgp/foopgp-members> pour gérer les membres et les comptes en jetons Ɉ.

#### Actions en cours

**NOTE: Pour enregistrer et suivre la résolution des bugs sur les logiciels produits par l'association. Nous pouvons (et devrions !) utiliser l'outillage intégré à codeberg, eg : https://codeberg.org/foopgp/pgpid/issues**

- Numérisation de l'inscription pour appel à cotisation : https://foopgp.org/fr/about/donate/
- Revue, nettoyage et consolidation des bash-libs avec Henri.
- Maintenance de notre propre serveur de clé HKP <http://keys.foopgp.org:11371/pks/lookup?op=index&search=udid4> (afin de ne pas dépendre de [keys.openpgp.org](http://keys.openpgp.org) qui minimalise systématiquement les certificats).

###### AMF

L'AMF a répondu à la question : *quelles sont les obligations réglementaires auxquelles nous pourrons être assujettis si nous commençons à utiliser nos jetons de pouvoir comme monnaie d'échange ?* :

* *Nous vous invitons à contacter un conseiller juridique qui pourra vous éclairer sur la réglementation applicable à votre projet, l’AMF ne pouvant jouer ce rôle.*
* *Vous trouverez par ailleurs des informations concernant la réglementation applicable aux Prestataires de services sur actifs numériques sur [la page suivante](https://www.amf-france.org/fr/espace-professionnels/fintech/mes-relations-avec-lamf/obtenir-un-enregistrement-un-agrement-psan).*

Notre conseiller juridique nous a renvoyé sur les pages 28-29 de [la publication du Journal Officiel de l'UE L150/40](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) du [9 juin 2023](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=OJ:L:2023:150:TOC). Tout en résumant certaines des nombreuses "exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme" de l'article 4, titre II.

Livre blanc commencé :

* https://foopgp.org/fr/blog/2024-08-15-whitepaper-part1/
* https://foopgp.org/fr/blog/2024-09-01-whitepaper-part2/

### Actions à mener (TODO list)

- Appel à cotisation pour le nouvel exercice (dépend de l'avancement  https://foopgp.org/fr/about/donate/ )
- Commande de bannière  (slogan : ***Liberté ? Vie privée ? Responsabilité ? Maîtrisez vos données ! )***
- Packager les bash-libs puis pgpid pour debian (et ses dérivés).
- Étudier les outils et infrastructures utilisé par les notaires, notamment Genapi/Septeo, pour connaître leur attentes et (in)satisfactions.
- Étudier et cibler laposte.net, déjà en charge de confidentialité avec notamment les médecin. Exemple : https://www.apicrypt.org/

### Agenda

- Sat. 1 & Sun. 2 February 2025 : [FOSDEM, Brussels](https://fosdem.org/2025/)
- 5 & 6 février 2025 : [tech-fest](https://www.tech-fest.fr/fr/) à Grenoble
- 20 Février 2025 : [AlpOSS à Échirolles](https://alposs.fr/) - L’événement Isérois de l’écosystème Open Source
- Début Mars : Assemblée Générale foopgp (sur un week-end, lequel à préciser)​
- [... agenda du libre](https://www.agendadulibre.org)

---
