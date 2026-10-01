---
Title:   "foodjis passe en prod sur Android !"
Date:    2026-09-24T18:00:00+02:00
Tags:    [ "foodjis", "android", "pgp-id", "openpgp", "nfc", "identité", "yubikey", "nitrokey" ]
categories: [ "News" ]
draft: false
author: [ "Mnêmê", "Jean-Jacques Brucker" ]
description: "L'assistant qui donne naissance à votre identité numérique, l'écrit sur votre clé de sécurité et la fait circuler, tient désormais dans un téléphone. Première version de production, à télécharger."
lang: fr
bg_image: "images/backgrounds/party-event.jpg"
image: "images/logos/foodjis_logo_banner.png"
type: "post"
---

***Note :*** *Pour ce qu'est une identité **PGP ID** et à quoi elle sert, [voir la page qui lui est consacrée](/fr/solutions/pgp-id/). Pour rester informé, [inscrivez-vous à nos listes de diffusion](/fr/contact/).*

***Mise à jour du 1er octobre 2026 :*** *la version 1.3.2 est disponible, et parle grec et turc ; ses nouveautés feront l'objet d'un prochain article. [Ce qui a changé depuis la première](#depuis).*

**[foodjis](/fr/solutions/pgp-id/) ne demande plus d'ordinateur.** L'assistant
qui donne naissance à une identité numérique, l'écrit dans une clé de sécurité
et la fait circuler existe désormais sur Android, avec les mêmes parcours et le
même vocabulaire que sur Djibian. Un téléphone, une clé **YubiKey** ou
**NitroKey** posée au dos, et c'est tout.

Il y a une raison de fond à ce portage, et elle n'est pas le confort : une
identité qui exige un ordinateur de bureau est une identité réservée à ceux qui
en ont un. Dans la plupart des pays du monde, le téléphone *est* l'ordinateur.

## Quatre parcours, les mêmes qu'au bureau

**Générer une identité.** Votre identifiant d'entité — l'**EID** — se calcule à
partir d'un état civil de naissance : un lieu, un instant. Pas d'une clé, pas
d'un compte, pas d'un numéro attribué par quelqu'un. La carte sert à poser le
point, et le bouton *Ici* à prendre celui où vous êtes ; l'instant se saisit
dans votre heure locale. Une personne relève de la variante `u4`, une autre
entité — association, entreprise, logiciel — de la variante `u5`.

Les secrets de l'identité s'impriment ensuite en fragments QR sur des feuilles
de papier, dont une partie seulement suffira à la reconstituer. C'est votre
sauvegarde, et elle ne dépend d'aucun service.

**Configurer une clé.** Le téléphone lit les fragments imprimés avec son
appareil photo, puis écrit l'identité dans la clé de sécurité posée à son dos.
Les secrets passent par les ondes de la clé, jamais par un réseau. À la fin,
l'application affiche le code PIN et le code Admin de la clé, une fois, sur le
seul écran de tout le parcours que le système interdit de photographier.

La clé garde les secrets ; le téléphone, lui, n'en garde aucun. C'est la
propriété qui rend l'objet intéressant : perdre le téléphone ne coûte rien,
perdre la clé coûte ce que coûte une clé — et les feuilles de papier sont là
pour ça.

{{< shots cols="4"
  src1="/images/blog/2026/foodjis-1-identite-fr.png" alt1="Générer une identité : la carte, le lieu et l'instant d'origine" cap1="Le lieu et l'instant d'origine de l'entité, dont se calcule l'EID."
  src2="/images/blog/2026/foodjis-2-cle-fr.png" alt2="Configurer une clé : présentez votre clé de sécurité au dos du téléphone" cap2="Une clé de sécurité se présente au dos du téléphone."
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

**Certifier les autres.** C'est le geste qui fait tenir une toile de confiance :
confirmer qu'un certificat appartient bien à l'entité qu'il désigne. Il n'y a
pas de bureau central pour le faire à votre place, et c'est voulu — ce sont les
parties qui signent, les tiers qui vérifient. L'application le dit avant de le
proposer : cela engage votre propre crédibilité, et davantage encore pour une
entité qui n'est pas une personne, dont vous prenez sur vous les
responsabilités qu'elle ne peut pas avoir.

{{< shots cols="4"
  src1="/images/blog/2026/foodjis-3-token-fr.png" alt1="La fiche de la clé connectée : nom d'usage, EID, empreinte, validité" cap1="La fiche de la clé connectée, lue depuis la clé elle-même."
  src2="/images/blog/2026/foodjis-4-certifier-fr.png" alt2="Certifier : ce que la certification engage, à lire avant" cap2="Ce que certifier engage, dit avant de le proposer."
>}}

**Garder ses contacts.** Un trousseau local, alimenté par les serveurs de
certificats, par un QR code présenté en face à face, ou par un fichier reçu.
Chaque fiche se partage de cinq façons — QR code, [vCard](/fr/blog/2026-07-18-vcard-openpgp/)
ou certificat, envoyés à une autre application ou importés dans le carnet
d'adresses du téléphone. La réglette du bas est la crédibilité que *vous*
accordez à cette identité ; elle demeure sur votre téléphone tant que vous ne
la partagez pas.

{{< shots cols="4"
  src1="/images/blog/2026/foodjis-5-contacts-fr.png" alt1="Contacts : rechercher un certificat par courriel, certificat ou EID" cap1="Le trousseau, et la recherche par courriel, certificat ou EID."
  src2="/images/blog/2026/foodjis-6-fiche-fr.png" alt2="La fiche d'un contact, sa note et la réglette de crédibilité" cap2="La fiche d'un contact, sa note et la réglette de crédibilité."
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

## À la place d'OpenKeychain

Si vos clés OpenPGP vivent déjà sur une clé de sécurité NFC — une **YubiKey 5
NFC**, une **Nitrokey 3A NFC** —, foodjis fait le travail pour lequel vous
ouvriez OpenKeychain : c'est lui que le système propose désormais aux
applications de messagerie, et il n'a besoin d'aucun secret sur le téléphone.
Il fait en plus ce qu'aucun trousseau ne fait : donner naissance à l'identité,
l'écrire dans la clé, certifier les autres, publier les changements.

Et si vous n'avez pas encore de clé : l'association **ne les vend pas**, elle
les **fournit** à ses adhérents dès que leurs cotisations cumulées ont atteint
[le palier](/fr/solutions/offer-security-keys/) — YubiKey 5 NFC ou Nitrokey 3A
NFC, au choix et selon arrivage.

## Depuis la première version {#depuis}

**Chiffrer et déchiffrer.** Une page du menu chiffre un texte pour vos
contacts — eux seuls pourront le lire —, signé par votre clé si vous le voulez.
Elle ouvre un message chiffré pour vous, collé ou reçu dans un fichier, avec
votre clé ou avec son mot de passe, et vérifie un message seulement signé. Un
tel fichier, ouvert depuis n'importe quelle application, y mène directement.

**Vos crédibilités voyagent.** Vous pouvez désormais exporter l'ensemble des
crédibilités accordées dans un fichier signé par votre clé, et reprendre celles
d'une personne à qui vous accordez une entière crédibilité — *prudemment*, pour
les seules identités que vous n'avez pas encore jugées, *dévotement*, en
acceptant toutes ses notes, ou
*radicalement* : les crédibilités peuvent monter ou passer à « aucune », mais
toute « aucune » y demeure. C'est le même fichier que sur Djibian.

**Persistance.** Activée par défaut, elle permet à l'application de rester en
arrière-plan. Le code PIN est gardé pendant tout le délai choisi, jusqu'à douze
heures. Vos certificats sont rafraîchis automatiquement, par lots où ceux dont
vous avez besoin se mêlent à d'autres, à des heures sans rapport avec votre
usage : vous apprenez ainsi à temps qu'une clé a été révoquée, sans dire aux
serveurs quand vous vous servez de l'application. Le prix en est un peu de
réseau et de batterie ; si la persistance est désactivée, rien ne tourne quand
l'application est fermée.

**Plus rapide.** Avec des centaines de contacts, tout s'ouvre sans attendre :
la toile de confiance est calculée en arrière-plan, et gardée d'un
lancement à l'autre.

Et encore : une étape 🌎 sur l'accueil pour parcourir les contacts et votre
toile de confiance ; « sortir par le haut » amène partout à l'écran précédent ;
et si Android est configuré pour vibrer lors des appuis, une vibration indique
quand la clé peut quitter le dos du téléphone.

## Télécharger

C'est la version du magasin Google Play, signée par la même clé : installée
d'ici ou de là, l'une met l'autre à jour, et les téléphones qui refusent les
applications d'une clé de développement l'acceptent.

- **[foodjis_1.3.2.apk](/largefiles/foodjis/foodjis_1.3.2.apk)** —
  Android 7 ou plus récent, onze langues, 7,6 Mo.
- L'[empreinte](/largefiles/foodjis/foodjis_1.3.2.apk.sha256) du fichier :
  `46063c9e470a8fc329938b579dffe752e67ae9238a81ab3ba0d2bfdff694c0aa`.
- Et sa [signature détachée](/largefiles/foodjis/foodjis_1.3.2.apk.asc),
  faite par une identité PGP ID, que votre outil OpenPGP habituel vérifiera
  contre le certificat publié pour `u4sRyUhEbNU5OwyLEjfSwaXAe_42.17-002.76`. C'est exactement l'usage
  dont parle cet article : vous n'avez pas à nous croire, vous pouvez vérifier.

Une clé de sécurité neuve veut trois secondes d'alimentation sur n'importe quel
port USB avant de répondre par les ondes — un chargeur suffit. C'est le seul
moment de tout le parcours où un autre appareil est nécessaire, et il ne
demande aucun logiciel.

## Ce qui vient

Le dépôt du magasin est en cours de validation. La version qui y sera
distribuée est une **autre application** que celle-ci : elle porte son propre
nom, comme elle porte sa propre signature, et s'installera donc **à côté** —
rien à désinstaller, et chacune garde son trousseau. La réserve sur les
signatures ne vaut qu'entre deux constructions d'une même application.

Le projet avance bien, semaine après semaine :

- Premier étage : l'identité sur papier, puis sur clé de sécurité ✅
- Deuxième étage : gestion des données du certificat et de la toile de confiance ✅
- Troisième étage : [signature](/fr/solutions/signature/), [chiffrement et
  déchiffrement](/fr/solutions/encryption/), notamment des
  [courriels](/fr/solutions/theme-email/) ✅
- Dernier étage : gestion de nos comptes en Ɉ 🔜

