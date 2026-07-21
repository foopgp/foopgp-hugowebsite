---
title: "2026 S30 Rapport Hebdomadaire"
lang: fr
date: 2026-07-21T21:00:00+02:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *(à compléter en début de visio)*

### Ordre du jour prochaine visio mardi 28 juillet 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fourni (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Revue de presse.
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- Avancement de l'outillage (eg: carte de visite vCard, registre `uetree`, certification décentralisée, ...) et **petite release expérimentale** des outils en ligne de commande.
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

*Les chiffres complets de l'association seront mis à jour à la clôture comptable de juillet (fin de mois) ; ceux de juin figurent dans le [compte rendu du 7 juillet](/fr/assembly/2026-07-07-weekly-report/).*

### Revue de presse

*(à compléter pendant la visio)*

### Au cœur de la réunion

*(à compléter pendant / après la visio)*

### Production de la semaine (14 – 20 juillet)

- **Réconcilier la carte de visite et le certificat** — un [nouvel article](/fr/blog/2026-07-18-vcard-openpgp/) explique, sans jargon, pourquoi nos carnets d'adresses auraient tout intérêt à manipuler des **certificats OpenPGP** là où ils stockent aujourd'hui des vCards : une vCard décrit un contact mais ne prouve rien, un certificat prouve tout — réunissons les deux. Les *pages blanches et jaunes*, mais **sous votre contrôle**.

- **La carte de visite OpenPGP prend du muscle** — au-delà de l'outil en ligne [`pgp2vcard`](https://keys.foopgp.org/pgp2vcard.html), notre boîte à outils sait désormais **produire une vCard directement depuis un certificat**, et **gérer chaque champ** (courriel, téléphone, nom, note, adresse, site web, langue, lieu) comme une ligne signée du certificat. Nouveauté utile : le **serveur de clés préféré** est maintenant embarqué dans la carte — la vCard indique donc *où retrouver la version à jour* du certificat.

- **Révoquer une adresse : un garde-fou** — en OpenPGP, retirer une adresse est **définitif** (le certificat en garde la trace pour toujours). L'outillage **demande désormais confirmation en affichant exactement la ligne** que l'on s'apprête à révoquer, et **explique clairement** le cas où une adresse retirée ne peut plus être ré-ajoutée. De quoi éviter les mauvaises surprises irréversibles.

- [keys.foopgp.org](https://keys.foopgp.org) — **serveur de certificats** : correction de l'affichage des **photos** (avatars) dans les pages d'index et de détail, et un garde-fou de robustesse qui empêche qu'un certificat soit noyé sous trop de lignes d'identité, **tout en protégeant toujours** l'identité pivot (l'EID) et la photo.

- **Vers une petite release expérimentale** — la boîte à outils en ligne de commande est désormais **entièrement traduite en français** (et prête à accueillir les autres langues), dernière étape avant une première mise à disposition expérimentale.

### Agenda

- 20 — 22 août à Grenoble : [JDE26](https://journees.lesecologistes.fr/)
- 24 — 27 septembre à Bourges : [Émancip'Actions](https://emancipactions.fr/)
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/)
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)
