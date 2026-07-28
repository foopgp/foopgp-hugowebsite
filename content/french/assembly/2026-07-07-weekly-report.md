---
title: "2026 S28 Rapport Hebdomadaire"
lang: fr
date: 2026-07-07T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** Yann Kerb., Jean-Jacques B., Laurent C.

*Note : Pas de visio la semaine prochaine : jour de vacances ou de fêtes nationale ou de feux d'artifices.*

### Ordre du jour prochaine visio mardi 21 juillet 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fourni (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Revue de presse.
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- Avancement de l'outillage (eg: registre `uetree`, certification décentralisée, ...).
- Participations et démonstrations publiques à venir (JDE26 à Grenoble, Émancip'Actions à Bourges, Capitole du Libre, OSXP).
- Campagne de financement de juillet : <https://www.helloasso.com/associations/friends-of-openpgp-foopgp/collectes/juillet>
{{< helloasso-count >}}

### Ordres du soir (mardi 7 juillet)

- Résultats de la campagne de financement de juin et **clôture comptable** (chiffres ci-dessous).
- Communication.
- Actions réalisées, en cours, à prévoir.
- Participations et démonstrations publiques à venir.

### Stingynalty

Pour juillet : ***stingynalty = 1.13279557508641869996***

Pour août : ***stingynalty = 1.13845955296185079345***

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

*Au 30 juin 2026, depuis sa création le 3 avril 2023 :*

|                          | Entités | €         | Ɉ       |
|--------------------------|---------|-----------|---------|
| Certifiés (by-eid/u4)    | 21      | 44 093,05 | 155,923 |
| Non certifiés (by-email) | 33      | 19 341,63 | 166,782 |
| Total                    | 54      | 63 434,68 | 322,705 |

*Seuls les adhérents dont  l’identité OpenPGP est certifiée par la Toile de Confiance voient leurs djis effectivement créés et utilisables.*

*Aux adhérents pas encore certifiés : venez nous rencontrer lors d’un de nos prochains ateliers pour finaliser la certification de votre identité OpenPGP, débloquer la création de vos djis et pouvoir les  échanger au sein de l’association.*

### Revue de presse

*Pas de revue de presse cette fois-çi ! 😸*

### Au cœur de la réunion

- **Clôture de juin** : résultats comptables (cotisations) ci-dessus et point sur la certification des membres.
- Debut d'organisation d'un atelier d'un jour sur Lyon. Plages à éviter (Note pour Yann) : du 1er au 7 septembre, et du 24 au 27 (déplacement potentiel à Bourges).
- (**Nouveau**) Problème de dépendances de djibian-onboarding sur Ubuntu (remonté par Laurent — une mise à jour a du casser qqch sur ce système que nous n'utilisons pas en R&D). Investigation à venir.

### Production de la semaine (30 juin – 6 juillet)

- **Clôture comptable de juin** — recalcul complet des contributions au 30 juin (chiffres ci-dessus) et envoi de **54 courriels de remerciement** personnalisés, distinguant les djis *créés* (membres certifiés, échangeables) des djis *indicatifs* (en attente de certification).

- **djibian-onboarding 1.5.0** — l'application affiche désormais, quand on branche sa clé, le **solde de djis** du membre et le **compteur de certifications** (en bleu, cliquable, qui ouvre la clé sur le serveur `keys.foopgp.org`). Nettoyage : retrait d'un ancien sous-système web devenu obsolète (application autonome).

- **Refonte du format de registre `uetree`** — grand nettoyage vers une version 1.2 : chaque fiche d'entité devient un **vCard 4.0** standard, donc lisible par n'importe quel carnet d'adresses (téléphone, messagerie, ordinateur), la clé OpenPGP voyageant dans le champ standard prévu pour ça. C'est le socle du registre des cotisations et des djis ; l'outillage associé a été réécrit (validation, recherche, promotion des identités certifiées).

- **Certification décentralisée** — nouveaux outils pour déterminer, **sans bureau central et de façon reproductible par un tiers vérificateur**, si une identité est certifiée dans la Toile de Confiance (ce qui débloque la création de ses djis). Le modèle repose sur une délégation de confiance *ordonnée*, ancrée sur la clé de chaque personne : je ne délègue ma confiance qu'à des référents que je juge moi-même dignes de confiance.

- **Mnêmê** — la matrice sous-jacente est passée en Opus 4.8 ; l'article d'identité a été mis à jour en conséquence.

- **Documentation** — article de blog sur le format `uetree`, et brouillon IETF en cours de révision.

### Agenda

- 20 — 22 août à Grenoble : [JDE26](https://journees.lesecologistes.fr/)
- 24 — 27 septembre à Bourges : [Émancip'Actions](https://emancipactions.fr/)
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/)
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)
