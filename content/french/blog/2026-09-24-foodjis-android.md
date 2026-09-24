---
Title:   "foodjis passe en prod sur Android !"
Date:    2026-09-24T18:00:00+02:00
Tags:    [ "foodjis", "android", "pgp-id", "openpgp", "nfc", "identité", "yubikey", "nitrokey" ]
categories: [ "News" ]
draft: true
author: [ "Mnêmê", "Jean-Jacques Brucker" ]
description: "L'assistant qui donne naissance à votre identité numérique, l'écrit sur votre clé de sécurité et la fait circuler, tient désormais dans un téléphone. Première version de production, à télécharger."
lang: fr
bg_image: "images/backgrounds/party-event.jpg"
image: "images/blog/2026/foodjis-banner.png"
type: "post"
---

***Note :*** *Pour ce qu'est une identité **PGP ID** et à quoi elle sert, [voir la page qui lui est consacrée](/fr/solutions/pgp-id/). Pour rester informé, [inscrivez-vous à nos listes de diffusion](/fr/contact/).*

**[foodjis](/fr/solutions/pgp-id/) ne demande plus d'ordinateur.** L'assistant
qui donne naissance à une identité numérique, l'écrit dans une clé de sécurité
et la fait circuler existe désormais sur Android, avec les mêmes parcours et le
même vocabulaire que sur Djibian. Un téléphone, une clé **YubiKey** ou
**NitroKey** posée au dos, et c'est tout.

Il y a une raison de fond à ce portage, et elle n'est pas le confort : une
identité qui exige un ordinateur de bureau est une identité réservée à ceux qui
en ont un. Dans la plupart des pays du monde, le téléphone *est* l'ordinateur.

## Quatre parcours, les mêmes qu'au bureau

{{< figure
  src="/images/blog/2026/foodjis-1-identite-fr.png"
  link="/images/blog/2026/foodjis-1-identite-fr.png"
  alt="foodjis sur Android — Générer une identité : la carte, le lieu et l'instant d'origine"
  class="float-right ml-4 w-25"
>}}

**Générer une identité.** Votre identifiant d'entité — l'**EID** — se calcule à
partir d'un état civil de naissance : un lieu, un instant. Pas d'une clé, pas
d'un compte, pas d'un numéro attribué par quelqu'un. La carte sert à poser le
point, et le bouton *Ici* à prendre celui où vous êtes ; l'instant se saisit
dans votre heure locale. Une personne relève de la variante `u4`, une autre
entité — association, entreprise, logiciel — de la variante `u5`.

Les secrets de l'identité s'impriment ensuite en fragments QR sur des feuilles
de papier, dont une partie seulement suffira à la reconstituer. C'est votre
sauvegarde, et elle ne dépend d'aucun service.

{{< figure
  src="/images/blog/2026/foodjis-2-cle-fr.png"
  link="/images/blog/2026/foodjis-2-cle-fr.png"
  alt="foodjis sur Android — Configurer une clé : présentez votre clé de sécurité au dos du téléphone"
  class="float-left mr-4 w-25"
>}}

**Configurer une clé.** Le téléphone lit les fragments imprimés avec son
appareil photo, puis écrit l'identité dans la clé de sécurité posée à son dos.
Les secrets passent par les ondes de la clé, jamais par un réseau. À la fin,
l'application affiche le code PIN et le code Admin de la clé, une fois, sur le
seul écran de tout le parcours que le système interdit de photographier.

La clé garde les secrets ; le téléphone, lui, n'en garde aucun. C'est la
propriété qui rend l'objet intéressant : perdre le téléphone ne coûte rien,
perdre la clé coûte ce que coûte une clé — et les feuilles de papier sont là
pour ça.

{{< figure
  src="/images/blog/2026/foodjis-3-token-fr.png"
  link="/images/blog/2026/foodjis-3-token-fr.png"
  alt="foodjis sur Android — la fiche de la clé connectée : nom d'usage, EID, empreinte, validité"
  class="float-right ml-4 w-25"
>}}

**Tenir sa propre fiche.** Présentez la clé et l'application lit ce qu'elle
porte : nom d'usage, portrait, **EID**, empreinte du certificat, dates de
validité, certifications reçues, adresses et autres coordonnées. Tout se
modifie depuis là — ajouter une adresse, en retirer une, choisir celle que les
logiciels de courriel mettront en avant, déplacer la date de fin de validité.
Chaque modification est signée par la clé, donc par vous, puis publiée sur les
serveurs de certificats : un certificat est une chose publique, et un
changement qui resterait dans un seul téléphone serait un changement dont
personne ne peut tenir compte.

