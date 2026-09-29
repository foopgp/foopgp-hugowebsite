---
title: "2026 S39 Rapport Hebdomadaire"
lang: fr
date: 2026-09-22T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---
***Présents :*** *Aveline G., Laurent C, François R, Jean-Jacques B.*

### Ordre du jour prochaine visio mardi 29 septembre 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on se retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp)  .*

- Points habituels : (revue de presse + déplacements + revue des travaux réalisés, en cours, ou à prévoir **pour l’association**).
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- **Retour d’Émancip’Actions à Bourges** (24 — 27 septembre) : ce qu’on y a montré, ce qu’on en rapporte.
- **Publication de foodjis sur le magasin Google** : où en est le compte de l’association, et ce qu’il reste à décider.

### Ordres du soir (mardi 22 septembre)

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).
- Point sur la **certification** des membres par la Toile de Confiance (qui reste à certifier).
- **Émancip’Actions à Bourges** (24 — 27 septembre) : qui s’y rend, et avec quoi ?
- **Mise en production de la nouvelle version de foodjis** : ce qui reste avant de la sortir du dépôt de test.

### Stingynalty

Pour septembre : ***stingynalty = 1.14415185072666004741***

Pour octobre : ***stingynalty = 1.14987260998029334764***

**Simulateur de cotisation initiale** (2 dimensions) → <https://foopgp.org/djis-simulator/?lang=fr> 

**Graphique en 3 dimensions** → <https://www.math3d.org/xzuclzIbuZ> 

*Rappel :* si vous avez déjà cotisé, il faut appliquer la formule :

> **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/)      .

#### Chiffres de l’association

*Chiffres inchangés depuis le compte rendu précédent : le journal des cotisations s’arrête toujours au 7 août 2026.*

*Depuis la création de l’association le 3 avril 2023 : **106 cotisations, 66 588,68 €, 58 cotisants**.*

*Parmi eux, **22 cotisants sont certifiés** dans la Toile de Confiance : **71 % des euros** y sont adossés, mais seulement **38 % des cotisants**  — l’écart tient aux plus grosses contributions, qui viennent de  personnes déjà certifiées. Ces 22 identités totalisent 52 cotisations,  47 253,05 € et **162,721425 Ɉ créés**.*

***Seuls les adhérents dont l’identité PGP ID est certifiée  par la Toile de Confiance voient leurs djis effectivement créés et  utilisables.***

*Aux adhérents pas encore certifiés : venez nous rencontrer lors  d’un de nos prochains ateliers pour finaliser la certification de votre  identité, débloquer la création de vos djis et pouvoir les échanger au  sein de l’association.*

### Revue de presse

- Les IA médicales génèrent des erreurs dans les diagnostics et les noms de médicaments

  <https://next.ink/254301/les-ia-medicales-generent-des-erreurs-dans-les-diagnostics-et-les-noms-de-medicaments/>

  Alors qu’un nombre croissant de médecins recourent à l’IA pour enregistrer et retranscrire leurs consultations, un organisme de surveillance du système de santé publique britannique alerte sur la propension de ces dispositifs à générer des erreurs. Ces dernières peuvent avoir de réelles répercussions sur la vie des patient·es. 

  Non. Sans. Blague. Qui aurait pu prédire.

  <https://mamot.fr/@Khrys/117206026550112683>

### Au cœur de la réunion

- Démonstration de foodjis-android 0.1.0.
- François R. aura moins de disponibilités les prochaines semaines.

### Production de la semaine (15 — 22 septembre)

