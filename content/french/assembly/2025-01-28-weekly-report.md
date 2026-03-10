---
title: "2025 S05 Rapport Hebdomadaire"
lang: fr
date: 2025-01-28T21:00:00+01:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/acff16d0f3efc196aea1bdc3baca5a266526b0f8/content/french/assembly).*

---

***Présents :***  *François Revol, Jean-Jacques Brucker, Laurent Céard.*

***Excusé****: Didier Loyens.*

### Ordre du jour pour le prochain conseil, mardi 4 février 2025 à 21h, en visio sur https://cloud.foopgp.org/call/4du5irxe

* En plus des points habituels : Finaliser la préparation de l'AG du dimanche 9 mars à 16h. Notamment les points de l'ordre du jour.

### Ordres du soir

- Revue de presse.
- Préparation AG du 9 mars
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.

### Revue de presse

- [https://www.wedemain.fr/respirer/quitter-x-facebook-instagram-loccasion-de-repenser-nos-outils-numeriques](https://www.wedemain.fr/respirer/quitter-x-facebook-instagram-loccasion-de-repenser-nos-outils-numeriques/?utm_source=firefox-newtab-fr-fr)
- [https://www.gqmagazine.fr/article/pourquoi-vous-devriez-arreter-dessayer-doptimiser-votre-vie-en-2025](https://www.gqmagazine.fr/article/pourquoi-vous-devriez-arreter-dessayer-doptimiser-votre-vie-en-2025?utm_source=firefox-newtab-fr-fr)
- <https://www.linformaticien.com/magazine/tendances/941-ia/62970-deepseek-bouscule-les-leaders-de-l-ia-et-interroge.html>
- <https://www.linformaticien.com/924-republique-numerique/62974-l-estonie-a-une-administration-100-numerique.html>
- <https://www.zdnet.fr/pratique/confidentialite-comment-ajouter-la-protection-pgp-sur-un-smartphone-android-401303.htm>
- <https://www.linformaticien.com/magazine/cybersecurite/62964-des-decideurs-qui-ont-peur-de-faire-les-mises-a-jour.html>
- <https://www.linformaticien.com/magazine/tendances/62961-ifixit-et-logitech-partenaires-dans-la-reparabilite.html>
- <https://www.linformaticien.com/magazine/tendances/941-ia/62958-musk-sceptique-sur-le-stargate-le-projet-d-ia-de-trump.html>
- <https://www.mediapart.fr/journal/france/270125/prise-au-piege-de-son-logiciel-l-assurance-maladie-coupe-dans-les-indemnites-de-milliers-d-usagers>
- <https://distrowatch.com/weekly-mobile.php?issue=20250127#sitenews>
- <https://www.numerama.com/tech/1891180-lucie-que-sest-il-passe-avec-lia-francaise-qui-repond-nimporte-quoi.html>
- <https://www.frandroid.com/culture-tech/intelligence-artificielle/2484296_lia-francaise-lucie-pourquoi-son-lancement-tourne-au-fiasco>

### Activité récente

#### Au cœur de la réunion

- proposition de stage : <https://cloud.foopgp.org/s/QLQXXAKscByRwfD>
- Travaux des stagiaires : Améliorations du site web + refonte de la page de génération des udid4 + mise en place d'une page pour calculer ses jetons en fonctions de ses dons.
- Activités et propositions un peu frénétique de notre ami Alain.
- Préparation de l'AG
  - Discussion : Si une personne n'a pas signé son adhésion et payé sa cotisation elle ne recevra pas le DU mensuel, OK. Mais pourra-t-elle encore échanger avec les membres actifs ? ou doit-on l'interdire ?
  - Discussion : Les personnes moralement non responsables (eg enfants, tutelles) peut-elle "donner" procuration à leur tuteur ?
  - Présentation : (en plus du bilan moral et financier) Présenter un schéma de fonctionnement (partie 3 de livre blanc !? )
  - Décision : Aligner les dates d'exercice correspondant aux années civiles ?
  - Décision : Mettre en place une redistribution de jetons (revenu de base) ?
  - Décision : Descendre l'exposant de pouvoir à 1/2 ? (vote "quadratique") ?
  - Décision : Désigner une co-trésorière supplémentaire.
  - Discussion : sur d'éventuelles mises à jours Statuts +RI pour une AGE en automne.
  - ... Trouver d'autres questions pour l'ordre du jour à clôturer maintenant.
- <https://colter.social/@nicolasvivant/113833922011074288>  France Numérique Libre

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
- 20 février 2025 : [AlpOSS à Échirolles](https://alposs.fr/) - L’événement Isérois de l’écosystème Open Source
- Dimanche 9 mars 2025 après-midi : Assemblée Générale foopgp. En présentiel et en visio.
- 19 et 20 avril 2025 : [Les Etats Généreux du revenu de base](https://www.revenudebase.info/etats-genereux-revenu-de-base-2025/) à Alfortville (94)
- [... agenda du libre](https://www.agendadulibre.org)

---
