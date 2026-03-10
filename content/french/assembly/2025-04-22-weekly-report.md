---
title: "2025 S17 Rapport Hebdomadaire"
lang: fr
date: 2025-04-22T21:00:00+01:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/03f71eeb25b3bb4c028805feb70958ea36ee068d/content/french/assembly).*

---

***Présents :****  Laurent Céard, Jean-Jacques Brucker, François Révol.*

### Ordre du jour pour le prochain conseil, mardi 29 avril 2025 à **20h30**, en visio sur <https://cloud.foopgp.org/call/4du5irxe>

*Note : Si problème avec le premier lien de visio, se connecter sur [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp).*

- **Dés 20h30** : Comptes de résultat et Bilans arrivant enfin : **Début de préparation de l'AG extraordinaire de Juin**. Et donc discussions stratégiques sur la direction de l'association.
- Suivi de (après 21h) : Points habituels (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir

- Revue de presse.
- Point sur les participations aux forums ou salons (Notamment retour sur le WE [du mfrb](https://youtu.be/ZoWI5gXFIlw?t=1758)).
- Actions réalisés, en cours, à prévoir.

### Revue de presse

- Quand on dit qu'OpenPGP permettrait de lutter efficacement contre le hameçonnage : <https://www.zdnet.fr/actualites/ce-courriel-google-semble-authentique-ne-cliquez-pas-il-pourrait-sagir-dune-arnaque-412437.htm>
- Le Cloud souverain : <https://www.linformaticien.com/63336-un-appel-a-projets-pour-le-cloud-souverain.html>  
  ou "cloud de confiance" : <https://www.distributique.com/actualites/lire-le-serpent-de-mer-cloud-de-confiance-refait-surface-avec-une-ambition-europeenne-36126.html>
- Synology restreint le choix des disques : <https://www.distributique.com/actualites/lire-les-nas-synology-arbitrairement-associes-aux-disques-durs-maison-36135.html>
- Pare-feu et blockchain : <https://www.linformaticien.com/magazine/tendances/943-blockchain/63328-un-pare-feu-pour-la-blockchain.html>
- L'emploi et l'IA : <https://www.linformaticien.com/magazine/tendances/941-ia/63324-40-des-emplois-impactes-en-bien-ou-en-mal-par-l-ia-d-ici-2033.html>
- Intel et les "PC modulaires" : <https://www.distributique.com/actualites/lire-intel-veut-des-ordinateurs-portables-aussi-modulaires-que-les-pc-de-bureau-36129.html>
- <https://www.francetvinfo.fr/internet/google/google-a-bien-monopolise-le-marche-de-la-publicite-sur-internet-tranche-la-justice-americaine_7196691.html>
- Les ventes de PC neuf en hausse : <https://www.distributique.com/actualites/lire-les-ventes-de-pc-en-hausse-de-4-8-au-1e-trimestre-2025-36120.html>  
  Alors qu'on pourrait recycler...
- La Chine et l'extraction des terres rares : <https://www.distributique.com/actualites/lire-la-chine-a-lance-la-bataille-pour-le-controle-des-terres-rares-36108.html>  
  Alors qu'on pourrait recycler...
- Micro$oft pousse (force) à basculer vers Office 365 (donc Cloud avec abonnement) : <https://www.distributique.com/actualites/lire-microsoft-pousse-ses-clients-vers-office-365-36100.html>  
  Et fête ses 50 ans : <https://www.distributique.com/actualites/lire-microsoft-fete-ses-50-ans-avec-serenite-36096.html>
- La Commission européenne a commencé à fournir des téléphones jetables (burner) et des ordinateurs portables vierges à ses employés en partance pour les États-Unis, d’après le Financial Times. Quatre sources ont confirmé au quotidien économique cette nouvelle politique, qui était…

  <https://www.blast-info.fr/articles/2025/la-commission-europeenne-se-mefie-de-lespionnage-americain-fuV_OoN9SmmDufuGLk84GQ>
- Meta a enfreint la loi en acquérant des concurrents émergents afin de maintenir son monopole sur les réseaux sociaux, affirme la FTC. Les régulateurs cherchent à contraindre Meta à céder Instagram et WhatsApp <https://www.nytimes.com/2025/04/13/technology/meta-ftc-trial-whatsapp-instagram.html> 

  <https://mastodon.social/@Le_M_Poireau/114330693452158589>
- <https://hachyderm.io/@evacide/114270532139712393> 

### Activité récente

#### Au cœur de la réunion

- Les carnets pour compter les échanges en djis (Ɉ) sont arrivés. Ils sont beau, ils
  sont blancs.
- [Retour du mfrb](https://www.revenudebase.info/etats-genereux-revenu-de-base-2025/) : Je (Jean-Jacques) pense avoir assuré pour ma première intervention filmé, elle devra être disponible sur leur  chaîne youtube :  <https://www.youtube.com/@RevenudeBaseFR> .  Réseautage :
  - Vincent Liegey : <http://www.projet-decroissance.net/>
  - Patrick Albert : <https://silogora.org/author/patrick-albert/>
  - la marmite rouge : <https://lamarmiterouge.fr/>
  - deb'acteur : <https://www.debacteur.fr/>
  - Tera : <https://www.tera.coop/>
  - Virginie Deleu : <https://www.youtube.com/watch?v=S-0IkH68JPw>

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

- Jeudi 24 avril de 17 h à 20 h à Gap : [formation de l'ADELHA : Dynamiser ses temps collectifs ](https://formation%20de%20l'ADELHA%20:%20Dynamiser%20ses%20temps%20collectifs%20).
- Mercredi 14 mai de 9 h 30 à 17 h à Gap : [ADELHA : Mobiliser, intégrer et fidéliser ses bénévoles.](https://ADELHA%20:%20Mobiliser,%20intégrer%20et%20fidéliser%20ses%20bénévoles.)
- Jeudi 15 mai 2025 à Lyon : [Rencontres Professionnelles du Logiciel Libre](https://www.rpll.fr/)
- Jeudi 22 mai de 9 h 30 à 12 h 00 à Gap : [ADELHA : Penser ses fiches missions de bénévolat](https://docs.google.com/forms/d/e/1FAIpQLSfYEgB59lleVhW4ILt-r785Kjpv0-LdrRFxFbWrImAIXQBE9g/viewform)
- WE du 24 et 25 mai 2025 à Lyon : [Les 26es Journées du Logiciel Libre](https://www.jdll.org/contact-and-informations)
- WE du 25 au 27 juillet 2025 à Saint-Maixent-l'École (79400) : <https://decroissancelefestival.org/>
- Du jeudi 7 au dimanche 10 Août : Les résistantes 2025 en Normandie.
- camp CHATONS 7-10 août
- [... agenda du libre](https://www.agendadulibre.org)

---