- **L’application mobile a sa première version publiable sur play store Googlz : foodjis 0.1.0.** Neuf versions d’essai se sont succédé dans la semaine sur un téléphone avant celle-là.
- **Le bug d’impossibilité de révoquer certains uid est enfin résolu.**
-  
- **ne adresse, une identité.** Une adresse s’inscrit derrière sa seule partie locale, jamais derrière un nom, et se révoque sur *tous* les champs qui la portent. Même règle sur le téléphone et sur l’assistant graphique : une adresse de courriel correspond à une identité, et à une seule.
- **La clé de sécurité est maintenant réclamée dans une fenêtre**, avec une petite animation dessinée par nous — téléphone, carte, trois ondes. Elle l’était par une ligne en bas de page, que personne ne lit : une action qui attend une carte derrière une ligne invisible est une action qui ne finit jamais.
- **Toutes les pages entendent la carte.** Six d’entre elles la laissaient au système, c’est-à-dire à l’écran d’une autre application. Approcher sa clé de sécurité n’est pas une déclaration sur la page où l’on se trouve.
- **Les nouveautés ont leur propre page, en neuf langues**, et la navigation boucle : les quatre pages principales se parcourent en rond du doigt, et les trois pages de bas de pile se descendent par un lien orange qui nomme sa destination.
- **La fiche du magasin est prête.** Titre, phrase de présentation et description dans les neuf langues de l’application, icône, bandeau, et **54 captures d’écran** — six pages dans chacune des neuf langues, prises sur un vrai téléphone.
- **La politique de confidentialité de l’application est en ligne**, dans nos mentions légales : ce qui quitte l’appareil, à qui, et le fait qu’un certificat publié ne se reprend pas — il se révoque.
- **Le numéro d’entreprise international de l’association est obtenu**, après une soirée d’insistance : en France, c’est un revendeur qui fait payer l’accès à sa propre fiche, alors que l’émetteur le donne. Le compte développeur est en cours de validation chez Google ; c’est désormais le seul obstacle à la publication.
- **Le plan pour remplacer OpenKeychain dans Thunderbird est écrit et chiffré** : quinze à vingt-cinq jours de travail, en six étapes livrables une à une. La première commence — celle qui fait apparaître notre application dans la liste des fournisseurs de Thunderbird.

### TODO — Tâches à faire

Liste non-exhaustive des tâches à réaliser ou chantiers en cours :

- **Comptabilité €** ([dépôt](https://codeberg.org/foopgp/foopgp-cashflow)      git non-public) — automatiser la chaîne HelloAsso : se rapprocher  du    temps réel plutôt que d’une reprise manuelle, et remercier     automatiquement. L’essentiel est écrit et testé depuis juin ; ce qui     manque est une mise en service.
- **Comptabilité Ɉ** — publier les deux certifications en     attente, puis faire passer le registre au format courant : l’outil  de    promotion ne lit plus la version dans laquelle il est écrit.   Finaliser   par ailleurs [les innovations et concepts sous-jacents](https://foopgp.org/documents/en/)   , comme celui d’**arbres universels d’entités** ([spécifications](https://foopgp.org/documents/en/draft-foopgp-uetree-00.txt)      et [code](https://codeberg.org/foopgp/bash-libs/src/branch/main/bin/bl-uetree)     ). Et démarrer le frontend (dépot et paquet à créer).
- **Bibliothèque d’identité pgpid** — les neuf catalogues  de  traduction sont désormais complets ; restent quelques points de  forme  dans le paquet avant de la présenter à une communauté extérieure   (Debian, LibrePGP).
- **Moteur de chiffrement** — les paquets corrigés sont livrés dans nos dépôts ; reste à faire aboutir les correctifs en amont, auprès du projet d’origine.
- **Serveur de certificats** ([onak-foopgp](https://codeberg.org/foopgp/onak)      → <https://keys.foopgp.org/>     ) — durcissement et redondance.
- **Adresses de courriel** — publier les clés de `*@foopgp.org` par le mécanisme standard de découverte (WKD).
- **Application mobile** — la première version publiable  est   prête et la fiche du magasin avec elle. Restent la signature avec  la clé   de l’association, les formulaires de la console, et les  captures en   anglais si la fiche s’ouvre dans cette langue.
- **Infrastructure** — migrer la chaîne de construction    sur un serveur à jour, puis mettre nos deux serveurs en redondance,  afin   qu’une panne de l’un ne coupe rien. La machine de construction   actuelle  n’a plus assez de mémoire pour la dernière version de   l’assistant.
- **Djibian** (la plupart de [nos dépots git](https://codeberg.org/djibian)     ) — Maintenance continue : prise en compte des retours utilisateur,      préselection de logiciels pertinents, pré-configuration des  logiciels     que nous mettons en avant (eg: xfce, evolution,  thunderbird, …), etc.

### Agenda

- 11 septembre — 11 octobre : [Fête des Possibles](https://linuxfr.org/news/l-april-invite-a-participer-a-la-fete-des-possibles-2026-pour-toucher-de-nouveaux-publics)    2026, initiée et coordonnée par le Collectif pour une Transition    Citoyenne. Des centaines d’événements partout en France et en Belgique.
- 24 — 27 septembre à Bourges : [Émancip’Actions](https://emancipactions.fr/) 
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/)    (à priori nous n’irons pas, privilégiant le développement local).
- 9 et 10 décembre 2026 : [OSXP Paris — Porte de Versailles](https://www.opensource-experience.com/) 
- [… agenda du libre](https://www.agendadulibre.org) 
