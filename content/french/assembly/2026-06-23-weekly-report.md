---
title: "2026 S26 Rapport Hebdomadaire"
lang: fr
date: 2026-06-23T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *François R., Aveline, Nonna, Laurent, Jean-Jacques.*

### Ordre du jour prochaine visio mardi 30 juin 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fourni (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 23 juin)

- Campagne de financement de juin → <https://www.helloasso.com/associations/friends-of-openpgp-foopgp/collectes/juin-2>
- Retours des conférences + ateliers de Vannes (17 juin).
- Revue de presse.
- Point sur les participations et démonstrations publiques.
- Communication.
- Actions réalisées, en cours, à prévoir.

### Stingynalty

Pour juin : ***stingynalty =* 1.12715977620539174126**

Pour juillet : ***stingynalty =* 1.13279557508641869996** (à partir du 1er)

**Simulateur de cotisation initiale** (2 dimensions) → <https://foopgp.org/djis-simulator/?lang=fr>

**Graphique en 3 dimensions** → <https://www.math3d.org/xzuclzIbuZ>

*Rappel :*  si vous avez déjà cotisé, il faut appliquer la formule :

> **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) .

Et pour cela, il faut utiliser les options *--tokens* et *--gifts* :

```
$ bl-foopgp giftarray --help
Usage: bl-foopgp giftarray [OPTIONS]

Afficher un tableau indiquant combien de djis (Ɉ) seront créés à partir d’une cotisation en euros (€).

OPTIONS:
  -t, --tokens DJISUM  Définir la base de djis (Ɉ) déjà créés (par défaut : 0)
  -g, --gifts EURSUM   Définir la base des montants déjà cotisés en euros (€) (par défaut : 0)
  -m, --max VALUE      Définir une limite en nombre de djis ciblés (par défaut : 12)
  -M, --max-line NUM   Limiter le nombre de lignes (par défaut : 24)
  -H, --header-only    Afficher uniquement la ligne d’en-tête, puis quitter.
  -F, --with-header    Afficher également la ligne d’en-tête et une ligne de séparation au début du tableau.
```

#### Chiffres de l’association

*Au 9 mai 2026, calculés avec nos nouveaux outils* `bl-foopgp` *(*`inputs` *pour la vue d’ensemble,* `contribs --resume` *pour le sous-ensemble certifié) appliqués à l’instance* `uetree-djis-by-email/`*.*

- Total contributors : 46 - Total certified members : 13 / 46
- Total contribs : 86 - Total certified contribs : 36 / 86
- Total contribution : 61 494,10 € - Total certified contribution : 42 485,47 € / 61 494,10 €
- Total certified created : 99,733737 Ɉ — *seuls les adhérents dont l’identité OpenPGP est certifiée par la Toile de Confiance voient leurs djis effectivement créés et utilisables.*

