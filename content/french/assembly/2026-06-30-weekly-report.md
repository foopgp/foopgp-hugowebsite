---
title: "2026 S27 Rapport Hebdomadaire"
lang: fr
date: 2026-06-30T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *Laurent C., Jean-Jacques B., François R. Didier L..*

### Ordre du jour prochaine visio mardi 7 juillet 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp)  (pas auto-hébergé, mais fourni (sans contrepartie financière  obligatoire) par des professionnels libristes européens, sur des  serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 30 juin)

- Campagne de financement de juin → <https://www.helloasso.com/associations/friends-of-openpgp-foopgp/collectes/juin-2>  (dernier jour).
- Débrief de l’atelier de Pelleautier (samedi 27 juin).
- Revue de presse.
- Point sur les participations et démonstrations publiques à venir  (JDE26 à Grenoble, Émancip’Actions à Bourges, Capitole du Libre, OSXP).
- Communication.
- Actions réalisées, en cours, à prévoir.
- Campagne de financement de juillet :
{{< helloasso-count >}}

### Stingynalty

Pour juin : ***stingynalty =* 1.12715977620539174126**

Pour juillet : ***stingynalty =* 1.13279557508641869996** (à partir du 1er)

**Simulateur de cotisation initiale** (2 dimensions) → <https://foopgp.org/djis-simulator/?lang=fr>

**Graphique en 3 dimensions** → <https://www.math3d.org/xzuclzIbuZ>

*Rappel :*  si vous avez déjà cotisé, il faut appliquer la formule :

> **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/)  .

Et pour cela, il faut utiliser les options *–tokens* et *–gifts* :

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

*Au 30 juin 2026, depuis sa création le 3 avril 2023 :*

|                          | Entités | €         | Ɉ       |
|--------------------------|---------|-----------|---------|
| Certifiés (by-id/u4)     | 21      | 44 093,05 | 155,923 |
| Non certifiés (by-email) | 33      | 19 341,63 | 166,782 |
| Total                    | 54      | 63 434,68 | 322,705 |

*Seuls les adhérents dont  l’identité OpenPGP est certifiée par la Toile de Confiance voient leurs  djis effectivement créés et utilisables.*

*Aux adhérents pas encore certifiés : venez nous rencontrer lors  d’un de nos prochains ateliers pour finaliser la certification de votre  identité OpenPGP, débloquer la création de vos djis et pouvoir les  échanger au sein de l’association.*

### Revue de presse

- PlayStation va supprimer chez ses client·es des films qu’iels ont pourtant achetés

  <https://next.ink/brief-article/playstation-va-supprimer-chez-ses-clients-des-films-quils-ont-pourtant-achetes/>

  PlayStation a prévenu ses client·es que les films et séries TV distribués par Studio Canal ne seront plus visibles à compter du 1er septembre. Pire : les contenus seront tout simplement supprimés des bibliothèques des utilisateurices. Malgré un achat en bonne et due forme…

  <https://mamot.fr/@Khrys/116834106851390077>

  Un exemple de plus, s'il en fallait pour convaincre tous ceux qui "achètent" encore aujourd'hui du contenu dématérialisé à base de DRM (ebooks, musiques, films, jeux-vidéos...)

  Le contenu n'appartient pas à l'acheteur qui ne possède qu'un droit d'accès, tant que la plateforme le veut bien, elle se garde le droit de supprimer voire de modifier tout contenu sous license...

  Vive mes oeuvres physiques  DVDs, CDs, bouquins, Blu-ray PS4

  #DRM

  <https://www.frandroid.com/marques/sony/3159969_sony-va-supprimer-551-films-achetes-sur-le-playstation-store-sans-aucun-remboursement>

  <https://mastodon.social/@harvestntech/116823588910057697>

  Your regular reminder that you don't actually own things with DRM attached, even if you pay for them.

  <https://kotaku.com/playstation-store-movies-digital-studio-canal-terminator-2000711013>

  (And until I'm blue in the face I will continue to argue that the solution isn't to abandon digital files and revert back to physical media, the solution is to build a library of DRM-free files you can actually backup and manage on your own)

  <https://hachyderm.io/@nathandyer/116818658358226867>
