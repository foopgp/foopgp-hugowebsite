---
title: "(en travaux) Réglement intérieur foopgp"
lang: fr
date: 2025-06-18T15:27:17+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Réglement intérieur de l'association foopgp"
image: "images/logos/logo-black-pgp.png"
categories: ["about"]
###tags: [""]
type: "post"
---

## (en travaux) Règlement intérieur foopgp

---

Ce règlement intérieur a pour objectif de préciser [les statuts](../status/) de l'association foopgp, dont l'objet est de rassembler toutes les personnes physiques ou morales qui utilisent ou développent des solutions technologiques basées sur les normes OpenPGP.

Le règlement intérieur en vigueur devrait être remis à chaque nouvel adhérent,
et il doit être consultable sur le site Web de l'association : https://foopgp.org/fr/about/rules-of-procedures/ .


### Article 1er – Composition

L'association foopgp est composée d'adhérents : personnes physiques, et de partenaires : personnes morales.


### Article 2 - Modification du règlement intérieur

Le règlement intérieur de l’association foopgp est établi par le conseil d’administration conformément à l'article 15 des [statuts](../status/).

Il peut être modifié par le conseil d’administration sur proposition d'un de ses membres.

Toute modification doit se faire approuver par l'assemblée générale.

### Article 3 – Cotisation

À tout moment, les adhérents peuvent s'acquitter de cotisations libres.

Plus la somme des cotisations est importante, plus l'adhérent disposera de pouvoirs (confer article 4 du règlement intérieur).

Toute cotisation versée à l'association est définitivement acquise. Aucun remboursement de cotisation ne peut être exigé en cas de démission, d'exclusion ou de décès d'un adhérent en cours d’année.

Le versement de la cotisation doit être effectué de préférence par virement[^IBAN] ou par chèque à l'ordre de l'association foopgp.

[^IBAN]: IBAN : FR76 1027 8079 9800 0208 2780 107

### Article 4 - Modalités relatives aux jetons de pouvoir (confer article 10bis des Statuts)

Toutes les cotisations à l'association versées à titre individuel (personne physique) donnent droit à des jetons de pouvoir,
suivant la formule :

