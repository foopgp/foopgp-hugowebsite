---
title: "Identité"
#date: 2019-07-06T15:27:17+06:00
draft: false
# page title background image
bg_image: "images/backgrounds/puzzle.jpg"
# meta description
description : "Solutions pour la gestion d'identités numériques."
# Research image
image: "images/solutions/identity.png"
categories: ["solution"]
type: "post"
---

### Identité numérique

L'identité numérique est un ensemble de données permettant d'identifier une personne ou une entité sur Internet et dans les systèmes informatiques. Elle est composée de divers éléments qui peuvent inclure des informations personnelles, des attributs de vérification et des certificats de sécurité.

OpenPGP est un format ouvert qui a été pensé pour créer et gérer des identités numériques.
De plus, son évolutivité lui permet d'utiliser, depuis toujours, les meilleurs algorithmes cryptographiques du moment.
Il offre ainsi un niveau de sécurité inégalé.

### A quoi peut servir une identité numérique ?

* **S'identifier sur des sites de commerces en ligne.**

* **S'identifier sur des réseaux sociaux.**

* **S'identifier auprès de services tels :**
  * assurance santé
  * assurance chomâge
  * assurances privées
  * services municipaux
  * ...

* **Éviter les usurpations d'identité.**

* **Enregistrer des qualifications, par exemple :**
  * permis de conduire
  * diplômes
  * ...
* **[Lutter contre les informations
  trompeuses](/fr/blog/2023-04-03-lutter-contre-la-polution-informationelle/).**

* **[Lutter contre les abus d'intelligence
  artificielle](/fr/blog/2023-04-03-lutter-contre-la-polution-informationelle/).**

### pgpid

Afin de gérer aux mieux ces identités, et les clés privés associées,
l'association foopgp a développé [pgpid](https://codeberg.org/foopgp/pgpid). Cet outil permet de :

* Créer une identité numérique OpenPGP unique
  * en partant de zéro
  * ou bien d'un passport international (aux normes [ICAO](https://fr.wikipedia.org/wiki/Organisation_de_l%27aviation_civile_internationale))
* Générer les clés privées des certificats OpenPGP associés.
* Chiffrer et répartir ces clés privés sur au moins 3 documents (QR codes)
  imprimés.
* Sauvegarder de manière ultra-sécurisée ces clés privés : [secrets répartis](https://fr.wikipedia.org/wiki/Secret_r%C3%A9parti) et en dehors de tout réseau informatique.
* Déchiffrer ces sauvegardes pour pousser les clés (numériques) privées dans des clés (physiques) de sécurité comme la [YubiKey](https://www.yubico.com/?lang=fr) ou la [Nitrokey](https://www.nitrokey.com/products/nitrokeys).

Voici un exemple de sauvegarde papier d'une identité numérique pgpid :

| ![qrcode1](/images/blog/2024/qrcode/qrcode1.jpg) | ![qrcode2](/images/blog/2024/qrcode/qrcode2.jpg) | ![qrcode3](/images/blog/2024/qrcode/qrcode3.jpg) |
|---|---|---|


### Bref,

L'identité numérique permet de sécuriser les transactions en ligne, d'accéder à divers services numériques et de vérifier l'identité des utilisateurs de manière fiable. Elle joue un rôle crucial dans la cybersécurité et la protection des données personnelles.

**Quand d'autres vous vendent des technologies qui vous asservissent, foopgp
permet à tous de nous approprier des technologies qui nous servent.** Des technologies plus sûres et entièrement souveraines.


---
