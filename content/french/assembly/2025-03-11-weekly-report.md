---
title: "2025 S11 Rapport Hebdomadaire"
lang: fr
date: 2025-03-11T21:00:00+01:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/03f71eeb25b3bb4c028805feb70958ea36ee068d/content/french/assembly).*

---

***Présents :***  *Jean-Jacques Brucker, François Révol, Laurent Céard, Didier Loyens,, François Fron.*

### Ordre du jour pour le prochain conseil, mardi 18 mars 2025 à 21h, en visio sur <https://cloud.foopgp.org/call/4du5irxe>

*Note : Si problème avec le premier lien de visio, se connecter sur <https://meet.jit.si/foopgp>.*

En plus des points habituels :

- Pour démarrer le pôle communication : Brainstorming et dépôt dans un fichier référencé (sur notre cloud) de slogans, arguments et éléments de langages. Pour brochure et autres supports de com.

### Ordres du soir

- Revue de presse.
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.
- Retours sur l'AG de dimanche

### Revue de presse

- <https://www.zdnet.fr/actualites/open-source-linagora-obtient-la-condamnation-de-bluemind-pour-contrefacon-407487.htm>

  <https://framapiaf.org/@marnic/114122489850650429>
- <https://www.tomshardware.com/peripherals/printers/brother-accused-of-locking-down-third-party-printer-ink-cartridges-via-firmware-updates-removing-older-firmware-versions-from-support-portals>

  <https://poly.cybre.city/objects/de7b2c12-75ed-487b-bc8d-7d68eb20d4b5>

  <https://datanews.levif.be/actualite/monde/legislation-monde/brother-dement-avoir-bloque-des-imprimantes-equipees-de-cartouches-dencre-alternatives/>
- Hack :
  - "TrackingFiles" : quand les données de géolocalisation de dizaines de millions de Français se retrouvent en vente

    <https://www.francetvinfo.fr/internet/securite-sur-internet/enquete-trackingfiles-quand-les-donnees-de-geolocalisation-de-dizaines-de-millions-de-francais-se-retrouvent-en-vente_7101777.html>
  - <https://www.linformaticien.com/magazine/cybersecurite/63108-orange-victime-d-une-fuite-de-donnees.html>
  - <https://www.distributique.com/actualites/lire-intel-lance-un-pogramme-pour-tracer-ses-puces-36018.html>
- Sécurité :
  - <https://www.linformaticien.com/magazine/cybersecurite/63126-trump-ordonne-l-arret-de-la-surveillance-des-hackers-russes.html>
  - <https://www.linformaticien.com/magazine/cybersecurite/63122-des-pirates-exploitent-des-pilotes-obsoletes.html>
  - <https://www.distributique.com/actualites/lire-annuels-mailinblack-la-croissance-ralentit-malgre-l-enrichissement-de-l-offre-35971.html>
- Quantique : <https://www.linformaticien.com/magazine/infra/63118-puce-quantique-aws-presente-ocelot.html>
- Les DVD Warner s'effacent déjà… <https://www.joblo.com/warner-bros-dvds-dont-work/>

  <https://hackers.town/@drwho/114100214099288355>
- <https://datanews.levif.be/actualite/securite/ntt-communications-piratee/>
- IA :
  - <https://www.linformaticien.com/magazine/tendances/941-ia/63143-openai-subventionne-un-consortium-sur-l-ia.html>
  - <https://www.linformaticien.com/magazine/tendances/941-ia/63125-les-entreprises-inondees-de-faux-cv-merci-l-ia.html>
  - <https://www.distributique.com/actualites/lire-zoom-et-google-renforcent-les-fonctions-d-ia-de-leurs-apps-de-videoconference-35972.html>
- <https://www.linformaticien.com/924-republique-numerique/63150-cisco-veut-former-1-5-million-d-europeens-au-numerique-d-ici-2030.html>
- Cloud :
  - <https://www.linformaticien.com/magazine/cloud/63153-salesforce-etend-son-partenariat-avec-google-cloud.html>
  - <https://www.linformaticien.com/magazine/cloud/63146-une-nouvelle-norme-pour-le-cloud-souverain.html>
  - <https://www.linformaticien.com/magazine/tendances/951-reseaux-sociaux/63129-clap-de-fin-pour-skype-au-profit-de-teams.html>
  - <https://www.distributique.com/actualites/lire-les-frais-du-stockage-cloud-s-envolent-36017.html>
  - <https://www.distributique.com/actualites/lire-le-plan-de-microsoft-pour-la-sanctuarisation-des-donnees-cloud-en-europe-est-finalise-35997.html>
  - <https://www.distributique.com/actualites/lire-services-infrastructures-cloud-les-depenses-progresseront-encore-fortement-en-2025-35965.html>

### Activité récente

#### Au cœur de la réunion

- Retour sur l'AG de dimanche, relecture du PV[^PV] et retour sur nos problèmes comptables (pas de vrai bilan présenté durant l'AG)
- Impatience de François de faire nos premières transaction on-chain et de faire des tests !

[^PV]: Procès Verbal d’Assemblée Générale Ordinaire du 9 mars 2025: <https://foopgp.org/fr/assembly/2025-03-09-report-ago/>

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

- mardi 18 mars de 9 h 30 à 17 h à Gap : [formation de l'ADELHA : Initiation à la comptabilité](https://docs.google.com/forms/d/e/1FAIpQLSfYEgB59lleVhW4ILt-r785Kjpv0-LdrRFxFbWrImAIXQBE9g/viewform) [associative](https://docs.google.com/forms/d/e/1FAIpQLSfYEgB59lleVhW4ILt-r785Kjpv0-LdrRFxFbWrImAIXQBE9g/viewform)
- samedi 03 avril de 17 h à 20 h à Gap : [formation de l'ADELHA : Gérer une association](https://docs.google.com/forms/d/e/1FAIpQLSfYEgB59lleVhW4ILt-r785Kjpv0-LdrRFxFbWrImAIXQBE9g/viewform)
- WE du 19 et 20 avril 2025 : [Les Etats Généreux du revenu de base](https://www.revenudebase.info/etats-genereux-revenu-de-base-2025/) à Alfortville (94)
- Jeudi 24 avril de 17 h à 20 h à Gap : [formation de l'ADELHA : Dynamiser ses temps collectifs ](https://formation%20de%20l'ADELHA%20:%20Dynamiser%20ses%20temps%20collectifs%20)
- Jeudi 15 mai 2025 à Lyon : [Rencontres Professionnelles du Logiciel Libre](https://www.rpll.fr/)
- WE du 24 et 25 mai 2025 à Lyon : [Les 26es Journées du Logiciel Libre](https://www.jdll.org/contact-and-informations)
- WE du 25 au 27 juillet 2025 à Saint-Maixent-l'École (79400) : <https://decroissancelefestival.org/>
- Du jeudi 7 au dimanche 10 Août : Les résistantes 2025 en Normandie.
- camp CHATONS 7-10 août
- [... agenda du libre](https://www.agendadulibre.org)

---