**jₙ = log₂( (cₙ+cₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Avec :
* log₂() : la fonction logarithme binaire. C'est à dire de base 2 :
  log₂(x) = ln(x) / ln(2)
* jₙ : la quantité de jetons supplémentaires
* cₙ : le montant de la nième cotisation mesurée en Euros (€).
* cₜ : le montant total des cotisations précédentes (cₜ = cₙ₋₁ + cₙ₋₂ + ... + c₀ )
* *stingynaltyₙ* : le facteur d'inflation à la période de la nième cotisation
* jₜ : la quantité totale de jetons issue des cotisations précédentes (jₜ = jₙ₋₁ + jₙ₋₂ + ... + j₀)

Où *stingynalty* croît automatiquement le premier jour de chaque mois, à 0h00. Si ce taux de croissance est de 5 pour mille (5 ‰) :

**stingynaltyₙ = stingynaltyₙ₋₁ + 0.005 × stingynaltyₙ₋₁**

*Explication :* en choisissant un facteur d'inflation supérieur à ceux calculés en zone euro (eg: eurostat)
nous pouvons créer un léger « [Fear Of Missing Opportunity](https://fr.wikipedia.org/wiki/Syndrome_FOMO) ».

En cas d'inflation significative de la zone euro, un ajustement du paramètre *stingynalty* pourra être determiné par le conseil d'administration puis adopté en assemblée générale.

*Note :* jₙ ne peut être négatif. Si la nième cotisation ne comble pas la croissance du facteur d'inflation *stingynalty*, alors la cotisation est compté mais aucun jeton n'est crée : jₙ est nul.

Remarque : au moment la première cotisation, la formule se simplifie :

**j = log₂(c+1) / *stingynalty***

Avec :
* j : la quantité de jetons
* c : le montant de la cotisation, mesurée en euro (€)
* *stingynalty* : le facteur d'inflation

**Des tableaux de correspondance entre cotisations et jetons, en fonction des facteurs d'inflations *stingynalty* actuels et à venir,
sont consultables sur le site Web de l'association : https://foopgp.org/fr/about/rules-parameters/**

### Article 4bis - Certification et validation

Pour pouvoir utiliser ou échanger tout jeton de pouvoir, chaque adhérent devra être validé par l'association.

Cette validation est automatique dès lors que les deux critères suivant sont remplis :
- Être à jour de ses contributions obligatoires (confer article 7 du présent document et article 10bis des Statuts).
- Être certifié par l'association.

Cette certification passe par un identifiant unique, calculé à partir de données d'État-Civil conformes à la norme ISO/IEC 7501-1:2008[^ISO7501-1].

Cette certification pourra s'appuyer sur des toiles de confiance OpenPGP[^PGPWOT] ; lesquelles peuvent être renforcées lors de "Key Signing Parties"[^KSP].

[^ISO7501-1]: [ISO/IEC 7501-1:2008 Identification cards -- Machine readable travel documents -- Part 1: Machine readable passport](https://www.iso.org/standard/45562.html)

[^PGPWOT]: <https://fr.wikipedia.org/wiki/Toile_de_confiance>

[^KSP]: <https://en.wikipedia.org/wiki/Key_signing_party>

### Article 5 – Émission universelle de nouveaux jetons (confer article 10bis des Statuts)

Mensuellement, de nouveaux jetons sont émis à quantité égale pour chaque personne physique adhérente validée de l’association. **Ce mécanisme permet d’appliquer la [théorie relative de la monnaie de Stéphane Laborde](https://trm.creationmonetaire.info/).**

Ainsi, pour chacune de ces périodes mensuelles, chaque adhérent validé de l’association, c’est-à-dire certifié et à jour de ses cotisation et de ses contributions obligatoires (cf. articles 3 et 7) pourra émettre, avant la fin de la dite période, une quantité de nouveaux jetons égales à :

**jₛ= *growth* × Mₜ ∕ N**

Avec :
* jₛ : la quantité de jetons supplémentaires issue de cette émission
* *growth* : un taux de croissance de la masse totale de l’ensemble des jetons
* Mₜ : la masse totale de l’ensemble des jetons (avant cette émission universelle)
* N : Le nombre d'adhérents sur la période

**Le taux de croissance *growth* adopté lors de la dernière assemblée générale sont consultables sur le site Web de l'association : https://foopgp.org/fr/about/rules-parameters/**

### Article 6 – Portefeuilles

Tout jeton doit être associé à un et un seul portefeuille.

Toute personne physique adhérente de l’association doit posséder au moins un portefeuille individuel.

Toute personne physique peut posséder des portefeuilles secondaires, éventuellement partageables, en proportion égale, avec d’autres personnes physiques.

Ces portefeuilles sont notés « W ».

### Article 7 – Contributions obligatoires (confer article 10bis des Statuts)

Des contributions obligatoires en jetons pourront être déterminé par le conseil d'administration puis adopté en assemblée générale.

Ces contributions correspondront à un pourcentage de la valeur de chaque portefeuille à la fin de la periode précédente. Elles sont révisables en assemblée générale.

La somme de ces contributions est appelée impôt associatif et son taux est noté « *taxe* ».

Aussi, elles pourront être réglées en une seule fois, au bénéfice de l'association.

Tant que ces contributions ne seront pas réglés, les adhérents associés à ces portefeuilles sont considérés comme suspendus.

**Le taux total de contributions *taxe* et sa periodicité *taxep* définis lors de la dernière assemblée générale sont consultables sur le site Web de l'association : https://foopgp.org/fr/about/rules-parameters/**

### Article 8 – Lissage polynomial des quantitées de pouvoir (confer article 10bis des Statuts)

Durant chaque exercice, les adhérents pourront exprimer leur voix pour valider, ou non, certaines résolutions prises par le conseil d’administration.

Le nombre de voix de chaque adhérent validé dépend de la quantité de jetons de pouvoir en leur possession, suivant la formule :

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

### Article 9 – Expression de la volonté des adhérents (confer article 10bis et article 11 des Statuts)

À chaque assemblée générale, les adhérents pourront exprimer leurs voix pour redéfinir, parmi des valeurs proposées par le conseil d’administration certains paramètres du présent réglement intérieur :

* le facteur d'inflation *stingynalty* (confer article 4 du présent règlement intérieur)
* le taux de croissance « *growth* » ainsi que sa périodicité « *growthp* » (confer article 5 du présent règlement intérieur)
* les taux de contributions obligatoires et donc le taux d'impôt associatif « *taxe* » ainsi que sa périodicité « *taxep* » (confer article 7 du présent règlement intérieur)
* l’exposant de pouvoir « *sharp* » (confer article 8 du présent règlement intérieur)

Cette expression pourra utiliser la [méthode de Schulze](https://fr.wikipedia.org/wiki/M%C3%A9thode_de_Schulze).

*Explication :* la [méthode de Schulze](https://fr.wikipedia.org/wiki/M%C3%A9thode_de_Schulze) est une [méthode de Condorcet](https://fr.wikipedia.org/wiki/M%C3%A9thode_de_Condorcet). L'inspiration vient ici [de la communauté Debian](https://www.debian.org/vote/).

---

*Brouillon en cours, pour soumission éventuelle à la prochaine assemblée générale.*

*Remplacera donc éventuellement [le Réglement intérieur en vigueur](rules-of-procedures/).*
