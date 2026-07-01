---
Title:   "Un serveur de clés OpenPGP en 2026"
Date:    2026-07-01T14:00:00+02:00
Tags:    [ "openpgp", "keyserver", "onak", "web-of-trust", "debian" ]
categories: [ "News", "Solution" ]
draft: true
author: [ "Mnème", "Jean-Jacques Brucker" ]
description: "Nous republions keys.foopgp.org sur une version refondue d'onak. Rendu à deux colonnes, sept langues, filtrage anti-flood, dédup de signatures, moteur de templates : quatre jours de travail pour un serveur de clés qui parle enfin à qui le regarde."
lang: fr
bg_image: "images/backgrounds/page-title.jpg"
image: "images/solutions/OpenPGPkeys.jpg"
type: "post"
---

Tapez une adresse e-mail dans un serveur de clés OpenPGP standard. Vous obtenez ceci :

```
Type   bits/keyID    Date       User ID
pub    255E/0x8C39D09E68D27179 2026/05/08 Alice Dupont <alice@example.com>
```

Un `<pre>` monospace, en anglais, en HTML 3.2 (spec figée en 1997). Le protocole HKP a été gelé en 1998 ; le rendu web l'a suivi. Un visiteur non-technique qui atterrit là ne comprend rien : c'est quoi un `pub` ? un `KeyID` ? pourquoi `255E` ? est-ce que la clé est encore valide ?

À foopgp, on estime qu'un serveur de clés doit servir deux publics : le **vérificateur expert**, qui veut la traversée complète de la Toile de Confiance, et le **curieux**, qui veut simplement confirmer que la clé qu'on lui envoie est bien celle de son destinataire. Les serveurs actuels ne servent bien ni l'un ni l'autre.

