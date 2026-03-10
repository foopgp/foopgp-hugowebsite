---
title: "2025 S15 Rapport Hebdomadaire"
lang: fr
date: 2025-04-08T21:00:00+01:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/03f71eeb25b3bb4c028805feb70958ea36ee068d/content/french/assembly).*

---

***Présents :***  *Jean-Jacques Brucker, François Révol, Henri Geist.*

### Ordre du jour pour le prochain conseil, mardi 8 mars 2025 à 21h, en visio sur <https://cloud.foopgp.org/call/4du5irxe>

*Note : Si problème avec le premier lien de visio, se connecter sur [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp).*

Points habituels (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir

- Revue de presse.
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.

### Revue de presse

- Christine Lagarde aimerait des alternatives européennes à visa, mastercard, paypal, etc. : <https://www.frandroid.com/produits-android/smartphone/2574481_lunion-europeenne-aimerait-se-debarrasser-de-visa-mastercard-paypal-et-alipay>
- <https://www.zdnet.fr/actualites/eu-os-adopte-une-approche-en-couches-pour-sa-nouvelle-distribution-linux-destinee-au-secteur-public-408878.htm>
- <https://next.ink/179479/du-nord-de-la-france-a-jakarta-microsoft-a-bien-arrete-plusieurs-projets-de-data-centers/>
- deltachat améliore la sécurité en rapport à un (vieux et pas très gros) problème : <https://chaos.social/@delta/114303033544584627>
- Une responsable de l'EFF jette l'éponge OpenPGP (en même temps, l'EFF...) : <https://hachyderm.io/@evacide/114270532139712393>

### Activité récente

#### Au cœur de la réunion

- Préparation rencontre des [Etats Généreux du revenu de base](https://www.revenudebase.info/etats-genereux-revenu-de-base-2025/), WE de Pâques à Alfortville (94).
- Conception et validation graphique de la commande de 100 carnets pour compter ses jetons foopgp (en attendant de les inscrire sur la blockchain avec ses clé OpenPGP). cf: <https://monnaiesassociatives.blogspot.com/2009/01/le-carnet-du-jeu-faites-le-vous-mme.html>

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

- WE du 19 et 20 avril 2025 : [Les Etats Généreux du revenu de base](https://www.revenudebase.info/etats-genereux-revenu-de-base-2025/) à Alfortville (94)
- Mercredi 14 mai de 9 h 30 à 17 h à Gap : [ADELHA : Mobiliser, intégrer et fidéliser ses bénévoles.](https://ADELHA%20:%20Mobiliser,%20intégrer%20et%20fidéliser%20ses%20bénévoles.)
- Jeudi 24 avril de 17 h à 20 h à Gap : [formation de l'ADELHA : Dynamiser ses temps collectifs ](https://formation%20de%20l'ADELHA%20:%20Dynamiser%20ses%20temps%20collectifs%20)
- Jeudi 15 mai 2025 à Lyon : [Rencontres Professionnelles du Logiciel Libre](https://www.rpll.fr/)
- Jeudi 22 mai de 9 h 30 à 12 h 00 à Gap : [ADELHA : Penser ses fiches missions de bénévolat](https://docs.google.com/forms/d/e/1FAIpQLSfYEgB59lleVhW4ILt-r785Kjpv0-LdrRFxFbWrImAIXQBE9g/viewform)
- WE du 24 et 25 mai 2025 à Lyon : [Les 26es Journées du Logiciel Libre](https://www.jdll.org/contact-and-informations)
- WE du 25 au 27 juillet 2025 à Saint-Maixent-l'École (79400) : <https://decroissancelefestival.org/>
- Du jeudi 7 au dimanche 10 Août : Les résistantes 2025 en Normandie.
- camp CHATONS 7-10 août
- [... agenda du libre](https://www.agendadulibre.org)

---
