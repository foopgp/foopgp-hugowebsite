---
title: "2026 S38 Rapport Hebdomadaire"
lang: fr
date: 2026-09-15T21:00:00+02:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *à compléter.*

### Ordre du jour prochaine visio mardi 22 septembre 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp)    (pas auto-hébergé, mais fourni (sans contrepartie financière    obligatoire) par des professionnels libristes européens, sur des    serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements + revue des travaux réalisés, en cours, ou à prévoir **pour l’association**).
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- **Émancip’Actions à Bourges** (24 — 27 septembre) : qui s’y rend, et avec quoi ?
- **Mise en production de la nouvelle version de foodjis** : ce qui reste avant de la sortir du dépôt de test.

### Ordres du soir (mardi 15 septembre)

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- **Fête des Possibles** (11 septembre — 11 octobre) : y participons-nous, et sous quelle forme ?
- **Démonstration de la nouvelle version de foodjis, sur Linux et sur Android.**

### Stingynalty

Pour septembre : ***stingynalty = 1.14415185072666004741***

Pour octobre : ***stingynalty = 1.14987260998029334764***

**Simulateur de cotisation initiale** (2 dimensions) → <https://foopgp.org/djis-simulator/?lang=fr> 

**Graphique en 3 dimensions** → <https://www.math3d.org/xzuclzIbuZ> 

*Rappel :* si vous avez déjà cotisé, il faut appliquer la formule :

> **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/)    .

#### Chiffres de l’association

*Chiffres inchangés depuis le compte rendu précédent : le journal des cotisations s’arrête toujours au 7 août 2026.*

*Depuis la création de l’association le 3 avril 2023 : **106 cotisations, 66 588,68 €, 58 cotisants**.*

*Parmi eux, **22 cotisants sont certifiés** dans la Toile de Confiance : **71 % des euros** y sont adossés, mais seulement **38 % des cotisants**  — l’écart tient aux plus grosses contributions, qui viennent de  personnes déjà certifiées. Ces 22 identités totalisent 52 cotisations,  47 253,05 € et **162,721425 Ɉ créés**.*

***Seuls les adhérents dont l’identité PGP ID est certifiée  par la   Toile de Confiance voient leurs djis effectivement créés et  utilisables.***

*Aux adhérents pas encore certifiés : venez nous rencontrer lors    d’un de nos prochains ateliers pour finaliser la certification de votre    identité, débloquer la création de vos djis et pouvoir les échanger  au  sein de l’association.*

### Revue de presse

*À compléter en séance.*

### Au cœur de la réunion

*À compléter en séance.*

### Production de la semaine (8 — 15 septembre)

- **La bibliothèque d’identité est devenue un logiciel à part entière.** Elle vivait à l’intérieur de l’assistant graphique, qui en embarquait sa propre copie ; c’est désormais un paquet installé une fois pour toutes, dont l’assistant dépend comme de n’importe quel autre outil du système. Première version publiée dans notre dépôt de test cette semaine.
- **Deux cent soixante-quinze mégaoctets de dépendances en moins.** Imprimer une feuille de secours ou une planche de cartes de visite réclamait jusqu’ici une distribution TeX complète et un convertisseur de documents. Les deux sont partis : le dessinateur qui servait déjà pour la carte fait aussi les feuilles.
- **Les cartes de visite s’impriment de nouveau nettement.** Sur une planche, la carte était posée comme une photographie et non comme un dessin : agrandie, elle devenait floue, au point que les empreintes n’étaient plus lisibles.
- **Les pages de manuel existent en neuf langues — et la française est enfin en français.** Le catalogue de traduction s’était décalé des textes qu’il traduisait, si bien que chaque page « traduite » sortait en anglais.
- **Nous ne disons plus « OpenPGP » mais « certificats PGP ».** Ce que nous lisons et écrivons est compatible avec les deux familles du standard, et n’en nommer qu’une revient à prendre parti dans une querelle qui n’est pas la nôtre. Seule la *carte OpenPGP*, qui est le nom d’une spécification, garde le sien.
- **Ce qui tient sur une feuille imprimée est maintenant borné, et expliqué.** Un code trop dense n’est plus lisible par une caméra ordinaire : au-delà de la limite, l’outil refuse en disant la taille et en proposant le réglage qui convient, au lieu de produire une feuille que personne ne pourra relire.
- **La liste des serveurs de certificats se règle depuis l’assistant**, comme sur mobile. Ils sont interrogés dans l’ordre donné, et toute modification d’un certificat — adresse, propriété, portrait — part désormais vers ces serveurs-là et non vers une liste figée.
- **Un plantage silencieux corrigé.** Dérouler les certifications de quelqu’un dont nous ne connaissons aucun des signataires faisait mourir l’outil sans un mot ; l’assistant affichait alors « personne n’a certifié ce certificat », ce qui est une tout autre affirmation. Sur un certificat signé par cent dix personnes, la liste s’affiche maintenant.
- **L’application mobile a beaucoup avancé.** La clé de sécurité signe depuis le téléphone, ce qui lui permet enfin d’agir et non seulement de lire : certifier, modifier ses propres propriétés, régler la crédibilité accordée à quelqu’un. Le code PIN est demandé puis gardé un moment, comme le fait l’application de référence du domaine. Le partage par QR code et la lecture d’un certificat tendu au-dessus d’une table fonctionnent.
- **Deux articles publiés sur le site**, en français et en anglais : l’anatomie d’une tentative d’hameçonnage reçue cet été, décortiquée étape par étape, et la page qui présente notre contributrice non-humaine et ce que sa clé de sécurité ouvre.
- **La chaîne de construction est séparée en deux** — les paquets d’un côté, l’image d’installation de l’autre — et l’archive de paquets se construit avec. Les statistiques de fréquentation du site, muettes depuis un changement de droits, refonctionnent.

