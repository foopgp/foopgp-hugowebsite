---
title: "2025 S06 Rapport Hebdomadaire"
lang: fr
date: 2025-02-04T21:00:00+01:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/60a93d3da6bb2627f46a6abb60c3c769da951a70/content/french/assembly).*

---

***Présents :***  *Henri Geist, Jean-Jacques Brucker, Didier Loyens, Laurent Céard.*

***Excusé :*** *Frédéric Renault.*

### Ordre du jour pour le prochain conseil, mardi 11 février 2025 à 21h, en visio sur https://cloud.foopgp.org/call/4du5irxe

* Discuter des modèles d'affaire (business model)
* Petits retours du déplacement de François au FOSDEM ?

### Ordres du soir

- Revue de presse.
- Préparation AG du 9 mars
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.

### Revue de presse

- <https://www.challenges.fr/entreprise/tech-numerique/comment-les-millions-du-chinois-deepseek-court-circuitent-les-milliards-du-stargate-americain_597935>
- <https://www.lesnumeriques.com/intelligence-artificielle/deepseek-interdite-en-italie-l-ia-chinoise-se-retrouve-sous-le-feu-des-regulateurs-europeens-n232634.html>
- <https://www.blog-nouvelles-technologies.fr/318195/deepseek-r1-ia-open-source-chine/>
- <https://www.ladepeche.fr/2025/01/31/vers-une-ia-qui-ne-grille-pas-la-planete-le-sommet-mondial-en-france-pour-une-intelligence-artificielle-durable-12482808.php>

### Activité récente

#### Au cœur de la réunion

- Stage validé : <https://cloud.foopgp.org/s/QLQXXAKscByRwfD>
- Travaux des stagiaires : améliorations du site, [refonte de la page de génération des udid4](https://foopgp.org/udid/) + mise en place d'une [page pour calculer ses jetons en fonctions de ses dons](https://foopgp.org/dje-calculator/).
- <https://anarc.at/#top>
  - <https://anarc.at/blog/2017-10-16-strategies-offline-pgp-key-storage/>
  - <https://anarc.at/blog/2017-10-26-comparison-cryptographic-keycards/>
  - <https://anarc.at/blog/2019-07-30-pgp-flooding-attacks/>
  - <https://anarc.at/blog/2023-08-09-openpgp-key-transition/>
- Comptable satisfait des fichiers envoyés, vérification en cours des justificatifs.
- Préparation de l'AG
  - Discussion : Si une personne n'a pas signé son adhésion et payé sa cotisation elle ne recevra pas le DU mensuel, OK. Mais pourra-t-elle encore échanger avec les membres actifs ? ou doit-on l'interdire ?
  - Discussion : Les personnes moralement non responsables (eg enfants, tutelles) peut-elle "donner" procuration à leur tuteur ?
  - Présentation : (en plus du bilan moral et financier) Présenter un schéma de fonctionnement (partie 3 de livre blanc !? ) 
  - Décision : Aligner les dates d'exercice correspondant aux années civiles ?
  - Décision : Mettre en place une redistribution de jetons (revenu de base) ?
  - Décision : Descendre l'exposant de pouvoir à 1/2 ? (vote "quadratique") ?
  - Discussion : sur d'éventuelles mises à jours Statuts +RI pour une AGE en automne.
- Intérêt des clés matériels de sécurité (yubikeys, nitrokeys, ...)
  - sécurité (accès et confidentialité) plus forte, moins risqué et moins coûteuse.
  - Traçabilité des informations.
  - Lutte contre les escroqueries, e.g. usurpation d'identité.
- Début de remue-méninge sur des modèles d'affaire : formations à l'utilisation de clés de sécurité en entreprises.

#### Actions terminées

- Mise en place de notre propre serveur de clé HKP <http://keys.foopgp.org:11371/pks/lookup?op=index&search=udid4> (afin de ne pas dépendre de keys.openpgp.org qui minimalise systématiquement les certificats).
- Mise en place des dépôts git :
  - <https://codeberg.org/foopgp/foopgp-accounting> pour gérer les comptes en euros €.
  - <https://codeberg.org/foopgp/foopgp-members> pour gérer les membres et les comptes en jetons Ɉ.

###### AMF

L'AMF a répondu à la question : *quelles sont les obligations réglementaires auxquelles nous pourrons être assujettis si nous commençons à utiliser nos jetons de pouvoir comme monnaie d'échange ?* :

* *Nous vous invitons à contacter un conseiller juridique qui pourra vous éclairer sur la réglementation applicable à votre projet, l’AMF ne pouvant jouer ce rôle.*
* *Vous trouverez par ailleurs des informations concernant la réglementation applicable aux Prestataires de services sur actifs numériques sur [la page suivante](https://www.amf-france.org/fr/espace-professionnels/fintech/mes-relations-avec-lamf/obtenir-un-enregistrement-un-agrement-psan).*

Notre conseiller juridique nous a renvoyé sur les pages 28-29 de [la publication du Journal Officiel de l'UE L150/40](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) du [9 juin 2023](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=OJ:L:2023:150:TOC). Tout en résumant certaines des nombreuses "exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme" de l'article 4, titre II.

Livre blanc commencé : <https://foopgp.org/fr/about/white-book/>

### Actions à mener (TODO list)

- Appel à cotisation pour le nouvel exercice (dépend de l'avancement  https://foopgp.org/fr/about/donate/ )
- Commande de bannière  (slogan : ***Liberté ? Vie privée ? Responsabilité ? Maîtrisez vos données ! )***
- Packager les bash-libs puis pgpid pour debian (et ses dérivés).
- Étudier les outils et infrastructures utilisé par les notaires, notamment Genapi/Septeo, pour connaître leur attentes et (in)satisfactions.
- Étudier et cibler laposte.net, déjà en charge de confidentialité avec notamment les médecin. Exemple : https://www.apicrypt.org/

### Agenda

- 5 & 6 février 2025 : [tech-fest](https://www.tech-fest.fr/fr/) à Grenoble
- 20 février 2025 : [AlpOSS à Échirolles](https://alposs.fr/) - L’événement Isérois de l’écosystème Open Source
- Dimanche 9 mars 2025 : 14h Démonstrations - 16 h: Assemblée Générale
- 19 et 20 avril 2025 : [Les Etats Généreux du revenu de base](https://www.revenudebase.info/etats-genereux-revenu-de-base-2025/) à Alfortville (94)
- [... agenda du libre](https://www.agendadulibre.org)

---