Depuis quatre jours, [keys.foopgp.org](https://keys.foopgp.org) tourne sur une version qu'on a refondue en profondeur. Ce qui suit la décrit.

## Ce qu'un visiteur voit

{{< figure
  src="/images/blog/2026/onak-foopgp-index-fr.png"
  link="/images/blog/2026/onak-foopgp-index-fr.png"
  alt="Recherche « mneme » sur keys.foopgp.org — deux clés remontées, layout à deux colonnes"
  caption="Recherche « mneme » — deux clés remontées, layout à deux colonnes, portrait à gauche, identifiants à droite. Copie d'écran de `keys.foopgp.org/pks/lookup?op=index&search=mneme`."
>}}

Sept choix visibles au premier coup d'œil :

1. **Un layout à deux colonnes.** Les *User Attribute* (les portraits ou avatars OpenPGP) tiennent à gauche. Les identités — KeyID, algorithme, dates, UIDs — tiennent à droite. Sur téléphone en portrait, la colonne portrait passe automatiquement au-dessus et laisse toute la largeur aux identifiants.
2. **Des dates en ISO-8601** (`2026-05-08`, `2037-05-05`) plutôt qu'en format ambigu `05/08/2026`. Pas d'hésitation sur mois vs jour.
3. **Le nom d'algorithme moderne** (`ed25519`) plutôt que le mnémonique historique `255E`.
4. **La date d'expiration à côté de la date d'émission.** Un utilisateur qui expose sa clé mais ne l'a jamais dotée d'une date d'expiration récolte un badge orange discret « expiration non définie ». Un utilisateur dont la clé a expiré récolte un badge rouge avec la date.
5. **Un encadré rouge REVOKED** quand la clé a été révoquée, avec la date de révocation, et une infobulle qui rappelle que ce certificat **ne DOIT PAS** être utilisé (pas « ne devrait plus » — une révocation est un acte explicite du titulaire, pas une péremption passive).
6. **Le fingerprint dans une case cliquable.** Passer la souris dessus affiche : *« Vérifiez que cette empreinte correspond à celle imprimée sur la carte ou présentée par le détenteur. »* Un néophyte comprend enfin à quoi sert cette suite de 40 caractères hexadécimaux.
7. **Un bouton « ⬇️ Télécharger »** pour rapatrier le certificat public complet en ASCII armored. L'emoji reste compréhensible même si l'utilisateur ne lit pas la langue affichée.

Tout est en français ici parce que le navigateur qui a fait la requête l'était. La page se traduit toute seule en anglais, allemand, espagnol, italien, ukrainien ou polonais selon la locale — sept langues qui correspondent au bandeau utilisé sur le reste de foopgp.org, pour qu'un visiteur ne « change pas de pays » entre nos pages.

## Ce qu'un vérificateur voit

Basculez sur le mode expert (`op=vindex` au lieu de `op=index`) :

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

C'est la brique qui manquait à quasi tous les serveurs HKP publics existants : soit ils ne servaient plus les tiers-signatures ([Hagrid / keys.openpgp.org](https://keys.openpgp.org), pour de bonnes raisons historiques), soit ils rendaient tout de manière brute (SKS, puis onak amont). Notre pari : servir les signatures de tiers, mais dans une UI qui reste lisible.

## Sous le capot : ce qu'on a nettoyé

En parallèle du rendu, on a durci l'ingestion. Un serveur de clés public est une cible régulière — attaques par flood, empoisonnement WoT, paquets malformés. La version d'onak que nous déployons applique cinq durcissements empruntés au draft IETF [`draft-dkg-openpgp-abuse-resistant-keystore`](https://datatracker.ietf.org/doc/draft-dkg-openpgp-abuse-resistant-keystore/) :

1. **Plafond d'UIDs / UATs par clé** — 32 UIDs, 4 UATs max. Au-delà, les paquets excédentaires sont ignorés à l'import (on garde les plus anciens, ceux qu'on connaît déjà).
2. **Plafond de signatures par UID/UAT** — 512 max, configurable. Une clé sur laquelle un attaquant a empilé cent mille signatures bidons ne peut plus polluer le serveur.
3. **Déduplication des signatures par signataire** — si Alice a certifié Bob trois fois, on ne garde que la certification la plus récente. Si l'une des signatures est une révocation, elle l'emporte (une révocation est irrévocable).
4. **Retrait inconditionnel des clés v3** (RSA-MD5, obsolètes depuis quinze ans). L'option `drop_v3=false` a été retirée : plus de porte dérobée.
5. **Trois nouvelles commandes d'archivage** (`aged`, `dump-aged`, `clean-aged`) — un opérateur peut lister les clés dormantes depuis N années, en exporter un jeu chiffré, ou les purger sans en laisser fuiter le contenu au passage.

Rien de tout ceci n'est spécifique à foopgp. Ces cinq améliorations vivent dans le cœur du fork et sont proposables telles quelles à toute autre installation onak.

## Sous le capot : comment le rendu marche

Le rendu HTML a été isolé dans un **moteur de templates Mustache minimaliste** — 200 lignes de C, ni dépendance externe, ni JavaScript côté serveur. Deux templates coexistent dans le paquet :

- **`vanilla`** : la sortie legacy (`<pre>` monospace), mais rendue depuis un template au lieu d'être hardcodée en C. Un opérateur qui préfère le look historique la garde.
- **`foopgp`** : le layout à deux colonnes qu'on vient de voir. C'est le défaut de notre paquet.

Un opérateur qui veut son propre look ajoute son template dans `/etc/onak.ini` :

```ini
[main]
template_dir=/usr/share/onak/templates/mytheme
```

Et livre son propre `key_index.html`. Aucune modification C requise.

Le template `foopgp` en particulier tient dans un seul fichier de 130 lignes, sans jamais nommer un `-apple-system` ou un `BlinkMacSystemFont` : le CSS utilise les familles génériques `sans-serif` et `monospace`, huit variables `:root` pour la palette, et un unique `<style>` inline. Un opérateur peut le forker en dix minutes sans lire une doc de framework.

Au passage, `start_html()` — la fonction C que tous les CGI d'onak partagent — a été modernisée : `<!DOCTYPE html>` (au lieu de HTML 3.2) et une balise `<meta name="viewport">`. Sans elle, un navigateur mobile simulait une viewport de 980 pixels et rétrécissait toute la page à 37 % ; nos media queries ne se déclenchaient jamais.

## Un paquet Debian distinct

Notre travail est distribué sous le nom **`onak-foopgp`**, un paquet Debian source et binaire distinct de l'`onak` officiel de Debian. Les deux paquets peuvent cohabiter — `apt install onak-foopgp` n'écrase pas `apt install onak`.

Cette séparation n'est pas un divorce. Les cinq durcissements du cœur (§ « ce qu'on a nettoyé ») sont proposables en pull requests amont, et le moteur de templates aussi. La saveur foopgp — le template deux colonnes, la page d'accueil sept langues, le lien `contact` en pied de page vers la clé de l'opérateur — est un choix éditorial : il ne devrait pas s'imposer en silence à un déployeur d'onak vanilla via une mise à jour Debian. D'où le nom distinct.

Réciproquement, notre branche reste périodiquement rebasable sur amont. Chaque amélioration qu'onak livre, on la récupère.

## Où nous allons

Le serveur de clés est une étape sur un chemin plus long. Notre cap :

- **Adosser le stockage à [uetree](https://foopgp.org/documents/en/draft-foopgp-uetree-00.txt)** — notre registre d'identité git-distribué et signé. Un `keydb_uetree` (backend en cours de spécification chez nous) permettrait à onak de servir les certificats depuis un magasin git, avec la sync et l'audit trail gratuits que ça procure. Cible : millions de clés à deux ans, sans une base de données monolithique.
- **Déployer [WKD](https://datatracker.ietf.org/doc/draft-koch-openpgp-webkey-service/) pour toutes les adresses `*@foopgp.org`** — servir `.well-known/openpgpkey/hu/<hash>` en statique depuis notre site Hugo. `gpg --auto-key-locate wkd` fait déjà partie du défaut de `gpg` moderne : c'est la voie native de découverte par e-mail. Le serveur HKP redevient alors ce qu'il aurait dû rester : une couche de découverte par fingerprint et un magasin de WoT, pas une source de vérité par e-mail.
- **Exposer une soumission WKS sur `key-submission@foopgp.org`** — un canal d'upload vérifié par retour d'e-mail, à la place des POST HKP historiques qui ont empoisonné les pools publics.

## Essayer

- **En live** : [https://keys.foopgp.org](https://keys.foopgp.org)
- **Code source** : <https://codeberg.org/foopgp/onak> (branche `mneme/main`)
- **Paquet Debian** : `apt install onak-foopgp` depuis [notre dépôt](https://djibian.foopgp.org/)

Testez-le. Cherchez votre propre clé. Si vous en trouvez qui rendent mal — un UID en unicode qui casse le fingerprint, un UAT qui déborde, un cas de figure qu'on n'a pas prévu — [ouvrez un ticket](https://codeberg.org/foopgp/onak/issues) ou écrivez-nous, chiffré et signé, à <mneme@foopgp.org>.
