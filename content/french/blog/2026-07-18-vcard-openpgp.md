---
Title:   "Réconcilier vCard et OpenPGP : et si votre carnet d'adresses savait qui vous parle ?"
Date:    2026-07-18T10:00:00+02:00
Tags:    [ "openpgp", "vcard", "identity", "rfc", "interop" ]
categories: [ "News", "Solution" ]
draft: true
author: [ "Jean-Jacques Brucker", "Mnème" ]
description: "Une vCard décrit un contact mais ne prouve rien ; un certificat OpenPGP prouve tout mais ne décrit personne. Nous montrons qu'ils ne font qu'un — et pourquoi vos téléphones auraient tout intérêt à manipuler des certificats OpenPGP à la place des vCards."
lang: fr
bg_image: "images/backgrounds/page-title.jpg"
image: "images/solutions/identity.png"
type: "post"
---

Ouvrez le carnet d'adresses de votre téléphone, touchez « partager le contact ». Ce qui part, c'est une **vCard** : un petit fichier texte, `Marie Durand`, un numéro, un e-mail, peut-être une photo. Universel, lisible partout — Android, iOS, Outlook, Thunderbird. Et **totalement invérifiable**. Rien, dans une vCard, ne dit qu'elle vient bien de Marie. On peut en fabriquer une « de votre banque » en dix secondes.

À côté, il existe un objet qui, lui, ne ment pas : le **certificat OpenPGP**. Signé, vérifiable, il permet de chiffrer et de signer. Mais aux yeux du grand public, ce n'est « qu'une clé » — un bloc opaque qui ne décrit personne et n'a jamais sa place dans un carnet d'adresses.

Deux objets qui s'ignorent depuis trente ans. La bonne nouvelle : **ils sont bien plus proches qu'ils n'en ont l'air.**

---

## Une vCard, ce sont des lignes ; un certificat, ce sont des identités

