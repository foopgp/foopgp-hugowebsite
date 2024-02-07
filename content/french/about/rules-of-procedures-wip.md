---
title: "Réglement intérieur foopgp"
lang: fr
###date: 2019-07-06T15:27:17+06:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Réglement intérieur de l'association foopgp"
image: "images/logos/logo-black-pgp.png"
categories: ["about"]
###tags: [""]
type: "post"
---

## Règlement intérieur foopgp

---

Ce règlement intérieur a pour objectif de préciser [les statuts](../status/) de l'association foopgp, dont l'objet est de rassembler toutes les personnes physiques ou morales qui utilisent ou développent des solutions technologiques basées sur les normes OpenPGP.

Le règlement intérieur en vigueur devrait être remis à chaque nouvel adhérent,
et il doit être consultable sur le site Web de l'association : https://foopgp.org/fr/about/rules-of-procedures/ .


### Article 1er – Composition

L'association foopgp est composée de membres : personnes physiques, et de partenaires : personnes morales.


### Article 2 - Modification du règlement intérieur

Le règlement intérieur de l’association foopgp est établi par le conseil d’administration conformément à l'article 15 des [statuts](../status/).

Il peut être modifié par le conseil d’administration sur proposition d'un de ses membres.

Toute modification doit se faire approuver par l'assemblée générale.


### Article 3 – Cotisation

Pour chaque exercice, les membres actifs doivent s'acquitter d'une cotisation, notée *fee*.

Le montant et les natures de celle-ci sont fixés par le Conseil d'Administration qui le soumet avant chaque exercice à l'approbation de l’Assemblée Générale.

Toute cotisation versée à l'association est définitivement acquise. Aucun remboursement de cotisation ne peut être exigé en cas de démission, d'exclusion ou de décès d'un membre en cours d’année.

**Le montant de la cotisation *fee* défini lors de la dernière assemblée
générale est consultable sur le site Web de l'association : https://foopgp.org/fr/about/rules-parameters/**

Le versement de la cotisation doit être effectué de préférence par virement (IBAN : FR76 1027 8079 9800 0208 2780 107) ou par chèque à l'ordre de l'association foopgp.


### Article 4 - Modalités relatives aux jetons de pouvoir (confer article 10bis des Statuts)

Tous les dons à l'association reçus à titre individuel (personne physique) donnent droit à des jetons de pouvoir,
suivant la formule :

**j = log₂(d+1) / *stingynalty***

Avec :
* j : la quantité de jetons
* d : le montant total du don en équivalent euro (€)
* *stingynalty* : le facteur d'inflation
* log₂() : la fonction logarithme binaire. C'est à dire de base 2 :
  log₂(x) = ln(x) / ln(2)

où *stingynalty* croît automatiquement de 5 pour mille (5 ‰) le premier jour de chaque mois, à 0h00 :

**stingynaltyₙ = stingynaltyₙ₋₁ + 0.005 × stingynaltyₙ₋₁**

En cas d'inflation significative de la zone euro, un ajustement du paramètre *stingynalty* pourra être décidé en assemblée générale.

