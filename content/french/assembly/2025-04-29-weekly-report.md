---
title: "2025 S18 Rapport Hebdomadaire"
lang: fr
date: 2025-04-29T20:30:00+01:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/03f71eeb25b3bb4c028805feb70958ea36ee068d/content/french/assembly).*

---

***Présents :*** *Laurent C, Jean-Jacques B, Didier L, Kélyan, Fred R, Henri G.*

### Ordre du jour pour le prochain conseil, mardi 6 mai 2025 à **21h**, en visio sur <https://cloud.foopgp.org/call/4du5irxe>

*Note : Si problème avec le premier lien de visio, se connecter sur [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp).*

- Points habituels (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir

- Point compta avec paheko
- Revue de presse.
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.

### Revue de presse

- Intel continue de plonger : <https://www.distributique.com/actualites/lire-trimestriels-intel-les-revenus-reculent-et-les-pertes-doublent-36159.html>  
  <https://www.distributique.com/actualites/lire-intel-vend-sa-participation-majoritaire-dans-son-activite-fpga-36157.html>  
  <https://www.linformaticien.com/63352-intel-sur-le-point-de-sabrer-encore-dans-ses-effectifs.html>
- Le Conseil Constitutionnel censure l'utilisation de l'IA pour la vidéo surveillance : <https://www.distributique.com/actualites/lire-la-prolongation-de-la-videosurveillance-a-base-d-ia-censuree-par-le-conseil-constitutionnel-36158.html>
- Amazon ralenti ses investissements dans ses data-centers : <https://www.distributique.com/actualites/lire-datacenters-aws-freine-a-son-tour-ses-investissements-36139.html>  
  Une chance pour proposer l'auto-hébergement
- Apple se prend une grosse amende : <https://www.distributique.com/actualites/lire-apple-france-ecope-d-une-amende-de-150-meteuro-36079.html>
- Et Meta aussi : <https://www.linformaticien.com/magazine/biz-it/63351-dma-lourdes-sanctions-prononcees-contre-apple-et-meta.html>
- HP continue de bloquer ses imprimantes si on utilise pas ses cartouches fabricants  : <https://www.distributique.com/actualites/lire-recours-collectif-hp-maintient-le-verrouillage-de-ses-imprimantes-36062.html>
- L’Éducation Nationale renouvelle ses licences Micro$oft : <https://www.distributique.com/actualites/lire-l-education-nationale-replonge-pour-4-ans-avec-microsoft-36058.html>
- Et *"en même temps"* le gouvernement veut mettre en œuvre le *"cloud souverain"* : <https://www.linformaticien.com/63336-un-appel-a-projets-pour-le-cloud-souverain.html>
- Microsoft Copilot espionne aussi OneDrive : <https://www.distributique.com/actualites/lire-copilot-s-invite-aussi-dans-microsoft-onedrive-36056.html>

### Activité récente

#### Au cœur de la réunion

- Retour avec Didier Loyens sur les dernières réunions du groupe altermonnaie, notamment celle avec Charles de <http://postmonetaire.fr/> (MOCICA).
- Frédéric essaie de nous expliquer les idées qu'il a développées et produites ces derniers mois. Il compte "vendre" des services Nextcloud avec des fonctionnalités expérimentales. cf: <https://zen.g1sms.fr/>
  UPlanet ORIGIN : <https://qo-op.com> ( <https://www.copylaradio.com> )
- Point compta : la future trésorière a eu un empêchement de dernière minute, et kélyan n'avait pas son micro. Donc le point compta avec présentation de paheko a été incomplet et est à refaire prochainement, notamment pour la future trésorière.
- Un nouveau stagiaire arrive pour 3 semaines en mai. On espère faire avec lui : industrialiser l'installation et la customisation de nos systèmes GNU/Linux (Debian) OpenPGP et foopgp friendly (faire des paquets).
- Nouveau post sur notre site : <https://foopgp.org/fr/blog/2025-04-28-mfrb-foucher/>

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

- Vendredi 2 mai : Rendez-vous avec le [LUG de Marseille](https://plugfr.org/reunions/2-mai-2025/), ou [Jérémy](https://mastodon.evolix.org/@jlecour) et [Grégory](https://mastodon.evolix.org/@gcolpart) feront une présentation sur les mises à jour sous Debian GNU/Linux.
- Vendredi 9 mai à 12h15 : Rendez-vous avec la députée de notre circonscription des Hautes-Alpes.
- Mercredi 14 mai de 9 h 30 à 17 h à Gap : [ADELHA : Mobiliser, intégrer et fidéliser ses bénévoles.](https://ADELHA%20:%20Mobiliser,%20int%C3%A9grer%20et%20fid%C3%A9liser%20ses%20b%C3%A9n%C3%A9voles.)
- Jeudi 15 mai 2025 à Lyon : [Rencontres Professionnelles du Logiciel Libre](https://www.rpll.fr/)
- Jeudi 22 mai de 9 h 30 à 12 h 00 à Gap : [ADELHA : Penser ses fiches missions de bénévolat](https://docs.google.com/forms/d/e/1FAIpQLSfYEgB59lleVhW4ILt-r785Kjpv0-LdrRFxFbWrImAIXQBE9g/viewform)
- WE du 24 et 25 mai 2025 à Lyon : [Les 26es Journées du Logiciel Libre](https://www.jdll.org/contact-and-informations)
- WE du 25 au 27 juillet 2025 à Saint-Maixent-l'École (79400) : <https://decroissancelefestival.org/>
- Du jeudi 7 au dimanche 10 Août : Les résistantes 2025 en Normandie.
- camp CHATONS 7-10 août
- [... agenda du libre](https://www.agendadulibre.org)

---
