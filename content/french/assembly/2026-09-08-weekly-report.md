---
title: "2026 S37 Rapport Hebdomadaire"
lang: fr
date: 2026-09-08T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *(à compléter en séance)*

### Ordre du jour prochaine visio mardi 15 septembre 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp)   (pas auto-hébergé, mais fourni (sans contrepartie financière   obligatoire) par des professionnels libristes européens, sur des   serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements + revue des travaux réalisés, en cours, ou à prévoir **pour l’association**).
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- Suite de la **campagne de financement de septembre**.
- **Fête des Possibles** (11 septembre — 11 octobre) : y participons-nous, et sous quelle forme ?
- Point sur la nouvelle **image d’installation Djibian**, et sur la **construction pour l’architecture ARM**.

### Ordres du soir (mardi 8 septembre)

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).
- Retour sur l’**atelier du vendredi 4 septembre à Tallard**.
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- Suite de la **campagne de financement de septembre**.

### Stingynalty

Pour septembre : ***stingynalty = 1.14415185072666004741***

Pour octobre : ***stingynalty = 1.14987260998029334764***

**Simulateur de cotisation initiale** (2 dimensions) → <https://foopgp.org/djis-simulator/?lang=fr>

**Graphique en 3 dimensions** → <https://www.math3d.org/xzuclzIbuZ>

*Rappel :* si vous avez déjà cotisé, il faut appliquer la formule :

> **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/)   .

#### Chiffres de l’association

*Chiffres inchangés depuis le compte rendu précédent : le journal des cotisations s’arrête toujours au 7 août 2026.*

*Depuis la création de l’association le 3 avril 2023 : **106 cotisations, 66 588,68 €, 58 cotisants**.*

*Parmi eux, **22 cotisants sont certifiés** dans la Toile de Confiance : **71 % des euros** y sont adossés, mais seulement **38 % des cotisants** — l’écart tient aux plus grosses contributions, qui viennent de personnes déjà certifiées. Ces 22 identités totalisent 52 cotisations, 47 253,05 € et **162,721425 Ɉ créés**.*

***Seuls les adhérents dont l’identité PGP ID est certifiée par la   Toile de Confiance voient leurs djis effectivement créés et utilisables.***

*Aux adhérents pas encore certifiés : venez nous rencontrer lors   d’un de nos prochains ateliers pour finaliser la certification de votre   identité, débloquer la création de vos djis et pouvoir les échanger au  sein de l’association.*

### Revue de presse

*(à compléter)*

### Au cœur de la réunion

*(à compléter en séance)*

### Production de la semaine (1er — 8 septembre)

- **L’assistant graphique tourne à nouveau sous Ubuntu, et sous Linux Mint.** Il dépendait d’une bibliothèque absente ou trop ancienne selon les distributions ; cette dépendance a été retirée. Un visiteur de l’atelier est venu avec une Mint : l’installation et le fonctionnement s’y sont passés sans accroc.
- **L’assistant porte désormais son nom jusque dans le paquet : *foodjis*.** L’ancien nom, *djibian-onboarding*, reste satisfait et reste celui du programme lancé, le temps que le nouveau entre dans les têtes.
- **Deux corrections visibles.** La carte de visite imprimée pouvait être celle affichée juste avant. Et une clé de sécurité neuve, ou remise à zéro, était annoncée comme « non vide » au lieu d’ouvrir directement le parcours de configuration : la cause était une phrase de contrôle traduite, que le programme comparait encore en anglais.
- **La détection du branchement d’une clé ne consomme plus rien au repos.** L’application interrogeait le système chaque seconde ; elle attend maintenant qu’il la prévienne.
- **La réécriture de la bibliothèque d’identité avance.** La lecture du trousseau ne passe plus par une bibliothèque intermédiaire, ce qui l’a rendue nettement plus rapide et surtout portable. Huit appels de plus de l’assistant graphique s’adressent désormais à la nouvelle bibliothèque plutôt qu’aux scripts d’origine ; quatre restent à porter, chacun pour une raison identifiée.
- **Les correctifs du moteur de chiffrement ont un dépôt, une version et des paquets.** Deux des trois correctifs sont retenus pour l’envoi en amont ; le troisième reste au dépôt sans être proposé. Les paquets corrigés sont dans nos dépôts.
- **Nos paquets se construisent maintenant pour l’architecture ARM**, sur une petite machine dédiée. Le moteur de chiffrement et l’assistant graphique y ont été produits et vérifiés. Les constructions se font désormais dans un environnement isolé, ce qui garantit qu’un paquet construit chez nous s’installe ailleurs.
- **Une image d’installation nettement plus légère** — 2,5 Go au lieu de 7 — obtenue en n’embarquant plus que ce qui serait réellement installé. Deux défauts ont été trouvés et corrigés à cette occasion : il manquait de quoi ouvrir les disques au démarrage. L’image est en cours de test.

