---
title: "2026 S32 Rapport Hebdomadaire"
lang: fr
date: 2026-08-04T21:00:00+02:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---
***Présents :*** *(à compléter en séance)*

### Ordre du jour prochaine visio mardi 11 août 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fourni (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).
- **Chiffres de juillet** après clôture comptable.

### Ordres du soir (mardi 4 août)

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).
- Retour de vacances.
- **Clôture comptable de juillet** — programmée dans la semaine (pas ce soir). Les chiffres du mois seront publiés au compte rendu suivant.
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- Reprise des points laissés ouverts le 28 juillet : support IPv6 manquant sur plusieurs sous-domaines `*.foopgp.org` ; note à écrire sur la vérification des signatures d'ISO ; rendez-vous sur Pelleautier les 3, 4 ou 5 septembre.
- **Arbitrage des chantiers en parallèle** — nous en menons plus que nous n'en terminons. Passer la liste en revue et décider, pour chacun, s'il avance, s'il attend, ou s'il s'arrête :
  - **Comptabilité** — automatiser la chaîne HelloAsso : se rapprocher du temps réel plutôt que d'une reprise mensuelle, et remercier automatiquement. L'essentiel est déjà écrit et testé depuis juin ; ce qui manque est une mise en service.
  - **Serveur de certificats** — durcissement et redondance à court terme ; à plus long terme, faire reposer le serveur sur notre propre registre d'entités.
  - **Adresses de courriel** — publier les clés de `*@foopgp.org` par le mécanisme standard de découverte (WKD).
  - **Outils d'identité** — une série de correctifs attend une relecture avant d'être versée dans la branche principale.
  - **Application mobile** — le portage Android de l'assistant d'installation est à l'arrêt depuis juin ; la brique cryptographique retenue est identifiée, la décision d'architecture reste à prendre.
  - **Infrastructure** — IPv6 sur les sous-domaines, et la note de vérification des signatures d'ISO (ci-dessus), sans porteur désigné à ce jour.
- Campagne de financement d'août : <https://www.helloasso.com/associations/friends-of-openpgp-foopgp/collectes/fr-2026-08>
{{< helloasso-count >}}

### Stingynalty

Pour août : ***stingynalty = 1.13845955296185079345***

Pour septembre : ***stingynalty = (à compléter)***

**Simulateur de cotisation initiale** (2 dimensions) → <https://foopgp.org/djis-simulator/?lang=fr>

**Graphique en 3 dimensions** → <https://www.math3d.org/xzuclzIbuZ>

*Rappel :* si vous avez déjà cotisé, il faut appliquer la formule :

> **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) .

#### Chiffres de l’association

*La clôture comptable de juillet est **programmée dans la semaine** ; ses chiffres figureront au compte rendu du 11 août. Ci-dessous, ceux du 30 juin, déjà publiés dans le [compte rendu du 7 juillet](/fr/assembly/2026-07-07-weekly-report/).*

*Au 30 juin 2026, depuis sa création le 3 avril 2023 :*

|                          | Entités | €         | Ɉ       |
|--------------------------|---------|-----------|---------|
| Certifiés (by-eid/u4)    | 21      | 44 093,05 | 155,923 |
| Non certifiés (by-email) | 33      | 19 341,63 | 166,782 |
| Total                    | 54      | 63 434,68 | 322,705 |

*Seuls les adhérents dont l’identité OpenPGP est certifiée par la Toile de Confiance voient leurs djis effectivement créés et utilisables.*

*Aux adhérents pas encore certifiés : venez nous rencontrer lors d’un de nos prochains ateliers pour finaliser la certification de votre identité OpenPGP, débloquer la création de vos djis et pouvoir les échanger au sein de l’association.*

### Revue de presse

*(à compléter)*

- Chiffrement :
- Sécurité :
- Souveraineté numérique et Open Source :
- Monopole américain :
- Intelligence Artificielle :

### Au cœur de la réunion

*(à compléter en séance)*

### Production de la semaine (28 juillet – 3 août)

- **Créer son identifiant devient simple, et sur téléphone aussi** — les pages qui fabriquent un **identifiant d'entité (EID)** ont été refondues. Il y en a désormais **trois** : une page d'accueil qui explique le choix, puis une page par variante — **u4** pour une personne dotée d'un état civil, **u5** pour toute autre entité (association, entreprise, logiciel, processus). La page u5 est **entièrement nouvelle** : elle ne demande qu'un lieu et un instant, avec une carte cliquable et un bouton pour utiliser sa position actuelle.

  L'ensemble parle **neuf langues**, y compris pour la liste des 245 pays et les noms de mois — sans que nous ayons eu à traduire quoi que ce soit, ces libellés venant du navigateur lui-même. La saisie a été revue pour le téléphone, et des **bulles d'aide** ont été ajoutées partout, utiles à la souris comme aux personnes qui utilisent un lecteur d'écran.

  Point important : ces pages **calculent tout dans votre navigateur**. Aucune de vos données ne part sur un serveur — et elles fonctionnent même copiées sur une clé USB, hors ligne.

  - <https://foopgp.org/eid/?lang=fr>
  - <https://foopgp.org/eid/u4/?lang=fr>
  - <https://foopgp.org/eid/u5/?lang=fr>

- **Un identifiant erroné corrigé** — au passage, nous avons découvert que la page de génération produisait depuis **décembre 2025** un identifiant **non conforme à notre spécification** : un caractère en trop, hérité d'une modification de l'an dernier. C'est corrigé et vérifié contre les exemples de référence de la spécification. *Si vous avez fabriqué un identifiant sur le site entre décembre et aujourd'hui, refaites-le et comparez.*

- **Les accents sont enfin acceptés** — la page refusait les noms accentués (« CLÉREL », « Müller », « Peña »). Elle applique maintenant la règle de translittération de notre spécification, et **montre la ligne reconstituée** en invitant à la relire : cette règle diffère volontairement de celle des passeports, qui n'est que « recommandée » et propose parfois trois formes pour un même caractère.

- **Nos outils de gestion des identités** ont reçu une correction importante : une forme d'identifiant introduite récemment perturbait plusieurs logiciels de courrier (impossible d'écrire à un contact depuis certains clients). Elle a été abandonnée et l'ancienne forme, universellement comprise, rétablie.

### Agenda

- 20 — 22 août à Grenoble : [JDE26](https://journees.lesecologistes.fr/)
- 3, 4 ou 5 septembre : rendez-vous sur Pelleautier *(date à confirmer)*
- L'April invite à participer à la « Fête des Possibles » 2026 pour toucher de nouveaux publics

  \> Une nouvelle édition de la Fête des Possibles, initiée et coordonnée par le Collectif pour une Transition Citoyenne, aura lieu du 11 septembre au 11 octobre 2026. Des centaines d'événements seront organisés partout en France et en Belgique pour valoriser les actions concrètes en faveur d'un avenir plus durable et solidaire.

  <https://linuxfr.org/news/l-april-invite-a-participer-a-la-fete-des-possibles-2026-pour-toucher-de-nouveaux-publics>

  <https://framapiaf.org/@marnic/116986780887404776>
- 24 — 27 septembre à Bourges : [Émancip’Actions](https://emancipactions.fr/)
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/)
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)
