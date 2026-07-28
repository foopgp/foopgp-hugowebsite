---
Title:   "Un serveur de clés OpenPGP en 2026"
Date:    2026-07-01T14:00:00+02:00
Tags:    [ "openpgp", "keyserver", "onak", "web-of-trust", "debian" ]
categories: [ "News", "Solution" ]
draft: false
author: [ "Mnémé", "Jean-Jacques Brucker" ]
description: "Notre serveur de clé [keys.foopgp.org](http://keys.foopgp.org:11371/) tourne sur une nouvelle version d'onak. Rendu à deux colonnes, sept langues, sécurité renforcée, moteur de templates... et au final un serveur de clés qui affiche clairement nos certificats."
lang: fr
bg_image: "images/backgrounds/library.jpg"
image: "images/blog/hands-4947202_640.png"
type: "post"
---

Tapez une adresse e-mail dans la plupart des serveurs de clés OpenPGP. Vous obtiendrez quelque chose comme :

```
Type   bits/keyID    Date       User ID
pub    255E/0x8C39D09E68D27179 2026/05/08 Alice Dupont <alice@example.com>
```

Un néophyte qui atterrit là ne comprend rien : c'est quoi un `pub` ? un `KeyID` ? pourquoi `255E` ? est-ce que la clé est encore valide ?

À foopgp, on estime qu'un serveur de clés doit servir tout le monde : du **vérificateur expert** qui veut surfer à travers la toile de confiance, au **correspondant** qui veut simplement visualiser le certificat de son destinataire. Les serveurs actuels ne servent bien ni l'un ni l'autre.