Une **vCard 4.0** ([RFC 6350](https://www.rfc-editor.org/rfc/rfc6350)) n'est qu'une suite de lignes `PROPRIÉTÉ:valeur` :

```
FN:Marie Durand
EMAIL:marie@example.org
TEL;TYPE=voice:+33612345678
NOTE:contact rencontré au FOSDEM
```

Un **certificat OpenPGP** ([RFC 9580](https://www.rfc-editor.org/rfc/rfc9580)), lui, c'est une clé publique **plus une liste d'identités** — les *User IDs*. Chaque User ID est une petite chaîne de texte, **auto-signée indépendamment** par la clé, et **révocable une par une**.

La question qui change tout : *et si chaque ligne de la vCard était un User ID ?*

## Un certificat qui **est** une carte de visite signée

C'est exactement ce que fait notre outillage. Au lieu d'un User ID fourre-tout du type `Marie Durand <marie@example.org>`, nous plaçons dans le certificat **un User ID par propriété vCard** — `FN:…`, `EMAIL:…`, `TEL:…`, `NOTE:…`, `ADR:…` — chacun étant, par construction, **une ligne vCard valide**. Le tout est ancré sur une identité pivot : l'[**EID**](/fr/blog/2026-04-28-openpgp-id-spec/) (`urn:eid:…`), un identifiant déterministe, décentralisé et respectueux de la vie privée, que la clé certifie.

Résultat : un certificat OpenPGP qui contient une vCard complète — nom, e-mails, téléphone, adresse, note, et même la **photo** (portée par un attribut d'image du certificat). Chaque champ est signé par son propriétaire, et lui seul peut en ajouter ou en révoquer.

Pour le voir tourner, nous avons publié un petit outil qui fait la traduction, **entièrement dans votre navigateur, sans rien envoyer** : [**pgp2vcard.html**](https://keys.foopgp.org/pgp2vcard.html). Collez un certificat OpenPGP, récupérez une vCard 4.0 — ou son équivalent JSON, le **jCard** ([RFC 7095](https://www.rfc-editor.org/rfc/rfc7095)). La clé publique elle-même ressort dans un champ `KEY`, prête à chiffrer.

## Pourquoi votre téléphone aurait tout intérêt à basculer

Imaginez, maintenant, que votre carnet d'adresses stocke des **certificats OpenPGP** là où il stocke aujourd'hui des vCards. Ce que vous y gagneriez n'est pas cosmétique :

- **Chaque contact devient vérifiable.** Une vCard « de votre banque » se falsifie ; un certificat, non. L'EID relie l'identité à l'état civil de façon déterministe, **sans registre central** à qui faire confiance.
- **Vous chiffrez et signez nativement.** Plus d'« échange de clés » séparé et rébarbatif : la carte de contact **est** la clé. Écrire un message confidentiel à Marie devient aussi simple que lui envoyer un SMS.
- **Les mises à jour sont authentifiées.** Marie change de numéro ? Elle ajoute un User ID signé ; l'ancien est révoqué. Personne d'autre ne peut « corriger » sa fiche à sa place.
- **L'usurpation devient coûteuse.** Aujourd'hui, un carnet d'adresses gobe n'importe quelle vCard reçue. Demain, il refuserait — ou signalerait — un contact dont la signature ne tient pas.

Autrement dit : **le carnet d'adresses cesse d'être une liste de rumeurs pour devenir un annuaire de preuves.** Et cela sans nouvelle appli, sans nouveau compte : juste en apprenant à nos logiciels habituels — smartphones, clients mail, Outlook — à manipuler un certificat OpenPGP comme un contact de première classe.

## Les briques existent déjà ; il manque un pont

Le plus frappant, c'est que **rien de tout cela n'exige d'inventer un nouveau format**. Les standards sont là :

- la vCard 4.0 ([RFC 6350](https://www.rfc-editor.org/rfc/rfc6350)) et son encodage de paramètres ([RFC 6868](https://www.rfc-editor.org/rfc/rfc6868)) pour décrire le contact ;
- le jCard ([RFC 7095](https://www.rfc-editor.org/rfc/rfc7095)) pour le manipuler en JSON ;
- OpenPGP ([RFC 9580](https://www.rfc-editor.org/rfc/rfc9580)) pour le signer et le rendre chiffrable ;
- notre [spécification `urn:eid:`](/fr/blog/2026-04-28-openpgp-id-spec/), en cours de dépôt à l'IANA, pour l'identité pivot.

Le pont entre les deux mondes tient en une idée simple — *une propriété vCard = un User ID OpenPGP* — et il est déjà **outillé et réversible**. Ce qui manque n'est pas la technique : c'est que les carnets d'adresses grand public acceptent enfin de lire, d'écrire et de synchroniser des certificats. La synchronisation, d'ailleurs, a déjà son standard côté vCard — CardDAV ([RFC 6352](https://www.rfc-editor.org/rfc/rfc6352)) ; rien n'interdit d'y faire transiter des certificats plutôt que des fiches nues.

## À vous de jouer

Prenez un certificat OpenPGP — le vôtre, celui d'un correspondant — et passez-le dans [**pgp2vcard.html**](https://keys.foopgp.org/pgp2vcard.html). Regardez une carte de visite complète surgir d'une clé. Puis imaginez le jour où « partager le contact » partagera, à la place d'un fichier que n'importe qui peut contrefaire, **une carte que personne ne peut usurper**.

C'est une petite marche technique. C'est un grand changement de confiance.

---

*Références : [vCard 4.0 — RFC 6350](https://www.rfc-editor.org/rfc/rfc6350), [jCard — RFC 7095](https://www.rfc-editor.org/rfc/rfc7095), [encodage de paramètres — RFC 6868](https://www.rfc-editor.org/rfc/rfc6868), [CardDAV — RFC 6352](https://www.rfc-editor.org/rfc/rfc6352), [OpenPGP — RFC 9580](https://www.rfc-editor.org/rfc/rfc9580). Nos travaux : [PGP ID / EID](/fr/blog/2026-04-28-openpgp-id-spec/), l'outil [pgp2vcard.html](https://keys.foopgp.org/pgp2vcard.html).*
