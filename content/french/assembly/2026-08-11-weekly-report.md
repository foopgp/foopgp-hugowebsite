---
title: "2026 S33 Rapport Hebdomadaire"
lang: fr
date: 2026-08-11T21:00:00+02:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---
***Présents :*** *(à compléter en séance)*

### Ordre du jour prochaine visio mardi 18 août 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fourni (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements + revue des travaux réalisés, en cours, ou à prévoir **pour l'association**).
- **Chiffres de juillet**, si la clôture a pu être passée d'ici là.
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- Campagne de financement d'août : <https://www.helloasso.com/associations/friends-of-openpgp-foopgp/collectes/fr-2026-08>
- Préparation des [JDE26 à Grenoble](https://journees.lesecologistes.fr/) (20 — 22 août).

### Ordres du soir (mardi 11 août)

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).
- **Chiffres de juillet** après clôture campagne cotisations de juillet — *la clôture n'a pas encore été passée : le dernier apport au journal comptable date du 3 juillet. Les chiffres ci-dessous restent donc ceux du 30 juin.*
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- Campagne de financement d'août : <https://www.helloasso.com/associations/friends-of-openpgp-foopgp/collectes/fr-2026-08>
- **Arbitrage des chantiers menés en parallèle** — nous en menons plus que nous n'en terminons. Passer la liste (section TODO ci-dessous) et revoir les priorités.
{{< helloasso-count >}}

### Stingynalty

Pour août : ***stingynalty = 1.13845955296185079345***

Pour septembre : ***stingynalty = 1.14415185072666004741***

**Simulateur de cotisation initiale** (2 dimensions) → <https://foopgp.org/djis-simulator/?lang=fr>

**Graphique en 3 dimensions** → <https://www.math3d.org/xzuclzIbuZ>

*Rappel :* si vous avez déjà cotisé, il faut appliquer la formule :

> **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) .

#### Chiffres de l’association

*La clôture comptable de juillet **n'a pas encore été passée** — le dernier apport au journal date du 3 juillet. Ci-dessous, les chiffres du 30 juin, déjà publiés dans le [compte rendu du 7 juillet](/fr/assembly/2026-07-07-weekly-report/).*

*Au 30 juin 2026, depuis sa création le 3 avril 2023 :*

|                          | Entités | €         | Ɉ       |
|--------------------------|---------|-----------|---------|
| Certifiés (by-eid/u4)    | 21      | 44 093,05 | 155,923 |
| Non certifiés (by-email) | 33      | 19 341,63 | 166,782 |
| Total                    | 54      | 63 434,68 | 322,705 |

*Seuls les adhérents dont l’identité OpenPGP est certifiée par la Toile de Confiance voient leurs djis effectivement créés et utilisables.*

*Aux adhérents pas encore certifiés : venez nous rencontrer lors d’un de nos prochains ateliers pour finaliser la certification de votre identité OpenPGP, débloquer la création de vos djis et pouvoir les échanger au sein de l’association.*

### Revue de presse

François R. :

Laurent C. :

Jean-Jacques B. :

### Au cœur de la réunion

*(à compléter en séance)*

### Production de la semaine (4 — 10 août)

- **L'assistant graphique parle maintenant neuf langues** — allemand, anglais, espagnol, français, italien, polonais, portugais, russe et ukrainien, comme notre serveur de certificats et nos pages de création d'identifiant. Tout est traduit, pas seulement les boutons : les avertissements, les explications, les messages d'erreur. Un sélecteur discret dans la barre de menu permet d'en changer sans toucher aux réglages de son ordinateur — utile pour relire, et pour montrer l'outil à quelqu'un dans sa langue.

- **La fiche d'un certificat dit enfin depuis quand il vaut, et jusqu'à quand** — date de création, date d'expiration, et date de révocation lorsqu'il y en a une. C'est ce qu'on regarde en premier quand on vérifie l'identité de quelqu'un, et cela manquait.

- **Un réglage de crédibilité, sur chaque fiche** — jusqu'où vous faites confiance à une personne pour en certifier d'autres à son tour. Cinq crans, du refus à la confiance entière, avec un code couleur. Il s'affiche partout et ne se modifie que pour les personnes que votre toile de confiance tient déjà pour valides — ailleurs, le réglage n'aurait aucun effet. Le réglage vous appartient : il reste sur votre machine, dans votre compte, et n'est transmis à personne.

- **Le parcours de certification a été refondu** — quatre étapes, et surtout **deux vérifications humaines qui ne peuvent plus être contournées** : l'état civil de la personne se saisit en entier, et huit caractères de l'empreinte de son certificat — tirés au hasard dans l'empreinte, à un endroit qui change à chaque fois — se recopient à la main depuis la carte de visite qu'elle vous a remise en mains propres. Une certification qui ne demande rien à vérifier ne certifie rien.
  Les entités qui ne sont pas des personnes (association, entreprise, logiciel) ont leur propre parcours, avec un engagement explicite : les certifier signifie prendre sur soi les responsabilités qu'elles ne peuvent pas porter.