{{< figure
  src="/images/blog/2026/foodjis-4-certifier-fr.png"
  link="/images/blog/2026/foodjis-4-certifier-fr.png"
  alt="foodjis sur Android — Certifier : ce que la certification engage, à lire avant"
  class="float-left mr-4 w-25"
>}}

**Certifier les autres.** C'est le geste qui fait tenir une toile de confiance :
confirmer qu'un certificat appartient bien à l'entité qu'il désigne. Il n'y a
pas de bureau central pour le faire à votre place, et c'est voulu — ce sont les
parties qui signent, les tiers qui vérifient. L'application le dit avant de le
proposer : cela engage votre propre crédibilité, et davantage encore pour une
entité qui n'est pas une personne, dont vous prenez sur vous les
responsabilités qu'elle ne peut pas avoir.

{{< figure
  src="/images/blog/2026/foodjis-5-contacts-fr.png"
  link="/images/blog/2026/foodjis-5-contacts-fr.png"
  alt="foodjis sur Android — Contacts : rechercher un certificat par courriel, certificat ou EID"
  class="float-right ml-4 w-25"
>}}

**Garder ses contacts.** Un trousseau local, alimenté par les serveurs de
certificats, par un QR code présenté en face à face, ou par un fichier reçu.
Chaque fiche se partage de cinq façons — QR code, [vCard](/fr/blog/2026-07-18-vcard-openpgp/)
ou certificat, envoyés à une autre application ou importés dans le carnet
d'adresses du téléphone. La réglette du bas est la crédibilité que *vous*
accordez à cette identité ; elle demeure sur votre téléphone tant que vous ne
la partagez pas.

{{< figure
  src="/images/blog/2026/foodjis-6-fiche-fr.png"
  link="/images/blog/2026/foodjis-6-fiche-fr.png"
  alt="foodjis sur Android — la fiche d'un contact, sa note et la réglette de crédibilité"
  class="float-left mr-4 w-25"
>}}

## Ce que la clé sait faire, une fois écrite

L'identité posée sur la clé ne sert pas qu'à être montrée dans foodjis. Deux
choses fonctionnent aujourd'hui, depuis le téléphone :

- **Le courriel signé et chiffré.** foodjis se présente aux applications de
  messagerie comme fournisseur OpenPGP du système : Thunderbird pour Android
  lit les messages signés, en signe, en ouvre et en ferme, la clé posée au dos
  du téléphone au moment de la signature. Aucune autre application n'a besoin
  de connaître vos secrets, et aucune ne les voit.
- **La connexion à distance.** La clé d'authentification de votre identité
  ouvre une session sur les serveurs qui l'acceptent, sans qu'aucune clé privée
  n'existe dans le téléphone — un geste par connexion, et rien à recopier d'une
  machine à l'autre.

## Télécharger

Cette version s'installe à côté d'une éventuelle future version du magasin
d'applications, sans la remplacer : elle porte notre clé de développement, elle
s'appelle donc **foodjis-dev** et c'est un nom à elle.

- **[foodjis-dev_1.0.3.apk](https://iso.foopgp.org/foodjis-dev_1.0.3.apk)** —
  Android 7 ou plus récent, neuf langues, 8,4 Mo.
- L'[empreinte](https://iso.foopgp.org/foodjis-dev_1.0.3.apk.sha256) du fichier :
  `03a6c328d6d56ad115fa7aec05037cdbe619dd5c9dbf06205bbcc8cb3c5d0ec7`.
- Et sa [signature détachée](https://iso.foopgp.org/foodjis-dev_1.0.3.apk.asc),
  faite par une identité PGP ID, que votre outil OpenPGP habituel vérifiera
  contre le certificat publié pour `mneme@foopgp.org`. C'est exactement l'usage
  dont parle cet article : vous n'avez pas à nous croire, vous pouvez vérifier.

Une clé de sécurité neuve veut trois secondes d'alimentation sur n'importe quel
port USB avant de répondre par les ondes — un chargeur suffit. C'est le seul
moment de tout le parcours où un autre appareil est nécessaire, et il ne
demande aucun logiciel.

## Ce qui vient

Le dépôt du magasin est en cours de validation. La version qui y sera
distribuée portera une autre signature que celle-ci : elle ne s'installera donc
pas par-dessus, et il faudra désinstaller celle-ci — c'est la règle d'Android,
et nous la dirons clairement le jour où cela arrivera.

Le reste est écrit dans nos rapports d'assemblée, semaine après semaine :
l'identité sur la carte est le premier étage, la [signature](/fr/solutions/signature/),
le [courriel](/fr/solutions/theme-email/) et les comptes en Ɉ sont les suivants.
