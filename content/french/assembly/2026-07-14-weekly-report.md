---
title: "2026 S29 Rapport Hebdomadaire"
lang: fr
date: 2026-07-14T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu écrit (pas de visio cette semaine)"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

*Note : Il n'y a pas eut de visio cette semaine (Mardi 14 juillet : anniversaire de la prise de la Bastille, demi-finale de coupe du monde, …), mais ce n'est pas pour autant que rien n'a avancé !* ***Rendez-vous mardi prochain*** *pour nous retrouver en viso ☺.*

### Ordre du jour prochaine visio mardi 21 juillet 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fourni (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Revue de presse.
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- Avancement de l'outillage (eg: registre `uetree`, certification décentralisée, carte de visite vCard, ...).
- Participations et démonstrations publiques à venir (JDE26 à Grenoble, Émancip'Actions à Bourges, Capitole du Libre, OSXP).
- Campagne de financement de juillet : <https://www.helloasso.com/associations/friends-of-openpgp-foopgp/collectes/juillet>
{{< helloasso-count >}}

### Stingynalty

Pour juillet : ***stingynalty = 1.13279557508641869996***

Pour août : ***stingynalty = 1.13845955296185079345***

**Simulateur de cotisation initiale** (2 dimensions) → <https://foopgp.org/djis-simulator/?lang=fr>

**Graphique en 3 dimensions** → <https://www.math3d.org/xzuclzIbuZ>

*Rappel :*  si vous avez déjà cotisé, il faut appliquer la formule :

> **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) .

#### Chiffres de l’association

*Les chiffres complets de l'association seront mis à jour à la clôture comptable de juillet (fin de mois) ; ceux de juin figurent dans le [compte rendu de la semaine dernière](/fr/assembly/2026-07-07-weekly-report/).*

### Revue de presse

*Pas de visio, pas de revue de presse 😸.*

### Au cœur de la réunion

*Pas de réunion cette semaine 🙃.*

### Production de la semaine (7 – 13 juillet)

- [keys.foopgp.org](https://keys.foopgp.org) :
  - **Carte de visite OpenPGP → vCard** : un nouvel outil, [`pgp2vcard`](https://keys.foopgp.org/pgp2vcard.html), convertit des certificats OpenPGP en **cartes de visite standard (vCard 4.0, ou jCard)**, celles que tout téléphone et tout carnet d'adresses sait déjà lire. Tout se passe **dans le navigateur** — rien n'est envoyé à un serveur. La page est traduite dans les **9 langues** de l'écosystème (ajout cette semaine du portugais et du russe).\
  - Partie **Serveur de certificats** — petites améliorations de robustesse, ouverture contrôlée aux outils qui tournent dans le navigateur (comme la carte de visite), 2 petits défauts d'affichage corrigés.

- **`bl-contacts`** — nouvelle brique d'outillage en ligne de commande, permettant pour commencer de **créer, vérifier et réparer** des fiches vCard, sans dépendance lourde. Futur back-end git-friendly (utilisera `uetree`) et PGP-friendly pour gérer ses contacts. Sera utilisé (entre autres et en premier) par djibian-onbarding. Pendant de l'outil [`pgp2vcard`](https://keys.foopgp.org/pgp2vcard.html).

- **L'identifiant d'entité (EID) prend forme** — le brouillon de spécification a été **recentré sur l'enregistrement, auprès de l'IANA, d'un espace de noms `urn:eid:`** dédié à ces identifiants déterministes et respectueux de la vie privée. Dans la foulée, la dénomination publique **« OpenPGP ID » devient « PGP ID »** — plus simple à dire et à retenir, et à l'écart de la petite querelle *OpenPGP vs LibrePGP*. La page [PGP ID](https://foopgp.org/fr/solutions/pgp-id/) gagne une explication grand public de l'EID et des liens vers l'article technique et le brouillon.

- [foopgp.org](https://foopgp.org) l'accueil du site bascule désormais tout seul entre français et anglais selon la langue du navigateur, en retenant votre choix (sans cookies : localstorage JS).

### Agenda

- 20 — 22 août à Grenoble : [JDE26](https://journees.lesecologistes.fr/)
- 24 — 27 septembre à Bourges : [Émancip'Actions](https://emancipactions.fr/)
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/)
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)
