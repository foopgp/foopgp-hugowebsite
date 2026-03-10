---
title: "2025 S16 Rapport Hebdomadaire"
lang: fr
date: 2025-04-15T21:00:00+01:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/03f71eeb25b3bb4c028805feb70958ea36ee068d/content/french/assembly).*

---

***Présents :****  Laurent Céard, François Fron, Jean-Jacques Brucker, François Révol, Henri Geist.*

### Ordre du jour pour le prochain conseil, mardi 22 mars 2025 à 21h, en visio sur <https://cloud.foopgp.org/call/4du5irxe>

*Note : Si problème avec le premier lien de visio, se connecter sur [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp).*

Points habituels (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir). Notamment :

- retour sur les états généreux du revenu de base à AlfortVille.

### Ordres du soir

- Revue de presse.
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.

### Revue de presse

- Google et le chiffrement : <https://www.linformaticien.com/magazine/cybersecurite/63282-du-chiffrement-de-bout-en-bout-dans-gmail-pour-les-entreprises.html>
- Fusion Intel et TSMC : <https://www.linformaticien.com/magazine/biz-it/63275-washington-met-la-pression-sur-intel-et-tsmc-pour-creer-une-coentreprise.html>
- Droits de douane : <https://www.linformaticien.com/magazine/biz-it/63321-bientot-des-droits-de-douane-sur-les-semi-conducteurs.html>
- RGPD, CNIL et X  : <https://www.linformaticien.com/magazine/tendances/944-rgpd/63311-grok-vise-par-une-enquete-pour-violation-du-rgpd.html>
- CNIL et MFA (*multi-factor authentication*) : <https://www.linformaticien.com/924-republique-numerique/63261-la-cnil-recommande-la-mfa.html>
- ANSSI : <https://www.linformaticien.com/magazine/cybersecurite/63287-l-anssi-lance-une-offre-de-services-messervicescyber.html>
- Les mauvaises habitudes des mots de passe ont la vie dure : <https://www.linformaticien.com/magazine/cybersecurite/63259-mots-de-passe-a-l-ouest-rien-de-nouveau.html>
- Littérature et cybersécurité : <https://www.linformaticien.com/magazine/cybersecurite/63251-le-prix-du-livre-incyber-2025-recompense-cinq-ouvrages-de-l-annee-sur-la-securite-numerique.html>
- Faille zero-day dans Google Chrome : <https://www.linformaticien.com/magazine/cybersecurite/63246-un-exploit-zero-day-dans-chrome.html>
- Google et la *"sécurisation"* de son cloud : <https://www.linformaticien.com/magazine/biz-it/63200-google-d-accord-pour-racheter-wiz.html>
- Souveraineté numérique européenne : <https://www.linformaticien.com/magazine/cybersecurite/63198-l-it-europeenne-plaide-pour-la-souverainete-numerique.html>
- Re-réinventage de roue : <https://nostr.fr/>
- Interopérabilité : signal, whatsapp, etc, : <https://www.frandroid.com/android/applications/2329900_on-sait-quand-et-comment-whatsapp-et-messenger-pourront-fonctionner-avec-dautres-applications-de-messagerie>
- La Commission européenne a commencé à fournir des téléphones jetables (burner) et des ordinateurs portables vierges à ses employés en partance pour les États-Unis, d’après le Financial Times. Quatre sources ont confirmé au quotidien économique cette nouvelle politique, qui était…

  <https://www.blast-info.fr/articles/2025/la-commission-europeenne-se-mefie-de-lespionnage-americain-fuV_OoN9SmmDufuGLk84GQ>
- La CNIL irlandaise remet en cause la légalité de l’entrainement de Grok

  <https://next.ink/brief_article/la-cnil-irlandaise-remet-en-cause-la-legalite-de-lentrainement-de-grok/>
- Le Maroc sous le choc après le piratage de la Sécurité sociale : « Bienvenue en enfer où tout le monde sait combien gagne son voisin ! » <https://www.lemonde.fr/afrique/article/2025/04/14/le-maroc-sous-le-choc-apres-le-piratage-de-la-securite-sociale-bienvenue-en-enfer-ou-tout-le-monde-sait-combien-gagne-son-voisin_6595892_3212.html>
- Les données publiques des utilisateurs des réseaux sociaux de Meta en Europe vont servir à entraîner son IA <https://www.nouvelobs.com/economie/20250414.OBS102743/les-donnees-publiques-des-utilisateurs-des-reseaux-sociaux-de-meta-en-europe-vont-servir-a-entrainer-son-ia.htm>
- Thunderbird Pro veut reprendre du terrain à Gmail et Microsoft

  <https://next.ink/178693/avec-thunderbird-pro-mozilla-veut-partir-a-lassaut-de-gmail-et-microsoft-365/>

### Activité récente

#### Au cœur de la réunion

- Nextcloud (bugs, archis et devis). Nécessité d'upgrader la version de cloud.foopgp.org
- Compte de résultat et bilan 2023 généré par Kélyan avec paheko : <https://cloud.foopgp.org/apps/files/files/28795?dir=/foopgp-accounting/Exercice%202023> 
- benchmark avec Kélyan en cours : paheko vs dolibarr vs libreoffice vs module Nextcloud ? (cf: <https://linuxfr.org/news/logiciels-libres-pour-la-comptabilite-d-entreprise> )
- prototypage avec François sur le fond et la forme des données à poser dans nos futurs carnets d'échanges (cf. J.E.U.).

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
