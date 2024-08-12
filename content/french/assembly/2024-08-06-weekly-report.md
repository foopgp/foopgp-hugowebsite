---
title: "2024 S32 Rapport Hebdomadaire"
lang: fr
date: 2024-08-06T15:27:17+06:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "CR visio du Mardi soir"
image: "images/logos/logo-black-pgp.png"
###categories: [""]
###tags: [""]
type: "meeting"
---

*Présents : Laurent Céard, Jean-Jacques Brucker, François Revol, Frédéric Renault.*


### Ordre du jour

* Discussion mise à jour de nos statuts : https://codeberg.org/foopgp/foopgp-hugowebsite/commit/0e95e1612377642f201bf921b669493b08244c15 (non présence des + compétents, ajourné)

* Retour sur le salon de Liège (non présence des concernés, ajourné)

* Quelle participation au forum du numérique du 04 ?



### Chiffres de l'association (à la date du 16 avril 2024)

#### Pour l'exercice n°2 (à partir du 24 mars 2024)

* Membres total : 25
    * Dont actifs : 2 (appel à cotisation à venir pour l’exercice en cours)
* Nombre total de jetons : 133,866626301567 Ɉ
* Chiffre d’affaire estimé en € : 3.00 €
    * Dont cotisations : 2 €
        * Dont dons (déclenchant la création de jetons) : 1.00 € (+0.00)
            dont monnaie : 0.00 €
            dont prestation : 0.00 €
            dont frais : 0.00 €
* Recettes constatées en € : 1.72 € (+0.00)
* Dépenses constatées en € : 3735.57 € (+0.00)

### Revue de presse

* [La Suisse vient de faire un grand pas en avant avec une loi révolutionnaire qui impose l'utilisation de logiciels libres dans le secteur public du pays](https://www.zdnet.fr/actualites/la-suisse-exige-desormais-des-logiciels-open-source-395030.htm)
* [polémique sur Ventoy : des binaires douteux sont présents dans cet outil répandu d'installation de systèmes d'exploitation.](https://theres.life/@arraybolt3/112910860206028596 ). Alternative à regarder : https://yumiusb.com/
* https://www.techradar.com/computing/i-watched-nvidias-computex-2024-keynote-and-it-made-my-blood-run-cold
* https://www.lemonde.fr/economie/article/2024/08/05/les-bourses-redoutent-une-recession-et-plongent_6268577_3234.html


### Activité récente

#### Au coeur de la réunion

* Ventoy : Si ventoy démontre des risques de sécurité, nous pouvons être concernés vu que nous avons utilisé cet outil pour installer la plupart des postes debian de l'association.
* Trésorerie avec Frédéric Renault.

#### Autre actions en cours

**NOTE: Pour enregistrer et suivre la résolutions des bugs sur les logiciels produits par l'association. Nous pouvons (et devrions !) utiliser l'outillage intégré à codeberg, eg : https://codeberg.org/foopgp/pgpid/issues***

* Ismaël est revenu de vacances, et faute d'informations à temps, notre existence légale n'est en effet toujours pas à jour.
* Numérisation de l'inscription pour appel à cotisation.
* Laurent a testé et réussi à faire fonctionner sous Linux les Nitrokey avec le gestionnaire de mots de passe [KeePassXC](https://keepassxc.org/) qui peut lui-même être connecté avec tous les navigateurs y compris Firefox. __Il semblerait que si le paramétrage fonctionne bien, ensuite le déverrouillage crashe. À retester avec un ordinateur plus puissant que le petit netbook qu'il a utilisé__. Sous Windows, cela fonctionne nativement
* Laurent a également réussi à faire fonctionner les Nitrokey avec Thunderbird (rappel : multiplateforme contrairement à Evolution et plus esthétique) via [Kleopatra](https://apps.kde.org/fr/kleopatra/) qui, sous Windows, est intégré dans la suite [gpg4win](https://www.gpg4win.org/download.html)

###### AMF

L'AMF a répondu à la question : *quelles sont les obligations réglementaires auxquelles nous pourrons être assujetis si nous commençons à utiliser nos jetons de pouvoir comme monnaie d'échange ?* :
* *Nous vous invitons à contacter un conseiller juridique qui pourra vous éclairer sur la règlementation applicable à votre projet, l’AMF ne pouvant jouer ce rôle.*
* *Vous trouverez par ailleurs des informations concernant la règlementation applicable aux Prestataires de services sur actifs numériques sur [la page suivante](https://www.amf-france.org/fr/espace-professionnels/fintech/mes-relations-avec-lamf/obtenir-un-enregistrement-un-agrement-psan).*

Notre conseiller juridique nous a renvoyé sur les pages 28-29 de [la publication du Journal Officiel de l'UE L150/40](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) du [9 juin 2023](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=OJ:L:2023:150:TOC). Tout en résumant certaines des nombreuses "exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme" de l'article 4, titre II.

Il a rappelé l'inexistence d'un livre blanc (whitepaper), formalisme qui me (Jean-Jacques) semble particulièrement inutile (tant que l'on reste dans les exemptions), ainsi que l'inexistence de diagramme de flux financier, diagramme qui, par contre serait sans doute pertinent et utile pour illustrer et mieux comprendre/expliquer le business model.


#### Actions terminées

* Lettre ouverte est republiée sur notre blog : https://foopgp.org/fr/blog/2024-08-02-the-european-union-must-keep-funding-free-software/

### Actions à mener (TODO list)

* Appel à cotisation pour le nouvel exercice (dépend de l'avancement  https://foopgp.org/fr/about/donate/ )
* Packager pgpgid pour debian (et ses derivés).
* Étudier les outils et infrastructures utilisé par les notaires, notamment Genapi/Septeo, pour connaîtres leur attentes et (in)satisfactions.
* Répondre à l'appel d'offre [24-80338](https://www.boamp.fr/pages/avis/?q=idweb:%2224-80338%22) (Date limite de réponse le 19/09/2024 à 16h00). Problèmes : Aucune personne présente n'a l'expérience d'un tel exercice. Quid de la TVA ? à laquelle nous ne sommes pas (encore ?) soumis.

### Agenda

* 19 septembre 2024 : date limite pour l'appel d'offre [24-80338](https://www.boamp.fr/pages/avis/?q=idweb:%2224-80338%22).
* 25 & 26 septembre 2024 : [European Blockchain Convention à Barcelone](https://eblockchainconvention.com/european-blockchain-convention-10/).
* jeudi 17 octobre 2024 : [Forum du numérique 04](https://docs.google.com/forms/d/e/1FAIpQLSeq2l_YUBXxO0PptCnWu02JYam4vLGG_lZ_J5GusTJ4rQVJ-Q/viewform)
* 23 novembre 2024 : https://www.campus-du-libre.org/cfp.php
* [... agenda du libre](https://www.agendadulibre.org)


---

