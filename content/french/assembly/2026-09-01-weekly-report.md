---
title: "2026 S36 Rapport Hebdomadaire"
lang: fr
date: 2026-09-01T21:00:00+02:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *à compléter*

***Excusé :*** *à compléter*

### Ordre du jour prochaine visio mardi 8 septembre 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp)  (pas auto-hébergé, mais fourni (sans contrepartie financière  obligatoire) par des professionnels libristes européens, sur des  serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements + revue des travaux réalisés, en cours, ou à prévoir **pour l’association**).
- Retour sur l’**atelier du vendredi 4 septembre à Tallard**.
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- Suite de la **campagne de financement de septembre**.

### Ordres du soir (mardi 1er septembre)

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).
- **Chiffres des cotisations arrêtés au 7 août**.
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- Campagne de financement de septembre.
- Préparation de l’**atelier du vendredi 4 septembre à Tallard**.

### Stingynalty

Pour septembre : ***stingynalty = 1.14415185072666004741***

Pour octobre : ***stingynalty = 1.14987260998029334764***

**Simulateur de cotisation initiale** (2 dimensions) → <https://foopgp.org/djis-simulator/?lang=fr>

**Graphique en 3 dimensions** → <https://www.math3d.org/xzuclzIbuZ>

*Rappel :* si vous avez déjà cotisé, il faut appliquer la formule :

> **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/)  .

#### Chiffres de l’association

*Chiffres inchangés : la dernière cotisation enregistrée reste celle du 7 août 2026. Depuis la création de l’association le 3 avril 2023 : **106 cotisations, 66 588,68 €, 58 cotisants**.*

*Parmi eux, **22 cotisants sont certifiés** dans la Toile de Confiance : **71 % des euros** y sont adossés, mais seulement **38 % des cotisants** — l’écart tient aux plus grosses contributions, qui viennent de personnes déjà certifiées. Ces 22 identités totalisent 52 cotisations, 47 253,05 € et **162,721425 Ɉ créés**.*

*Seuls les adhérents dont l’identité PGP ID est certifiée par la  Toile de Confiance voient leurs djis effectivement créés et utilisables.*

*Aux adhérents pas encore certifiés : venez nous rencontrer lors  d’un de nos prochains ateliers pour finaliser la certification de votre  identité, débloquer la création de vos djis et pouvoir les échanger au sein de l’association.*

### Revue de presse

*à compléter*

### Au cœur de la réunion

*à compléter*

### Production de la semaine (25 août — 1er septembre)

- **La certification ne trouvait plus les identités récentes ; c’est réparé.** Depuis que l’identifiant d’entité s’écrit d’un seul tenant, sans séparateur, le demander en deux morceaux ne donne plus rien : les serveurs de clés n’indexent que des mots entiers. Le certificateur s’entendait donc répondre que la personne assise en face de lui n’avait pas de certificat. Le défaut a été reproduit sur notre propre serveur avant d’être corrigé, et une version corrective est sortie le jour même.
- **L’identifiant d’entité s’écrit d’un seul tenant, partout.** Le séparateur a disparu de nos certificats, de notre serveur de clés et de l’outil qui promeut une feuille de cotisations vers le registre public. Cet outil écrivait d’ailleurs des enregistrements que la branche chargée de les relire ne savait plus lire ; c’est corrigé.
- **Trois versions de l’assistant graphique** (2.0.6, 2.0.7 et 2.0.8). Elles apportent l’affichage du **solde en Ɉ**, sur la page de sa propre clé comme sur celle des contacts ; **l’export et l’import de ses notes de crédibilité**, dans un fichier signé par la clé de sécurité ; des infobulles sur tous les boutons, y compris les boutons grisés — où elles expliquent pourquoi ils le sont ; un bouton de retour à l’accueil en fin de parcours ; et, l’ajout d’un utilisateur terminé, le conseil de se déconnecter pour se reconnecter sous le compte que l’on vient de créer.
- **L’avatar affiché pouvait être celui d’une autre clé.** L’application demandait l’image sans dire de quel certificat elle parlait ; sur un poste qui a vu passer plusieurs clés, la réponse était invariablement la même. Elle nomme désormais le certificat qu’elle vise — ce qui, au passage, épargne à l’outil d’aller le chercher lui-même.
- **Une interrogation des serveurs de clés en moins à chaque branchement.** Deux parties de l’application demandaient la même chose au même moment, alors que l’une n’avait besoin que de ce qui se lit sur la carte.
- **Les traces de l’application sont lisibles et se joignent à un rapport.** Elles s’enregistrent dans un fichier, les erreurs ne se confondent plus avec les codes de retour, et un code de retour se lit à sa couleur. Les liens vers une page de documentation qui n’existe pas ont été retirés.
- **L’application porte son nom dans le menu du bureau**, et se trouve sous « Système » en plus de « Accessoires », le temps que le déplacement se fasse. L’ancien nom reste écrit derrière le nouveau : c’est celui que les gens connaissent.
- **La bibliothèque d’identité dit ce que disent les scripts qu’elle remplace.** Ses seize aides ont été réécrites sur les leurs, dans nos neuf langues, et plusieurs actions refusent maintenant proprement ce qu’elles ne savent pas faire au lieu de le tenter à moitié. **Un travail de fidélité reste devant nous** : la version compilée s’écarte encore de l’originale sur plusieurs comportements, dont l’absence de dialogue interactif. Tant qu’elle n’est appelée que par quelques chemins, la portée en reste limitée.