### TODO — Tâches à faire

Liste non-exhaustive des tâches à réaliser ou chantiers en cours :

- **Comptabilité €** ([dépôt](https://codeberg.org/foopgp/foopgp-cashflow)   git non-public) — automatiser la chaîne HelloAsso : se rapprocher du  temps réel plutôt que d’une reprise manuelle, et remercier  automatiquement. L’essentiel est écrit et testé depuis juin ; ce qui  manque est une mise en service.
- **Comptabilité Ɉ** — publier les deux certifications en  attente, puis faire passer le registre au format courant : l’outil de  promotion ne lit plus la version dans laquelle il est écrit. Finaliser  par ailleurs [les innovations et concepts sous-jacents](https://foopgp.org/documents/en/), comme celui d’**arbres universels d’entités** ([spécifications](https://foopgp.org/documents/en/draft-foopgp-uetree-00.txt)   et [code](https://codeberg.org/foopgp/bash-libs/src/branch/main/bin/bl-uetree)  ). Et démarrer le frontend (dépot et paquet à créer).
- **Bibliothèque d’identité** — le portage se poursuit action par action. Une fois les derniers appels migrés, les noms et les options seront rangés avant la première version publiée.
- **Moteur de chiffrement** — les paquets corrigés sont livrés dans nos dépôts ; reste à faire aboutir les correctifs en amont, auprès du projet d’origine.
- **Serveur de certificats** ([onak-foopgp](https://codeberg.org/foopgp/onak)   → <https://keys.foopgp.org/>  ) — durcissement et redondance.
- **Adresses de courriel** — publier les clés de `*@foopgp.org` par le mécanisme standard de découverte (WKD).
- **Application mobile** — le portage Android de  l’assistant graphique reste la priorité décidée fin août ; la brique  cryptographique retenue est identifiée, des décisions d’architecture  restent à prendre.
- **Bibliothèque système** — reprendre la bibliothèque  qui crée les comptes sur les postes : trois fonctions, dont une à  refaire entièrement. Elle aura son propre paquet.
- **Infrastructure** — migrer la chaîne de construction sur un serveur à jour, puis mettre nos deux serveurs en redondance, afin qu’une panne de l’un ne coupe rien.
- **Djibian** (la plupart de [nos dépots git](https://codeberg.org/djibian)  ) — Maintenance continue : prise en compte des retours utilisateur,   préselection de logiciels pertinents, pré-configuration des logiciels   que nous mettons en avant (eg: xfce, evolution, thunderbird, …), etc.

### Agenda

- Vendredi 4 septembre après-midi : Atelier djibian + clés de sécurité + foodjis à Tallard — *fait*.
- 11 septembre — 11 octobre : [Fête des Possibles](https://linuxfr.org/news/l-april-invite-a-participer-a-la-fete-des-possibles-2026-pour-toucher-de-nouveaux-publics) 2026, initiée et coordonnée par le Collectif pour une Transition Citoyenne. Des centaines d’événements partout en France et en Belgique.
- 24 — 27 septembre à Bourges : [Émancip’Actions](https://emancipactions.fr/)
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/) (à priori nous n’irons pas, privilégiant le développement local).
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)

---

[^emission]: https://foopgp.org/documents/en/foopgp-djis-emission-workflow.md
[^ledger]: https://foopgp.org/documents/en/foopgp-djis-decentralized-ledger.md
