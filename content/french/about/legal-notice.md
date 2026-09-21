---
#Lastmod: 2024-06-28T12:22:10+02:00 # MANAGED by --enableGitInfo
title: "Mentions Légales"
lang: fr
#date: 2019-07-06T15:27:17+06:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Mentions et conditions d'utilisations"
image: "images/logos/logo-black-pgp.png"
categories: ["about"]
#tags: [""]
type: "post"
---

## Éditeur

"Friends of OpenPGP" (foOpgp) est [né en France](/documents/JOAFE_PDF_Unitaire_20230015_00088.pdf) sous le statut d'association. Numéro RNA : W052008166.

[Ses statuts](../status/) stipulent son objet :

> rassembler toutes personnes physiques ou morales qui utilisent ou développent des solutions technologiques basées sur les normes OpenPGP, selon les valeurs portées par l'association qui sont la transparence, la bienveillance, la coopération et la proximité ; promouvoir et faciliter l'adoption de ces technologies et soutenir leur croissance et leur utilisation.

Siège social :

> 75, impasse Serre des Isnards - 05000 Pelleautier.

## Vie privée

Le site internet foopgp.org n'utilise aucun cookie, aucune base de donnée.

Vous pouvez vérifier et même héberger par vous même ce site internet : l'intégralité du code et de son contenu est ouvert et accessible sur [un dépôt git](https://codeberg.org/foopgp/foopgp-hugowebsite).

En vue d’adapter le site aux demandes de nos visiteurs, nous analysons cependant le trafic avec [GoAccess](https://goaccess.io/). Les
données recueillies (adresse IP, User-Agent…) sont [accessibles à tous](/goaccess/last2w.html). Si autant de transparence
vous dérange, nous vous conseillons d'utiliser [TOR](https://fr.wikipedia.org/wiki/Tor_%28r%C3%A9seau%29) ou de modifier votre [User-Agent](https://www.howtogeek.com/113439/how-to-change-your-browsers-user-agent-without-installing-any-extensions/).

## Logiciel foodjis

Foodjis est l'application grand public qui intègre la plupart de nos innovations :
- EID
- PGP ID sauvegardé sur des fragments papier (partage de secret de Shamir)
- PGP ID sur clé de sécurité OpenPGP (par exemple YubiKey, NitroKey, …)
- Exportation d'un certificat PGP vers vCard
- Certification forte
- Toile de confiance facile à construire et à partager
- …

### Politique de confidentialité

Le logiciel foodjis n'affiche aucune publicité, ne mesure aucune audience et ne
collecte aucune donnée à l'insu de ses utilisateurs.

Les seules données que le logiciel foodjis échange à travers le réseau, et
notamment Internet, sont des **certificats PGP** — documents publics par nature.

Les certificats portent ce que les utilisateurs y ont mis, au minimum :
- une adresse électronique
- un identifiant unique et décentralisé (EID)
- un nom ou un pseudonyme

Ces certificats sont envoyés aux **serveurs de clés inscrits dans la
configuration**. L'application en propose un par défaut, celui de l'association,
et les utilisateurs peuvent le remplacer à leur guise.

L'application retrouve et importe depuis ces mêmes serveurs les certificats
**publics** que les autres utilisateurs fournissent. Ces échanges se font en
HTTPS ; comme tout serveur web, un serveur de clés peut garder des journaux
d'accès.

À savoir : **un certificat publié ne peut être effacé.** Les serveurs de clés se
recopient entre eux et ne suppriment rien — c'est la nature même de la
technologie PGP. Ce qui se fait, et que l'utilisateur peut faire à travers
foodjis, c'est **révoquer** : déclarer publiquement qu'une identité ou un
certificat n'est plus valable.

Aucune autre donnée personnelle n'est vue par le logiciel. Les clés secrètes de
cryptographie ne sont même pas gérées directement par le logiciel : elles le sont
par les clés de sécurité OpenPGP, qui les manipulent sans jamais les exposer. Le
code PIN de ces clés de sécurité ne peut être gardé qu'en mémoire, et pour la
durée que l'utilisateur choisit. Le journal de session disparaît avec la session.

### Licence

Toutes les versions de foodjis sont libres, sous licence GPL-3.0-only : leur code
source est remis sur simple demande adressée à
[info@foopgp.org](mailto:info@foopgp.org).

## Propriété intellectuelle

Associer ces deux termes [est un non-sens](https://www.gnu.org/philosophy/not-ipr.fr.html) ([cf. Discussion](https://www.april.org/utilisation-de-lexpression-propriete-intellectuelle-richard-stallman-albert-jacquard) avec Albert Jacquard). Cela dit, sauf mention contraire, tous les contenus sont sous [Licence CC BY SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.fr).
