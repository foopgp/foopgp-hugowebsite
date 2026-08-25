---
title: "2026 S35 Rapport Hebdomadaire"
lang: fr
date: 2026-08-25T21:00:00+02:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *(à compléter en séance)*

### Ordre du jour prochaine visio mardi 1er septembre 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp)  (pas auto-hébergé, mais fourni (sans contrepartie financière  obligatoire) par des professionnels libristes européens, sur des  serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements + revue des travaux réalisés, en cours, ou à prévoir **pour l’association**).
- **Chiffres arrêtés au 7 août**, une fois les trois points ci-dessous éclaircis.
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- Campagne de financement de septembre.
- Préparation de l’**atelier du vendredi 4 septembre à Tallard**.

### Ordres du soir (mardi 25 août)

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).
- **Retour des JDE26 à Grenoble** (20 — 22 août).
- **Point comptable** : la reprise des mois de juin, juillet et août a été passée cette semaine — le journal courait jusqu’au 24 juin, il court désormais jusqu’au 7 août. Trois points restent à trancher avant de publier les chiffres (voir plus bas).
- Point sur la **certification** des membres par la Toile de Confiance.
- Campagne de financement d’août : <https://www.helloasso.com/associations/friends-of-openpgp-foopgp/collectes/fr-2026-08>
- **Pourquoi nos courriels chiffrés ne partaient plus** — la cause a été trouvée cette semaine, et elle n’est pas où nous la cherchions (voir plus bas).

### Stingynalty

Pour août : ***stingynalty = 1.13845955296185079345***

Pour septembre : ***stingynalty = 1.14415185072666004741***

**Simulateur de cotisation initiale** (2 dimensions) → <https://foopgp.org/djis-simulator/?lang=fr>

**Graphique en 3 dimensions** → <https://www.math3d.org/xzuclzIbuZ>

*Rappel :* si vous avez déjà cotisé, il faut appliquer la formule :

> **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/)  .

#### Chiffres de l’association

*La reprise comptable a été passée cette semaine : le journal, qui s’arrêtait au 24 juin, court maintenant jusqu’au **7 août 2026**. Les chiffres en euros sont établis ; **la colonne Ɉ ne l’est pas encore** et sera complétée une fois les trois points ci-dessous éclaircis. Ils sont donc donnés à titre provisoire.*

*Au 7 août 2026, depuis la création de l’association le 3 avril 2023 : **106 cotisations, 66 588,68 €, 58 cotisants**. Environ **71 % des euros** sont adossés à un certificat entré dans la Toile de Confiance, mais seulement **34 % des cotisants** — l’écart tient aux plus grosses contributions, qui viennent de personnes déjà certifiées.*

*Trois points à éclaircir avant publication :*

1. *une cotisation a perdu la mention de son bénéficiaire lors de la régénération du journal — elle est encore comptée, mais disparaîtrait d’une reconstruction ;*
2. *le calcul des Ɉ n’a pas été relancé depuis ces ajouts, et cinq lignes de 2026 y figurent à zéro — à comprendre avant d’émettre ;*
3. *les nouvelles certifications prononcées depuis juin ne sont pas encore reportées.*

*Seuls les adhérents dont l’identité PGP ID est certifiée par la  Toile de Confiance voient leurs djis effectivement créés et utilisables.*

*Aux adhérents pas encore certifiés : venez nous rencontrer lors  d’un de nos prochains ateliers pour finaliser la certification de votre  identité, débloquer la création de vos djis et pouvoir les  échanger au sein de l’association.*

### Revue de presse

*(à compléter)*

### Au cœur de la réunion

*(à compléter en séance)*

### Production de la semaine (18 — 25 août)

