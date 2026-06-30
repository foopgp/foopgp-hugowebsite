---
title: "2026 S27 Rapport Hebdomadaire"
lang: fr
date: 2026-06-30T21:00:00+02:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *(à compléter en séance)*

### Ordre du jour prochaine visio mardi 7 juillet 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fourni (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 30 juin)

- Campagne de financement de juin → <https://www.helloasso.com/associations/friends-of-openpgp-foopgp/collectes/juin-2> (dernier jour).
- Débrief de l'atelier de Pelleautier (samedi 27 juin).
- Revue de presse.
- Point sur les participations et démonstrations publiques à venir (JDE26 à Grenoble, Émancip'Actions à Bourges, Capitole du Libre, OSXP).
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

#### Chiffres de l'association

*Au 9 mai 2026, calculés avec nos nouveaux outils* `bl-foopgp` *(*`inputs` *pour la vue d'ensemble,* `contribs --resume` *pour le sous-ensemble certifié) appliqués à l'instance* `uetree-djis-by-email/`. Placeholder en attendant le recalcul à date.*

- Total contributors : 46 - Total certified members : 13 / 46
- Total contribs : 86 - Total certified contribs : 36 / 86
- Total contribution : 61 494,10 € - Total certified contribution : 42 485,47 € / 61 494,10 €
- Total certified created : 99,733737 Ɉ — *seuls les adhérents dont l'identité OpenPGP est certifiée par la Toile de Confiance voient leurs djis effectivement créés et utilisables.*

*Aux adhérents pas encore certifiés : venez nous rencontrer lors d'un de nos prochains ateliers pour finaliser la certification de votre identité OpenPGP, débloquer la création de vos djis et pouvoir les échanger au sein de l'association.*

### Revue de presse

- *(à compléter en séance)*

### Au cœur de la réunion

- Débrief atelier Pelleautier du 27 juin (retours public, supports, suites à donner).
- Cap court terme keyserver : passer foopgp.org/pks en façade publique avec `onak-foopgp` packagé ; cap long terme : backend `keydb_uetree` pour absorber millions de clés à 2 ans (cf. note stratégique interne).
- Préparation des prochaines démonstrations publiques (JDE26 à Grenoble en août).

### Production de la semaine (23-29 juin)

- **onak-foopgp** — *passage de fork « bidouille » à paquet Debian publiable, en 4 jours.* Le serveur de clés publiques de l'association a été refondu en profondeur :
  - **5 améliorations cœur**, remontables à terme dans l'amont onak : caps en dur sur le nombre d'UIDs et d'UATs par clé (32 / 4), 3 nouvelles commandes d'archivage (`aged` / `dump-aged` / `clean-aged`), caps configurables sur le nombre de signatures par UID / UAT, dédup des signatures par signataire (la cert la plus récente l'emporte, la première révocation l'emporte), suppression définitive des clés v3 (obsolète).
  - **Nouvelle interface web** (`/pks/lookup?op=index`) : moteur de templates HTML maison, *layout deux colonnes* (UATs/avatars d'un côté, UIDs + signatures de l'autre), affichage native des dates ISO-8601, des noms d'algorithmes modernes, de l'expiration de la clé principale, *masquage* des UIDs/UATs révoqués en mode standard, dépliage des signatures *par UID* en un clic (zéro JS, pur HTML), tooltips natifs, liens `mailto:` cliquables.
  - **Page d'accueil multilingue** (`/pks/lookup`) : détection automatique de la langue du navigateur + sélecteur drapeaux pour 7 langues — 🇬🇧 EN, 🇫🇷 FR, 🇩🇪 DE, 🇪🇸 ES, 🇮🇹 IT, 🇺🇦 UK, 🇵🇱 PL (mêmes langues que le bandeau de `foopgp.org/djis-emission`).
  - **Mise en page mobile-friendly** : sur smartphone portrait, le bloc avatar passe au-dessus des UIDs et libère toute la largeur pour les noms et identifiants ; sur grand écran, le layout deux colonnes reste compact et lisible.
  - **Nouveau réglage** `[main] server_contact` dans `onak.ini` → lien « contact » en pied de page pointant vers la clé OpenPGP de l'opérateur du serveur.
  - **Renommage du paquet** : `onak` → `onak-foopgp`, pour cohabiter proprement avec le paquet amont Debian sans collision (et pouvoir contribuer ensuite à amont par pull requests pacifiées).
  - 4 releases successives (`0.6.5.foopgp1` → `0.6.5.foopgp4`), lintian clean.

- **bash-libs** — passe d'i18n + finitions :
  - Rafraîchissement du `.pot` et clôture des fuzzies / chaînes non traduites en français (547 / 547) — la prochaine version du paquet sortira intégralement traduite en français.
  - Nouvelle option `bl-qrkey change_token_meta --lang` pour modifier *a posteriori* la préférence de langue inscrite sur la clé physique de sécurité OpenPGP.
  - `bl-pgpid print` : `pdfjam --noautoscale` pour respecter la taille naturelle des cartes / stickers (plus de mise à l'échelle automatique parasite).
  - Petits correctifs sur `bl_pgpid_certify` (la commande continue même si le réglage de la confiance échoue) et sur les messages d'erreur de `bl-pgpid token-check`.

- **djibian-onboarding 1.4.0 + 1.4.1** (tags signés, .deb construits, lintian clean) :
  - **Cartes** (`/cards`) : personnalisation par l'utilisateur du *nom d'usage* et de l'*adresse email* affichés, rendu *niveaux de gris* en option, vrai sélecteur de modèle SVG avec aperçu fidèle, sauvegarde du SVG personnalisé.
  - **Composant `password-input`** réutilisable (toggle œil pour afficher / masquer), avec un garde-fou *8 chiffres* spécifique pour l'écran administrateur.
  - **DjibianInfo** : double passe de vérification du token — d'abord vue rapide hors-ligne (`--no-fetch`), puis vue détaillée avec accès réseau, encadrée par une garde explicite pour ne pas surprendre l'utilisateur.
  - **Cosmétique** : petit halo discret autour du logo, colonnes de cartes parfaitement équilibrées, PIN verrouillé à 6 chiffres, logo cliquable, tooltips dans la barre de navigation, désactivation par défaut de l'auto-impression des stickers.
  - Annonce envoyée aux 4 premiers testeurs de la vague « cartes » + SVG personnalisé d'Isabelle.

- **djibian-xfceconfig** (nouveau dépôt) :
  - Extraction du paramétrage XFCE hors de `djibian-config` (qui restait jusqu'ici monolithique).
  - Les tweaks clavier indépendants de l'environnement de bureau (Compose sur la touche TLDE, AltGr+J → Ɉ) descendent dans `djibian-coreconfig` : ils profitent désormais aussi aux utilisateurs GNOME / Wayland.
  - Prompt utilisateur lors du changement des défauts XFCE (i18n en/fr/es) — plus de réécriture silencieuse de la config personnelle.
  - Adoption du pattern `xfconf-query` au login (plutôt qu'un drop-in XML) — recommandation amont Debian respectée.

- **foopgp.org** — passe de redirection « Djibian » :
  - Convergence systématique des liens *event / course / about / spec* vers `/solutions/djibian/`.
  - Nouvelle entrée de menu *OpenPGP ID* (pointant vers le brouillon IETF).
  - Mise à jour de `about/join` (français et anglais) — comparaison Djibian vs euro vs bitcoin, mention systématique « clé physique de sécurité » (vocabulaire validé en français), redirection [Djibian] vers la page solution.
  - Mise à jour de la présentation Djibian (numéro de version en première page plutôt que date).

- **Atelier Pelleautier** (samedi 27 juin) : présentation + atelier grand public à la salle communale de la mairie de Pelleautier (05000). Inscription libre via tel:+33756832215. Retours et suites à débriefer ce soir.

### Agenda

- 20 — 22 août à Grenoble : [JDE26](https://journees.lesecologistes.fr/)
- 24 — 27 septembre à Bourges : [Émancip'Actions](https://emancipactions.fr/)
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/)
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)