### TODO — Tâches à faire

Liste non-exhaustive des tâches à réaliser ou chantiers en cours :

- **Comptabilité €** ([dépôt](https://codeberg.org/foopgp/foopgp-cashflow)    git non-public) — automatiser la chaîne HelloAsso : se rapprocher du   temps réel plutôt que d’une reprise manuelle, et remercier   automatiquement. L’essentiel est écrit et testé depuis juin ; ce qui   manque est une mise en service.
- **Comptabilité Ɉ** — publier les deux certifications en   attente, puis faire passer le registre au format courant : l’outil de   promotion ne lit plus la version dans laquelle il est écrit. Finaliser   par ailleurs [les innovations et concepts sous-jacents](https://foopgp.org/documents/en/) , comme celui d’**arbres universels d’entités** ([spécifications](https://foopgp.org/documents/en/draft-foopgp-uetree-00.txt)    et [code](https://codeberg.org/foopgp/bash-libs/src/branch/main/bin/bl-uetree)   ). Et démarrer le frontend (dépot et paquet à créer).
- **Bibliothèque d’identité pgpid** — la première version est   publiée ; reste à la rendre présentable pour une communauté extérieure   (Debian, LibrePGP) : les huit catalogues de traduction encore   incomplets, et quelques points de forme dans le paquet.
- **Moteur de chiffrement** — les paquets corrigés sont livrés dans nos dépôts ; reste à faire aboutir les correctifs en amont, auprès du projet d’origine.
- **Serveur de certificats** ([onak-foopgp](https://codeberg.org/foopgp/onak)    → <https://keys.foopgp.org/>   ) — durcissement et redondance.
- **Adresses de courriel** — publier les clés de `*@foopgp.org` par le mécanisme standard de découverte (WKD).
- **Application mobile** — le portage Android reste la   priorité décidée fin août. Le téléphone signe désormais avec la clé de   sécurité ; restent la mise en forme de quelques écrans et le premier   paquet installable.
- **Bibliothèque système** — reprendre la bibliothèque bl-djibian qui crée les comptes sur les postes : trois fonctions, dont une à   refaire entièrement. Elle aura son propre paquet.
- **Infrastructure** — migrer la chaîne de construction  sur un serveur à jour, puis mettre nos deux serveurs en redondance, afin  qu’une panne de l’un ne coupe rien. La machine de construction actuelle  n’a plus assez de mémoire pour la dernière version de l’assistant.
- **Djibian** (la plupart de [nos dépots git](https://codeberg.org/djibian)   ) — Maintenance continue : prise en compte des retours utilisateur,    préselection de logiciels pertinents, pré-configuration des logiciels    que nous mettons en avant (eg: xfce, evolution, thunderbird, …), etc.

### Agenda

- 11 septembre — 11 octobre : [Fête des Possibles](https://linuxfr.org/news/l-april-invite-a-participer-a-la-fete-des-possibles-2026-pour-toucher-de-nouveaux-publics)  2026, initiée et coordonnée par le Collectif pour une Transition  Citoyenne. Des centaines d’événements partout en France et en Belgique.
- 24 — 27 septembre à Bourges : [Émancip’Actions](https://emancipactions.fr/) 
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/)  (à priori nous n’irons pas, privilégiant le développement local).
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/) 
- [… agenda du libre](https://www.agendadulibre.org) 

---