- **Les portraits ne sont plus rognés** — une photo qui n'est pas carrée s'affiche entière, avec ses bandes, au lieu d'être coupée en deux.

- **Trois défauts corrigés, dont un qui mangeait votre machine.** Changer de langue abîmait les caractères accentués (« Mnêmê » devenait une suite de codes). Une seule fenêtre de l'application peut désormais être ouverte à la fois. Et surtout : certains de nos outils, lancés sans terminal, pouvaient se mettre à tourner indéfiniment — jusqu'à **35 processus oubliés, le plus ancien vieux de deux jours, occupant chacun 40 % d'un cœur** sur une machine de test. La cause est corrigée à la source, et l'appel qui la déclenchait a été réécrit.

- **Un nouvel outil, `pgpid-mip`**, commence à remplacer nos scripts d'identité par du code compilé, là où ils étaient trop lents. Lire la liste de son carnet de certificats passe de **28 secondes à un dixième de seconde** ; lire une fiche, de 250 à 30 millisecondes. C'est le premier pas d'un chantier annoncé : une bibliothèque d'identité réutilisable, y compris sur téléphone.

- Deux versions de l'assistant graphique ont été préparées cette semaine pour validation (2.0.1 puis 2.0.2).

### TODO — Tâches à faire

Liste non-exhaustive des tâches à réaliser ou chantiers en cours :

- **Comptabilité €** ([dépôt](https://codeberg.org/foopgp/foopgp-cashflow) git non-public) — **passer la clôture de juillet** (en attente depuis le 3 juillet), puis automatiser la chaîne HelloAsso : se rapprocher du temps réel plutôt que d'une reprise mensuelle, et remercier automatiquement. L'essentiel est déjà écrit et testé depuis juin ; ce qui manque est une mise en service.

- **Comptabilité Ɉ** — Finaliser [les innovations et concepts sous-jacents](https://foopgp.org/documents/en/)[^emission][^ledger], comme celui d'**arbres universels d'entités** ([spécifications](https://foopgp.org/documents/en/draft-foopgp-uetree-00.txt) et [code](https://codeberg.org/foopgp/bash-libs/src/branch/main/bin/bl-uetree)). Et démarrer le frontend (dépot et paquet à créer).

[^emission]: https://foopgp.org/documents/en/foopgp-djis-emission-workflow.md
[^ledger]: https://foopgp.org/documents/en/foopgp-djis-decentralized-ledger.md

- **Serveur de certificats** ([onak-foopgp](https://codeberg.org/foopgp/onak) → <https://keys.foopgp.org/>) — durcissement et redondance.

- **Adresses de courriel** — publier les clés de `*@foopgp.org` par le mécanisme standard de découverte (WKD).

- **Outils d'identité** (backend [bash-libs](https://codeberg.org/foopgp/bash-libs)) — une série de correctifs attend une relecture avant d'être versée dans la branche principale, dont celui du blocage décrit ci-dessus.

- **Bibliothèque d'identité en langage compilé** ([pgpid-mip](https://codeberg.org/djibian/onboarding/src/branch/main/pgpid-mip)) — poursuivre la reprise des scripts : l'avatar, l'écriture des propriétés, la navigation dans la toile de confiance.

- **Application graphique** (<https://codeberg.org/djibian/onboarding>) — poursuivre l'alignement avec <https://foopgp.org/eid/> ; le bouton de suppression d'un certificat attend son équivalent côté outils.

- **Application mobile** — le portage Android de l'assistant graphique est à l'arrêt depuis juin ; la brique cryptographique retenue est identifiée, des décisions d'architecture restent à prendre.

- **Djibian** (la plupart de [nos dépots git](https://codeberg.org/djibian)) — Maintenance continue : prise en compte des retours utilisateur, préselection de logiciels pertinents, pré-configuration des logiciels que nous mettons en avant (eg: xfce, evolution, thunderbird, …), etc.

### Agenda

- 20 — 22 août à Grenoble : [JDE26](https://journees.lesecologistes.fr/)
- 3, 4 ou 5 septembre : rendez-vous sur Pelleautier *(date à confirmer par Aveline et Katia)*
- L'April invite à participer à la « Fête des Possibles » 2026 pour toucher de nouveaux publics.
	+ Une nouvelle édition de la Fête des Possibles, initiée et coordonnée par le Collectif pour une Transition Citoyenne, aura lieu du 11 septembre au 11 octobre 2026. Des centaines d'événements seront organisés partout en France et en Belgique pour valoriser les actions concrètes en faveur d'un avenir plus durable et solidaire.
	+ <https://linuxfr.org/news/l-april-invite-a-participer-a-la-fete-des-possibles-2026-pour-toucher-de-nouveaux-publics>
	+ <https://framapiaf.org/@marnic/116986780887404776>
- 24 — 27 septembre à Bourges : [Émancip’Actions](https://emancipactions.fr/)
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/)
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)