- **La bibliothèque d’identité a quitté le dépôt de l’assistant graphique et a pris son nom.** Elle s’appelait *pgpid-mip* — *mip* pour « migration en cours » —, elle s’appelle désormais **pgpid** et vit dans [son propre dépôt](https://codeberg.org/foopgp/pgpid) , avec son paquet. L’assistant graphique ne l’embarque plus : il l’utilise. La question « où cette bibliothèque vivra-t-elle » figurait dans nos tâches depuis juin ; elle est réglée.
- **Elle sait maintenant tout ce que faisaient les scripts.** Se sont ajoutées cette semaine : créer une paire de clés, la déplacer sur une clé de sécurité, en changer les codes, écrire ce qu’un certificat dit de son porteur, vouloir pour quelqu’un d’autre, imprimer un secret sur papier et le relire, et recalculer la confiance. Vingt-cinq actions en tout. Les scripts en langage de commande qui restent ne s’appuient plus du tout sur les anciennes bibliothèques.
- **Les actions qui touchent une clé de sécurité ont été vérifiées sur une vraie clé**, prêtée pour l’occasion : déplacement du secret, compteurs d’essais, déblocage, et les trois mentions que la clé porte sur son détenteur. Une clé de sécurité se bloque au bout de trois essais.
- **Le papier est redevenu lisible.** L’identité imprimée sur les QR codes ne retient plus que trois mentions : le nom, l’identifiant, une adresse. L’identité complète produisait un code que le format ne sait pas encoder : cela ne s’imprimait pas. Les feuilles produites par l’ancienne et la nouvelle version se relisent l’une l’autre.
- **Elle parle nos neuf langues.** Trois cent soixante et un messages traduits en allemand, anglais, espagnol, français, italien, polonais, portugais, russe et ukrainien — et autant de **pages de manuel**, engendrées depuis l’aide de l’outil lui-même plutôt que réécrites à côté, ce qui évite qu’elles se contredisent.
- **Un paquet Debian** est prêt, avec ses pages de manuel et ses traductions. Le durcissement du binaire, que la distribution laisse partiellement de côté, a été activé : la vérification de conformité ne signale plus rien.
- **Licence : tout est passé en GPL-3.0-only**, dépôt de la bibliothèque et assistant graphique compris. Chaque fichier le déclare lui-même. La matière que nous transportons sans en être les auteurs — spécifications, images de documents, données d’apprentissage — est désormais signalée comme telle. L’assistant graphique disait jusqu’ici quatre choses différentes selon l’endroit où on le lisait.
- **Pourquoi les courriels chiffrés ne partaient plus.** Nous pensions à un défaut du logiciel de courrier ; c’est le moteur de chiffrement lui-même qui refuse. Deux défauts, trouvés et corrigés cette semaine : il consultait la mauvaise mention d’identité lorsqu’un certificat porte une photographie, et il écartait un certificat entier dès qu’une ancienne mention d’une adresse avait été révoquée — même lorsqu’une mention valide portait la même adresse. Les correctifs passent l’intégralité des tests du logiciel d’origine et leur sont proposés. Comme la plupart de nos correspondants sont sous Djibian, la correction leur parviendra par nos dépôts sans attendre.

### TODO — Tâches à faire

Liste non-exhaustive des tâches à réaliser ou chantiers en cours :

- **Comptabilité €** ([dépôt](https://codeberg.org/foopgp/foopgp-cashflow)  git non-public) — la reprise de juin à août est passée ; reste à **éclaircir les trois points ci-dessus**, puis à automatiser la chaîne HelloAsso : se rapprocher du temps réel plutôt que d’une reprise mensuelle, et remercier automatiquement. L’essentiel est écrit et testé depuis juin ; ce qui manque est une mise en service.
- **Comptabilité Ɉ** — relancer le calcul des djis sur les apports de l’été, et **comprendre les lignes à zéro**. Puis finaliser [les innovations et concepts sous-jacents](https://foopgp.org/documents/en/) [^emission][^ledger], comme celui d’**arbres universels d’entités** ([spécifications](https://foopgp.org/documents/en/draft-foopgp-uetree-00.txt)  et [code](https://codeberg.org/foopgp/bash-libs/src/branch/main/bin/bl-uetree) ). Et démarrer le frontend (dépot et paquet à créer).
- **Moteur de chiffrement** — faire aboutir les correctifs proposés en amont, et livrer la version corrigée dans nos dépôts.
- **Serveur de certificats** ([onak-foopgp](https://codeberg.org/foopgp/onak)  → <https://keys.foopgp.org/> ) — durcissement et redondance.
- **Adresses de courriel** — publier les clés de `*@foopgp.org` par le mécanisme standard de découverte (WKD).
- **Application mobile** — le portage Android de l’assistant graphique reste la priorité décidée la semaine dernière ; la brique cryptographique retenue est identifiée, des décisions d’architecture restent à prendre.
- **Bibliothèque système** — reprendre la bibliothèque qui crée les comptes sur les postes : trois fonctions, dont une à refaire entièrement. Elle aura son propre paquet.
- **Djibian** (la plupart de [nos dépots git](https://codeberg.org/djibian) ) — Maintenance continue : prise en compte des retours utilisateur,  préselection de logiciels pertinents, pré-configuration des logiciels  que nous mettons en avant (eg: xfce, evolution, thunderbird, …), etc.

### Agenda

- Vendredi 4 septembre après-midi : Atelier djibian + clés de sécurité + foodjis sur Tallard
- L’April invite à participer à la « Fête des Possibles » 2026 pour toucher de nouveaux publics.
  - Une nouvelle édition de la Fête des Possibles, initiée et coordonnée  par le Collectif pour une Transition Citoyenne, aura lieu du 11 septembre au 11 octobre 2026. Des centaines d’événements seront  organisés partout en France et en Belgique pour valoriser les actions  concrètes en faveur d’un avenir plus durable et solidaire.
  - <https://linuxfr.org/news/l-april-invite-a-participer-a-la-fete-des-possibles-2026-pour-toucher-de-nouveaux-publics>
  - <https://framapiaf.org/@marnic/116986780887404776>
- 24 — 27 septembre à Bourges : [Émancip’Actions](https://emancipactions.fr/)
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/)
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)

[^emission]: https://foopgp.org/documents/en/foopgp-djis-emission-workflow.md
[^ledger]: https://foopgp.org/documents/en/foopgp-djis-decentralized-ledger.md