*Aux adhérents pas encore certifiés : venez nous rencontrer lors d’un de nos prochains ateliers ([cf. agenda ci-dessous](https://foopgp.org/fr/assembly/2026-06-23-weekly-report/#agenda) ) pour finaliser la certification de votre identité OpenPGP, débloquer la création de vos djis et pouvoir les échanger au sein de l’association.*

### Revue de presse

- La Commission Européenne a reculé sur le logiciel libre : <https://www.zdnet.fr/blogs/l-esprit-libre/la-commission-europeenne-a-recule-sur-le-logiciel-libre-critiquent-les-libristes-497372.htm>

  <https://www.lesnumeriques.com/societe-numerique/souverainete-numerique-l-europe-renonce-a-imposer-le-logiciel-libre-et-choisit-l-encouragement-n257733.html>
- LibreOffice dénonce le format OOXML de Micro$oft : <https://www.zdnet.fr/actualites/libreoffice-denonce-le-format-ooxml-489936.htm>
- La Document Foundation dénonce également la mise à disposition payante de LibreOffice sur le Micro$oft Store : <https://www.zdnet.fr/actualites/libreoffice-sur-le-microsoft-store-the-document-foundation-denonce-39871641.htm>
- Pas de LibreOffice pour IBM qui reste sur OpenOffice : <https://www.zdnet.fr/actualites/pas-de-libreoffice-pour-ibm-qui-revient-a-openoffice-39768030.htm>
- Le GPS américain détrôné : 5 milliards d'utilisateurs utilisent le Galileo européen : <https://www.lesnumeriques.com/gps/le-gps-americain-detrone-5-milliards-d-utilisateurs-naviguent-deja-grace-a-galileo-le-geant-spatial-europeen-n256095.html>
- La Software Freedom Conservancy publie ses **Recommendations When Using LLM-backed Generative AI Systems for FOSS Contributions** : un guide et un ensemble de bonnes pratiques pour l’usage des LLM dans la création et la maintenance de projets FOSS : <https://sfconservancy.org/news/2026/jun/18/llm-backed-generative-ai-recommendations/>
- Lord British récupère le copyright d’Ultima auprès d’EA en 2027 : <https://theoasisbbs.com/lord-british-reclaims-ultima-copyright-from-ea-in-2027/?fsp_sid=8731>
- Doctor Who — départ de Russell T. Davies, l’épisode de Noël est annulé :

  <https://www.lesnumeriques.com/societe-numerique/doctor-who-avec-le-depart-de-russell-t-davies-c-est-la-crise-dans-le-tardis-n257305.html>

  <https://www.journaldugeek.com/2026/06/10/coup-dur-pour-doctor-who-lepisode-de-noel-est-annule-et-le-showrunner-sen-va/>

  <https://www.doctorwho.tv/news-and-features/an-update-on-the-future-of-doctor-who>
- L’Europe veut « libérer le potentiel des données de santé » via son Espace européen des données de santé (EEDS) : <https://theconversation.com/leurope-veut-liberer-le-potentiel-des-donnees-de-sante-284212>

  Lecture critique : *« Comment. Exploiter. La valeur. (Scientifique et) économique. De nos données de santé. »* <https://mamot.fr/@Khrys/116782715264801034>

### Au cœur de la réunion

- Atelier Pelleautier (samedi 27 juin) : à préparer (supports, agenda, communication).

### Production de la semaine (16-22 juin)

- **djibian-onboarding 1.3.0** (tag signé, .deb construit, lintian clean — 0 erreur, 1 warning mineur, 4,3 MiB) :
  - Refonte de l'écran « état civil » (partagé par les étapes *Créer une identité*, *Certifier*, *Ajouter un utilisateur*).
  - Page « courriel » enrichie d'un champ *« Nom d'usage »* pré-rempli automatiquement depuis le local-part de l'adresse (jean.dupont@… → Jean Dupont), avec un rappel *« Ce nom apparaîtra publiquement sur votre clé OpenPGP. »*
  - L'étape *Imprimer* sort à la fois les QR codes secrets ET le sticker public.
  - Carte d'identité d'accueil (utilisateur connecté avec sa clé physique) : adresses email cliquables qui ouvrent le client mail (`mailto:`), petit spinner pendant l'ouverture ; capacité `payto:*` (RFC 8905) déjà whitelistée pour usage à venir.
- **bash-libs** (préparée pour un nouveau packaging — i18n FR 547/547, pages de manuel régénérées) :
  - Nouvelle convention OpenPGP smartcard : le pseudonyme du titulaire et l'identifiant (eid) cohabitent désormais dans le champ « Login data » sous la forme `<eid> # <nom UTF-8>`, ce qui contourne le plafond historique de 38 caractères de GnuPG sur le champ « Name » et accepte les accents, idéogrammes, etc.
  - Nouvelle commande `bl-qrkey change_token_meta` pour modifier *a posteriori* le pseudonyme, l'email ou l'URL du certificat sur la clé physique branchée — avec vérifications (l'email doit déjà exister dans le certificat, l'URL doit servir le bon certificat).
  - Nouvelle option `bl-pgpid email --certs-count` qui compte les certifications externes valides par adresse e-mail, en excluant les signatures locales (utile pour préparer une carte de visite ou un rapport de Toile de Confiance).
- **Spec OpenPGP ID** (brouillon IETF) — Mise à jour : <https://codeberg.org/foopgp/foopgp-hugowebsite/src/branch/public/public/documents/en/draft-foopgp-openpgp-id-00.txt>

### Agenda

- Samedi 27 juin : présentation + atelier à la Mairie de Pelleautier : <https://foopgp.org/fr/event/2026-06-27-atelier-djiian/>
- 20 — 22 août à Grenoble : [JDE26](https://journees.lesecologistes.fr/)
- 24 — 27 septembre à Bourges : [Émancip'Actions](https://emancipactions.fr/)
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/)
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)