- NVidia AI Murder Bots Found Attacking Ukraine <https://www.flyingpenguin.com/nvidia-ai-murder-bots-found-attacking-ukraine/>

  <https://infosec.exchange/@flyingpenguin/116829180222330303>
- Dans un datacenter, ils viennent de prévenir que vu les températures, ils ne sont plus en mesure d’assurer le refroidissement des salles.

  Les clients sont priés de se déplacer pour éteindre toutes les machines possibles.

  <https://firefish.imirhil.fr/notes/anu7su9jhps700hh>

### Au cœur de la réunion

- Débrief atelier Pelleautier du 27 juin.
- Démo onak-foopgp.

### Production de la semaine (23-29 juin)

- **onak-foopgp** — Le serveur de clés publiques de l’association a été refondu en profondeur :
  - **5 améliorations cœur**, remontables à terme dans  l’amont onak : caps en dur sur le nombre d’UIDs et d’UATs par clé (32 /  4), 3 nouvelles commandes d’archivage (`aged` / `dump-aged` / `clean-aged`),  caps configurables sur le nombre de signatures par UID / UAT, dédup des  signatures par signataire (la cert la plus récente l’emporte, la  première révocation l’emporte), suppression définitive des clés v3  (obsolète).
  - **Nouvelle interface web** (`/pks/lookup?op=index`) : moteur de templates HTML maison.
  - **Pages multilingues**  : 7 langues — 🇬🇧 EN, 🇫🇷 FR, 🇩🇪 DE, 🇪🇸 ES, 🇮🇹 IT, 🇺🇦 UK,  🇵🇱 PL
  - **Nouveau réglage** dans `onak.ini` → lien « contact » en pied de page pointant vers la clé OpenPGP de l’opérateur du serveur.
  - **Renommage du paquet** : `onak` → `onak-foopgp`,  pour cohabiter proprement avec le paquet amont Debian sans collision.
- **bash-libs** — passe d’i18n + finitions :
  - Nouvelle option `bl-qrkey change_token_meta --lang` pour modifier *a posteriori* la préférence de langue inscrite sur la clé physique de sécurité OpenPGP.
  - Petits correctifs sur `bl-pgpid certify,` `bl-pgpid token_check` et `bl-pgpid print.`
- **djibian-onboarding 1.4.0 + 1.4.1** (tags signés, .deb construits, lintian clean) :
  - **Cartes** (`/cards`) : personnalisation par l’utilisateur du *nom d’usage* et de l’*adresse email* affichés, rendu *niveaux de gris* en option, vrai sélecteur de modèle SVG avec aperçu fidèle, sauvegarde du SVG personnalisé.
  - **Composant** `password-input` réutilisable (toggle œil pour afficher / masquer), avec un garde-fou *8 chiffres* spécifique pour l’écran administrateur
  - **Cosmétique** : petit halo discret autour du logo,  colonnes de cartes parfaitement équilibrées, PIN verrouillé à 6  chiffres, logo cliquable, tooltips dans la barre de navigation,  désactivation par défaut de l’auto-impression des stickers.
- [**foopgp.org**](http://foopgp.org)  :
  - Mise à jour de `about/join` (français et anglais) —  comparaison Djibian vs euro vs bitcoin, mention systématique « clé  physique de sécurité » (vocabulaire validé en français), redirection  \[Djibian\] vers la page solution.
  - Mise à jour de la présentation Djibian (numéro de version en première page plutôt que date).

### Agenda

- 20 — 22 août à Grenoble : [JDE26](https://journees.lesecologistes.fr/)
- 24 — 27 septembre à Bourges : [Émancip’Actions](https://emancipactions.fr/)
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/)
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)