*Explication :* en choisissant un facteur d'inflation supérieur à ceux calculés en zone euro (eg: eurostat)
nous pouvons créer un léger « [Fear Of Missing Opportunity](https://fr.wikipedia.org/wiki/Syndrome_FOMO) ».

Chaque don étant compté à titre individuel, tout nouveau don donne droit à de nouveaux jetons suivant la formule :

**jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Avec :
* jₙ : la quantité de jetons supplémentaires
* jₜ : la quantité totale de jetons issue des dons précédents (jₜ = jₙ₋₁ + jₙ₋₂ + ... + j₀)
* dₙ : le montant du nième don
* dₜ : le montant total des dons précédents (dₜ = dₙ₋₁ + dₙ₋₂ + ... + d₀ )
* *stingynaltyₙ* : le facteur d'inflation à la période du nième don

*Note :* jₙ ne peut être négatif. Si le nième don ne comble pas la croissance du facteur d'inflation, alors le don est compté mais jₙ est nul.

**Les tableaux de correspondance entre dons et jetons, en fonction des facteurs d'inflations *stingynalty* actuels et à venir,
sont consultables sur le site Web de l'association : https://foopgp.org/fr/about/rules-parameters/**


### Article 5 – Émission universelle de nouveaux jetons (confer article 10bis des Statuts)

À chaque exercice, de nouveaux jetons sont émis à quantité égale pour chaque personne physique membre de l’association. **Ce mécanisme permet d’appliquer la [théorie relative de la monnaie de Stéphane Laborde](https://trm.creationmonetaire.info/).**

Ainsi, périodiquement, chaque membre actif de l’association, c’est-à-dire à jour de sa cotisation et de son impôt associatif (cf. articles 3 et 7) pourra émettre, avant la fin de la dite période, une quantité de nouveaux jetons égales à :

**jₛ= *growthc* × Mₜ ∕ N**

Avec :
* jₛ : la quantité de jetons supplémentaires issue de cette émission
* *growthc* : un coefficient de croissance de la masse totale de l’ensemble des jetons
* Mₜ : la masse totale de l’ensemble des jetons (avant cette émission universelle)
* N : Le nombre de membres actifs sur la période

**Le coefficient de croissance *growthc* défini lors de la dernière assemblée
générale est consultable sur le site Web de l'association : https://foopgp.org/fr/about/rules-parameters/**

### Article 6 – Portefeuilles

Tout jeton doit être associé à un et un seul portefeuille.

Toute personne physique membre de l’association doit posséder au moins un portefeuille individuel.

Toute personne physique peut posséder des portefeuilles secondaires, éventuellement partageables, en proportion égale, avec d’autres personnes physiques.

Ces portefeuilles sont notés « W ».


### Article 7 – Impôt associatif universel (confer article 10bis des Statuts)

À chaque exercice, tous les portefeuilles enregistrés dans l’association doivent exécuter, au bénéfice de l’association, un virement égal à un pourcentage de la valeur moyenne du portefeuille durant l’exercice précédent.

Ce pourcentage est appelé impôt associatif et est noté « *taxe* ». Il est révisable à chaque exercice.

Tant que cet impôt associatif n’est pas réglé, les membres associés à ces portefeuilles n’ont pas accès aux droits des membres actifs.

**Le pourcentage d'imposition *taxe* défini lors de la dernière assemblée
générale est consultable sur le site Web de l'association : https://foopgp.org/fr/about/rules-parameters/**

### Article 8 – Vote quadratique (confer article 10bis des Statuts)

Durant chaque exercice, les membres actifs pourront exprimer leur voix pour valider, ou non, certaines résolutions prises par le conseil d’administration.

Le nombre de voix de chaque membre actif dépend de la quantité de jetons de pouvoir en leur possession, suivant la formule :

**v = j^*sharp* = jˢʰᵃʳᵖ**

Avec :
* v : le nombre de voix
* j : la quantité de jetons enregistrés en leur possession au moment du vote
* *sharp* : l’exposant de pouvoir, compris entre 0 et 1 : 0 ≤ p ≤ 1

*Explication :*
* *sharp*=0 équivaut à « *Une personne, une voix* »
* *sharp*=1 équivaut à « *Un jeton, une voix* »
* *sharp*=1/2=0.5 équivaut à un vote quadratique où v est la racine carré de j (v=√j)

**L'exposant de pouvoir *sharp* défini lors de la dernière assemblée
générale est consultable sur le site Web de l'association : https://foopgp.org/fr/about/rules-parameters/**


### Article 9 – Expression de la volonté des membres (confer article 10bis et article 11 des Statuts)

À chaque fin d’exercice, les membres actifs pourront exprimer leurs voix pour redéfinir, parmi des valeurs proposées par le conseil d’administration certains paramètres de l’exercice suivant :

* le montant de la cotisation « *fee* » (confer article 3 du présent règlement intérieur)
* le facteur d'inflation *stingynalty* (confer article 4 du présent règlement intérieur)
* le coefficient de croissance « *growth* » (confer article 5 du présent règlement intérieur)
* l’impôt associatif « *taxe* » (confer article 7 du présent règlement intérieur)
* l’exposant de pouvoir « *sharp* » (confer article 8 du présent règlement intérieur)
* la proportion de chaque enveloppe budgétaire (en euros ou en jetons, confer article 2 des [statuts](../status/))

Cette expression pourra utiliser la [méthode de Schulze](https://fr.wikipedia.org/wiki/M%C3%A9thode_de_Schulze).

*Explication :* la [méthode de Schulze](https://fr.wikipedia.org/wiki/M%C3%A9thode_de_Schulze) est une [méthode de Condorcet](https://fr.wikipedia.org/wiki/M%C3%A9thode_de_Condorcet). L'inspiration vient ici [de la communauté Debian](https://www.debian.org/vote/).

---

*Draft en cours de travail, pour soumission à l'assemblée générale ordinaire prévue le dimanche 24 mars 2024 à Pelleautier.*