### TODO — Tâches à faire

Liste non-exhaustive des tâches à réaliser ou chantiers en cours :

- **Comptabilité €** ([dépôt](https://codeberg.org/foopgp/foopgp-cashflow)  git non-public) — automatiser la chaîne HelloAsso : se rapprocher du temps réel plutôt que d’une reprise manuelle, et remercier automatiquement. L’essentiel est écrit et testé depuis juin ; ce qui manque est une mise en service.
- **Comptabilité Ɉ** — publier les deux certifications en attente, puis faire passer le registre au format courant : l’outil de promotion ne lit plus la version dans laquelle il est écrit. Finaliser par ailleurs [les innovations et concepts sous-jacents](https://foopgp.org/documents/en/)[^emission] [^ledger], comme celui d’**arbres universels d’entités** ([spécifications](https://foopgp.org/documents/en/draft-foopgp-uetree-00.txt)  et [code](https://codeberg.org/foopgp/bash-libs/src/branch/main/bin/bl-uetree) ). Et démarrer le frontend (dépot et paquet à créer).
- **Bibliothèque d’identité** — reprendre le portage action par action pour qu’il se comporte comme les scripts d’origine, en gardant ce que la réécriture a apporté de bon.
- **Moteur de chiffrement** — faire aboutir les correctifs proposés en amont, et livrer la version corrigée dans nos dépôts.
- **Serveur de certificats** ([onak-foopgp](https://codeberg.org/foopgp/onak)  → <https://keys.foopgp.org/> ) — durcissement et redondance.
- **Adresses de courriel** — publier les clés de `*@foopgp.org` par le mécanisme standard de découverte (WKD).
- **Application mobile** — le portage Android de l’assistant graphique reste la priorité décidée fin août ; la brique cryptographique retenue est identifiée, des décisions d’architecture restent à prendre.
- **Bibliothèque système** — reprendre la bibliothèque qui crée les comptes sur les postes : trois fonctions, dont une à refaire entièrement. Elle aura son propre paquet.
- **Djibian** (la plupart de [nos dépots git](https://codeberg.org/djibian) ) — Maintenance continue : prise en compte des retours utilisateur,  préselection de logiciels pertinents, pré-configuration des logiciels  que nous mettons en avant (eg: xfce, evolution, thunderbird, …), etc.

### Agenda

- Vendredi 4 septembre après-midi : Atelier djibian + clés de sécurité + foodjis sur Tallard
- L’April invite à participer à la « Fête des Possibles » 2026 pour toucher de nouveaux publics.
  - Une nouvelle édition de la Fête des Possibles, initiée et coordonnée  par le Collectif pour une Transition Citoyenne, aura lieu du 11 septembre au 11 octobre 2026. Des centaines d’événements seront  organisés partout en France et en Belgique pour valoriser les actions  concrètes en faveur d’un avenir plus durable et solidaire.
  - <https://linuxfr.org/news/l-april-invite-a-participer-a-la-fete-des-possibles-2026-pour-toucher-de-nouveaux-publics>
  - <https://framapiaf.org/@marnic/116986780887404776>
- 24 — 27 septembre à Bourges : [Émancip’Actions](https://emancipactions.fr/)
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/) (à priori nous n’irons pas, privilégiant le développement local).
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)

---

[^emission]: https://foopgp.org/documents/en/foopgp-djis-emission-workflow.md
[^ledger]: https://foopgp.org/documents/en/foopgp-djis-decentralized-ledger.md
