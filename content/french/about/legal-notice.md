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

## Les applications

Ce qui précède parle du site. Voici ce qui vaut pour les applications que
l'association publie — aujourd'hui **foodjis**, sur Android.

Elles ne créent aucun compte, n'affichent aucune publicité et ne mesurent
aucune audience : il n'y a rien à collecter, et rien ne nous est envoyé au
seul fait de les utiliser.

Ce qui quitte votre appareil, et seulement quand vous le demandez, c'est un
**certificat OpenPGP** — un document public par nature — envoyé aux **serveurs
de clés inscrits dans la configuration**. L'application en propose un par
défaut, celui de l'association, et vous pouvez le remplacer par ceux que vous
voulez. Un certificat porte ce que vous y avez mis : une ou plusieurs adresses
électroniques, le nom ou le pseudonyme que vous vous donnez, éventuellement un
portrait, et, si votre identifiant PGP ID en comporte un, un lieu arrondi à
deux décimales — environ un kilomètre. L'application lit aussi sur ces mêmes
serveurs les certificats **publics** des personnes que vous cherchez. Ces
échanges se font en HTTPS ; comme tout serveur web, un serveur de clés garde
des traces d'accès.

À savoir avant de publier : **un certificat publié ne se reprend pas.** Les
serveurs de clés se recopient entre eux et ne suppriment rien — c'est la nature
d'OpenPGP, pas une décision de l'application. Ce qui se fait, et que
l'application sait faire, c'est le **révoquer** : signer la déclaration qui dit
que cette identité n'est plus valable, et la publier à son tour.

Le reste ne quitte pas l'appareil. Votre clé secrète n'y est même jamais : elle
reste dans votre clé de sécurité, qui signe sans jamais la livrer. Le code PIN
n'est gardé qu'en mémoire, et pour la durée que vous avez fixée. Le journal de
session disparaît avec la session.

Ces applications sont libres, sous licence GPL-3.0-only : leur code source est
remis à quiconque en détient une et le demande. Une question, une demande :
[info@foopgp.org](mailto:info@foopgp.org).

## Propriété intellectuelle

Associer ces deux termes [est un non-sens](https://www.gnu.org/philosophy/not-ipr.fr.html) ([cf. Discussion](https://www.april.org/utilisation-de-lexpression-propriete-intellectuelle-richard-stallman-albert-jacquard) avec Albert Jacquard). Cela dit, sauf mention contraire, tous les contenus sont sous [Licence CC BY SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.fr).
