---
Title:   "Notre Livre Blanc - Partie 2"
Date:    2024-08-24T01:30:00+02:00
License: CC By-SA
Tags:    [ "specification", "governance", "signature", "authentication", "encryption", "identity", "pgpid" ]
categories: [ "About" ]
draft: false
author: [ "Jean-Jacques Brucker" ]
description : "par quels moyens nous atteindrons nos objectifs"
lang: fr
bg_image: "images/backgrounds/library.jpg"
bg_image: "images/blog/2024/europe-413102_960_720.jpg"
image: "images/blog/2024/earth4ever.jpeg"
type: "post"
---


*Suite de [la partie 1](../2024-08-15-whitepaper-part1/)*

## Comment nous atteindrons nos objectif...

### Premier objectif : démocratiser OpenPGP

De part la portée de ses spécifications, OpenPGP souffre à base d'une certaine complexité technique.

Cette complexité est cependant tout à fait résoluble, et serait probablement
déjà resolue si la technologie ne
souffrait pas des freins politico-économique [identifiés
précédemment](../2024-08-15-whitepaper-part1/#construire-des-espaces-de-vie-numérique-privée)

L'association doit donc se doter d'un modèle économique qui financera les
développements ou évolutions nécessaire à l'adoption en masse des solutions OpenPGP.

Déjà, nous avons développé des outils et processus permettant, pour une
utilisation en masse, de créer des identités numérique OpenPGP et de gérer
efficacement et au haut plus haut niveau de sécurité, les clés privées qui leurs
sont associées[^rappelasym] :

1. **pgpid-gen** génère, manuellement ou à partir d'un passeport aux normes ICAO
   9303 ou ISO/IEC 7501, une identité numérique OpenPGP. Puis découpe et imprime en plusieurs fragments, l'ensemble des clés privés associées.
2. **pgpid-qrscan** utilise ces fragments papier pour injecter les clés privés dans une clé de sécurité [^YK] [^NK]. La clé de sécurité peut dès lors faire office non seulement de pièce d'identité, mais permet aussi la signature numérique, l'authentification numérique, ou la création d'espaces numériques parfaitement chiffrés, c'est à dire vraiment privés.
3. Les fragments sont référencés et stockés dans des coffres dispersés et tenus
   par des entreprises de confiance ou des amis ou des notaires. Si nécessaire, ils pourront
être rassemblés et réutilisés par des outils comme **pgpid-qrscan** : recréation en cas d'incident (eg: blocage complet, destruction, perte non conséquente, etc), création de doubles, perte
non conséquente, décès du titulaire, etc.

[^rappelasym]: En Informatique, la sécurité repose très souvent sur la cryptographie asymétrique, laquelle nécessite une non divulgation parfaite du contenu de la partie privée d'une clé asymétrique (eg: RSA, ed25519, etc.), que l'on appelle aussi "clé privée".*

Le modèle économique de l'association permettra de faire évoluer et
maintenir ces outils et processus.

Il devra aussi permettre de :
 * Généraliser l'usage des serveurs de clés WKD/WKS, en lieu et place des
   serveurs centralisés ou fournissant des certificats incomplets (par exemple : [keys.openpgp.org](https://keys.openpgp.org/)).
 * Réaliser des outils permettant de mieux créer et gérer les toiles de confiances OpenPGP.
 * Utiliser des toiles de confiances OpenPGP pour lutter efficacement contre
   le SPAM - bien plus efficacement que l'ensemble des solutions actuelles.
 * Utiliser des toiles de confiances OpenPGP et des clés de sécurité[^YK] [^NK] pour s'authentifier numériquement plus sûrement et plus facilement - sans identifiant / mot de passe.
 * Créer des espaces numériques vraiment privés, accessibles et contrôlables
   uniquement au travers de clés de sécurité[^YK] [^NK].
 * Généraliser l'utilisation de signature électronique OpenPGP.
 * Réaliser les outils permettant d'utiliser les clés de sécurité [^YK] [^NK]
   comme moyen de paiement numérique.
 * Améliorer ses outils de prise de décision communautaire.

[^YK]: [YubiKey 5 Series](https://www.yubico.com/la-cle-yubikey/yubikey-5-series/?lang=fr)
[^NK]: [NitroKeys](https://www.nitrokey.com/fr/products/nitrokeys)

### Deuxième objectif : mettre en place, non seulement un modèle, mais un système économique innovant.

{{< plantuml id="eg" >}}
@startuml
left to right direction
actor "Member" as mb
rectangle foopgp {
  usecase "monetary donation" as UC1
  usecase "donations of goods" as UC2
  usecase "donations of services" as UC3

}
usecase "Member's wallet of power tokens" as W
mb --> UC1 : €
mb --> UC2 : €
mb --> UC3 : €
UC1 --> W : Ɉ
UC2 --> W : Ɉ
UC3 --> W : Ɉ
@enduml
{{< /plantuml >}}

Règlement intérieur, jetons de pouvoir.

### Troisième objectif : gouverner en commun

gouvernance, démocratie, décentralisation.

