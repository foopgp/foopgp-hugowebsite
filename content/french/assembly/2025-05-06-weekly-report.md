---
title: "2025 S19 Rapport Hebdomadaire"
lang: fr
date: 2025-05-06T20:30:00+01:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/03f71eeb25b3bb4c028805feb70958ea36ee068d/content/french/assembly).*

---

***Présents :*** *Laurent C, Jean-Jacques B, Kélyan, François R, Henri G.*

### Ordre du jour pour le prochain conseil, mardi 13 mai 2025 à **21h00**, en visio sur <https://cloud.foopgp.org/call/4du5irxe>

*Note : Si problème avec le premier lien de visio, se connecter sur [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir

- Revue de presse.
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.

### Revue de presse

- OpenAI va racheter l'outil de programmation assisté par IA Windsurf : <https://www.linformaticien.com/magazine/biz-it/63393-openai-va-racheter-l-outil-de-programmation-assiste-par-ia-windsurf.html>
- Armis lance une base de données de vulnérabilité : <https://www.linformaticien.com/magazine/cybersecurite/63390-armis-lance-une-base-de-donnees-de-vulnerabilites.html>
- Chacun son tour : TikTok est également condamné à une forte amende : <https://www.linformaticien.com/magazine/tendances/968-donnees-personnelles/63389-tiktok-condamne-a-530-millions-d-euros-d-amende-au-titre-du-rgpd.html>
- Microsoft va "muscler" sa présence en Europe : <https://www.linformaticien.com/magazine/biz-it/63384-microsoft-va-muscler-sa-presence-en-europe.html>  
  et fait des milliards de dollars de recette : <https://www.distributique.com/actualites/lire-la-bourse-applaudit-les-bons-resultats-de-microsoft-pour-son-t3-36175.html>
- On est encore très très loin du "cloud souverain" : <https://www.distributique.com/actualites/lire-quelle-est-l-ampleur-de-la-dependance-economique-aux-clouds-americains-36173.html>
- Les Nations Unis (tout comme le journal Le Monde) testent la suite cryptpad : <https://fossforce.com/2025/04/un-drops-google-for-cryptpad-an-encrypted-open-source-office-suite/>
- Selon la CNIL les violations de données sont en hausse : <https://www.linformaticien.com/magazine/tendances/968-donnees-personnelles/63379-les-violations-de-donnees-en-hausse-selon-la-cnil.html>
- STMicroelectronics licencie à tour de bras : <https://www.linformaticien.com/63383-stmicroelectronics-va-supprimer-1-000-postes-en-france.html>

### Activité récente

#### Au cœur de la réunion

- Sébastien est arrivé. 1er Objectif, nettoyer notre serveur ovh. On a deplacé le serveur de clés keys.foopgp.org ailleurs, on a tenté d'installer proxmox -> le serveur (Kimsuffi est trop sous dimensionné). Il ne servira que des services de prod : le site foopgp.org, le serveur de clés keys.foopgp.org et un dépôt de paquets (en attendant de pouvoir les poser chez des partenaires, pour limiter la maintenance).
- Suite présentation de Paheko par Kélyan

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

- Vendredi 9 mai à 12h15 : Rendez-vous avec la députée de notre circonscription des Hautes-Alpes.
- Mardi 13 mai 19h30 : RdV Linux alpes : <<https://www.linux-alpes.org/soiree-linux-alpes-a-gap-le-13-mai/>>
- Mercredi 14 mai de 9 h 30 à 17 h à Gap : [ADELHA : Mobiliser, intégrer et fidéliser ses bénévoles.](https://ADELHA%20:%20Mobiliser,%20int%C3%A9grer%20et%20fid%C3%A9liser%20ses%20b%C3%A9n%C3%A9voles.)
- Jeudi 15 mai 2025 à Lyon : [Rencontres Professionnelles du Logiciel Libre](https://www.rpll.fr/)
- Jeudi 22 mai de 9 h 30 à 12 h 00 à Gap : [ADELHA : Penser ses fiches missions de bénévolat](https://docs.google.com/forms/d/e/1FAIpQLSfYEgB59lleVhW4ILt-r785Kjpv0-LdrRFxFbWrImAIXQBE9g/viewform)
- WE du 24 et 25 mai 2025 à Lyon : [Les 26es Journées du Logiciel Libre](https://www.jdll.org/contact-and-informations)
- WE du 25 au 27 juillet 2025 à Saint-Maixent-l'École (79400) : <https://decroissancelefestival.org/>
- Du jeudi 7 au dimanche 10 Août : Les résistantes 2025 en Normandie.
- camp CHATONS 7-10 août
- [... agenda du libre](https://www.agendadulibre.org)

---