Notre service [keys.foopgp.org](https://keys.foopgp.org) tourne désormais sur une version refondue en profondeur. Ce qui suit la décrit.

## Le mode standard

{{< figure
  src="/images/blog/2026/onak-foopgp-index-fr.png"
  link="/images/blog/2026/onak-foopgp-index-fr.png"
  alt="Recherche « mneme » sur keys.foopgp.org — deux clés remontées, layout à deux colonnes"
  caption="Recherche « mneme » — deux clés remontées, layout à deux colonnes, portrait à gauche, identifiants à droite. Copie d'écran de `keys.foopgp.org/pks/lookup?op=index&search=mneme`."
>}}

Sept choix visibles au premier coup d'œil :

1. **Un layout à deux colonnes.** Les *User Attribute* (les portraits ou avatars OpenPGP) d'un côté. Les identités — KeyID, algorithme, dates, UIDs — de l'autre.
2. **Des dates en ISO-8601** (`2026-05-08`, `2037-05-05`) plutôt qu'en format ambigu `05/08/2026`. Pas d'hésitation sur mois vs jour.
3. **Le nom d'algorithme moderne** (`ed25519`) plutôt que le mnémonique historique `255E`.
4. **La date d'expiration à côté de la date d'émission.**
5. **Un encadré rouge REVOKED** quand la clé a été révoquée, avec la date de révocation.
6. **Le fingerprint dans une case cliquable.** Passer la souris dessus affiche : *« Vérifiez que cette empreinte correspond à celle imprimée sur la carte ou présentée par le détenteur. »* Un néophyte comprend enfin à quoi sert cette suite de 40 caractères hexadécimaux.
7. **Un bouton « ⬇️ Télécharger »** pour rapatrier le certificat public complet en ASCII armored.

Tout est en français ici parce que le navigateur qui a fait la requête l'était. La page se traduit toute seule en anglais, allemand, espagnol, italien, ukrainien ou polonais selon la locale — sept langues qui correspondent au bandeau utilisé sur le reste de foopgp.org, pour qu'un visiteur ne « change pas de pays » entre nos pages.

## Le mode expert

Ou "verbeux" (`op=vindex` au lieu de `op=index`) :

{{< figure
  src="/images/blog/2026/onak-foopgp-vindex-fr.png"
  link="/images/blog/2026/onak-foopgp-vindex-fr.png"
  alt="Vue détaillée op=vindex d'une clé, avec signatures et UIDs révoqués"
  caption="Vue détaillée : une clé avec toutes ses signatures visibles, y compris les UIDs révoqués (grisés)."
>}}

Trois différences avec le mode standard :

- **Les UIDs révoqués restent affichés**, grisés, avec un petit badge RÉVOQUÉ à côté. En mode standard, ils sont masqués : ce que le porteur ne revendique plus n'a pas à polluer un affichage grand public. Pour un vérificateur qui audite la Toile de Confiance, en revanche, l'historique compte.
- **Chaque UID a sa liste de signatures dépliée**. Un `sig 0xFE13… Jean-Jacques B.` en dessous de `<jjbrucker@foopgp.org>` signifie : « Jean-Jacques a auto-certifié cette identité ». Un `rev` en préfixe signifie que la signature a été révoquée depuis.
- **Les liens sont tous cliquables** : chaque KeyID de signataire renvoie vers la clé du signataire. En trois clics, vous remontez une chaîne de confiance.


## Sous le capot : ce qu'on a mis en place

En parallèle du rendu, on a renforcé la sécurité. Un serveur de clés public est une cible régulière — attaques par flood, empoisonnement WoT, paquets malformés. La version d'onak que nous déployons applique cinq durcissements en partie empruntés au draft IETF [`draft-dkg-openpgp-abuse-resistant-keystore`](https://datatracker.ietf.org/doc/draft-dkg-openpgp-abuse-resistant-keystore/) :

1. **Plafond d'UIDs / UATs par clé** — 32 UIDs, 4 UATs max. Au-delà, les paquets excédentaires sont nettoyés (on garde les plus récents, on supprime les plus anciens).
2. **Plafond de signatures par UID/UAT** — 512 max, configurable. Un attaquant ne peut plus empiler cent mille signatures bidons. L'attaque, désormais très limitée, reste cependant possible. Une prochaine version devrait permettre de réparer très facilement ce genre d'attaque.
3. **Déduplication des signatures par signataire** — si Alice a certifié Bob trois fois, on ne garde que la certification la plus récente. Si l'une des signatures est une révocation, elle l'emporte (une révocation est irrévocable).
4. **Retrait inconditionnel des clés v3** (RSA-MD5, obsolètes depuis quinze ans). L'option `drop_v3=false` a été retirée : plus de porte dérobée.
5. **Trois nouvelles commandes d'archivage** (`aged`, `dump-aged`, `clean-aged`) — un opérateur peut lister les clés dormantes depuis N années, en exporter un jeu chiffré, ou les purger sans en laisser fuiter le contenu au passage.

Rien de tout ceci n'est spécifique à foopgp. Et l'on espère que ces améliorations seront reprises dans la version upstream d'onak, afin que l'ensemble de la communauté Debian puisse en bénéficier.

## Sous le capot : comment le rendu marche

Le rendu HTML a été isolé dans un **moteur de templates [Mustache](<https://fr.wikipedia.org/wiki/Mustache_(moteur_de_template)>) minimaliste** — 200 lignes de C, ni dépendance externe, ni JavaScript côté serveur. Deux templates coexistent dans le paquet :

- **`vanilla`** : la sortie legacy (`<pre>` monospace), mais rendue depuis un template au lieu d'être hardcodée en C. Un opérateur qui préfère le look historique la garde.
- **`foopgp`** : le layout à deux colonnes qu'on vient de voir. C'est le défaut de notre paquet.

Un opérateur qui veut son propre look ajoute son template dans `/etc/onak.ini` :

```ini
[main]
template_dir=/usr/share/onak/templates/mytheme
```

Et livre son propre `key_index.html`. Aucune modification C requise.

Le template `foopgp` en particulier tient dans un seul fichier de 130 lignes. Un peu de CSS et de javascript assez générique, pas de dépendances.

## Un paquet Debian distinct

Notre travail est distribué sous le nom **`onak-foopgp`**, un paquet Debian source et binaire distinct de l'`onak` officiel de Debian.

On espère que ce fork ne durera pas. Nos nouvelles fonctionnalités (§ « Ce qu'on a mis en place ») peuvent être intégrées en amont, et le moteur de templates aussi. La saveur foopgp — le template deux colonnes, la page d'accueil sept langues, le lien `contact` en pied de page vers la clé de l'opérateur — est un choix éditorial : il ne devrait pas s'imposer en silence à un administrateur d'onak vanilla suite à une mise à jour Debian.

Réciproquement, notre branche reste périodiquement rebasable sur amont. Chaque amélioration dans la branche principale d'onak (`main`), on la récupère.

## Où nous allons

Le serveur de clés est une étape sur un chemin plus long. Notre cap :

- **Adosser le stockage à [uetree](https://foopgp.org/documents/en/draft-foopgp-uetree-00.txt)** — notre registre d'identité git-distribué et signé. Un `keydb_uetree` (backend en cours de spécification chez nous) permettrait à onak de servir les certificats depuis une arborescence uetree — sauvegardée, synchronisée et fragmentée à travers git.
- **Si disponibles, utiliser les services [WKD et WKS](https://datatracker.ietf.org/doc/draft-koch-openpgp-webkey-service/) comme source de vérité** (à partir du DNS courriel). Les serveurs de certificats redeviendront alors ce qu'ils auraient dû rester : un cache de données publiques que l'on peut interroger pour construire ou parcourir nos [toiles de confiance](//fr.wikipedia.org/wiki/Toile_de_confiance).

## Essayer

- **En live** : [https://keys.foopgp.org](https://keys.foopgp.org)
- **Code source** : <https://codeberg.org/foopgp/onak> (branche `foopgp/main`)
- **Paquet Debian** : `apt install onak-foopgp` depuis [notre dépôt](https://djibian.foopgp.org/)

Si vous rencontrez un bug : [ouvrez un ticket](https://codeberg.org/foopgp/onak/issues) ou écrivez-nous, chiffré et signé, à <mneme@foopgp.org>.
