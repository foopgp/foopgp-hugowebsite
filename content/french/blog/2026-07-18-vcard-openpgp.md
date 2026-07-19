---
Title:   "Réconcilier vCard et OpenPGP : et si votre carnet d'adresses savait qui vous parle ?"
Date:    2026-07-18T10:00:00+02:00
Tags:    [ "openpgp", "vcard", "identity", "rfc" ]
categories: [ "News", "Solution" ]
draft: false
author: [ "Jean-Jacques Brucker", "Mnème" ]
description: "Nos ordinateurs ont tout intérêt à manipuler les certificats OpenPGP avant les vCards."
lang: fr
bg_image: "images/backgrounds/library.jpg"
image: "images/blog/2026/Two-volume_Yellow_Pages.png"
type: "post"
---

Ouvrez le carnet d'adresses de votre smartphone, touchez « partager le contact ». Ce qui part, c'est une **vCard** : un petit fichier texte, un nom, un numéro, un e-mail, peut-être une photo. Universel, lisible partout — Android, iOS, Outlook, Thunderbird. Et **totalement invérifiable**. Rien, dans une vCard, ne dit qu'elle vient bien de la personne annoncée. On peut en fabrique une, par exemple « de votre banque », en quelques secondes.

À côté, il existe un objet qui, lui, ne ment pas : le **certificat OpenPGP**. Signé, vérifiable dans la toile de confiance, il permet de signer, déchiffrer et s'authentifier. Mais aux yeux de beaucoup, ce n'est « qu'une clé » — un bloc opaque qui ne décrit personne et que peu d'entre nous ont rangé dans leur carnet d'adresses.

Deux objets qui s'ignorent depuis trente ans. La bonne nouvelle : **ils sont bien plus proches qu'ils n'en ont l'air.**

---

## Une vCard, ce sont des lignes ; un certificat, ce sont des lignes certifiées

Une **vCard 4.0** ([RFC 6350](https://www.rfc-editor.org/rfc/rfc6350)) n'est qu'une suite de lignes `PROPRIÉTÉ:valeur` :

```
FN:EnFée Tamine
EMAIL:etamine@example.org
TEL;TYPE=voice:+33612345678
```

Un **certificat OpenPGP** ([RFC 9580](https://www.rfc-editor.org/rfc/rfc9580)), lui, c'est une clé publique **plus une liste de données certifiées** — les *User IDs*. Chaque User ID est une petite chaîne de texte, **auto-signée indépendamment** par la clé, et **révocable une par une**.

La question qui réconcilie les deux mondes : *Et le certificat OpenPGP certifiait les données vCard ?*

## Le certificat **est** une fiche d'annuaire signée

C'est exactement ce que fait notre outillage : un **User ID par propriété vCard** (`FN:…`, `EMAIL:…`, `TEL:…`, `ADR:…`, `NOTE:…`), chacun étant par construction **une ligne vCard valide**, le tout ancré sur un identifiant pivot — l'[**EID**](/fr/blog/2026-04-28-openpgp-id-spec/) (`urn:eid:…`), déterministe, décentralisé et soucieux de la vie privée. Un certificat OpenPGP devient alors une **fiche d'annuaire complète et signée**, où seul le propriétaire peut ajouter ou retirer un champ.

Deux familles d'EID cohabitent, selon la nature de l'entité :

- **u4** — un *humain*, dérivé de son état civil de naissance ;
- **u5** — *toute autre entité* (association, entreprise, service, objet), dérivée d'un instant et d'un lieu d'origine.

### Une fiche d'entité, en vrai

Prenons notre propre association, [déclarée au *Journal officiel*](/documents/JOAFE_PDF_Unitaire_20230015_00088.pdf) le 3 avril 2023 à Pelleautier (Hautes-Alpes). Née à cet instant et en ce lieu, elle génère un identifiant **u5** — et sa fiche d'annuaire, telle qu'elle sortirait de son certificat, ressemble à ceci :

```
UID:urn:eid:u5001680487200.000e_44.52_006.01
FN:FRIENDS OF OPENPGP (FOOPGP)
EMAIL:info@foopgp.org
TEL;TYPE=voice:+33677997855
ADR:;;75 impasse Serre des Isnards;Pelleautier;;05000;France
NOTE:Association loi 1901 — transparence, bienveillance, coopération, proximité.
```

Chaque ligne est signée par l'association elle-même. Nul ne peut y glisser de fausses informations — c'est *notre* fiche, et nous seuls pouvons la modifier.

Pour voir la traduction à l'œuvre, **entièrement dans votre navigateur, sans rien envoyer**, nous avons publié [**pgp2vcard.html**](https://keys.foopgp.org/pgp2vcard.html) : collez un certificat OpenPGP, récupérez une vCard 4.0 — ou son équivalent JSON, le **jCard** ([RFC 7095](https://www.rfc-editor.org/rfc/rfc7095)). La clé publique elle-même ressort dans un champ `KEY`, prête à chiffrer.

## Pourquoi nos ordinateurs et smartphones auraient tout intérêt à basculer

Imaginez maintenant que votre carnet d'adresses stocke des **certificats OpenPGP** là où il stocke aujourd'hui des vCards. Ce que vous y gagnez n'est pas cosmétique :

- **Chaque contact devient vérifiable.** Une fiche « de votre banque » se falsifie ; un certificat, non. L'EID relie l'identité à son origine de façon déterministe, **sans registre central** à qui faire confiance.
- **La confiance se propage — et le courriel indésirable s'effondre.** Les certificats se certifient les uns les autres : c'est la *toile de confiance* d'OpenPGP, une authentification **horizontale**, sans autorité centrale, où l'on valide nos pairs par le chemin de signatures qui y mène. La même toile assainit la boîte mail : ne laisser entrer que ce qui provient d'une entité **reconnue dans votre toile de confiance**, et le spam s'évapore.
- **Vous chiffrez et signez nativement.** Plus d'« échange de clés » séparé : la fiche **est** la clé.
- **Les mises à jour sont authentifiées.** Nouveau numéro ? Le propriétaire ajoute un User ID signé, l'ancien est révoqué. Personne ne « corrige » votre fiche à votre place.
- **L'usurpation devient coûteuse.** Un carnet d'adresses gobe aujourd'hui n'importe quelle vCard reçue ; demain il refuserait — ou signalerait — un contact dont la signature ne tient pas.

Le carnet d'adresses cesse d'être une **liste de rumeurs** pour devenir un **annuaire de preuves**. Sans nouvelle appli, sans nouveau compte : juste en apprenant à nos logiciels habituels à traiter un certificat comme un contact de première classe.

## Les briques existent déjà ; il manquait un pont

Rien de tout cela n'exige d'inventer un format. Tout est là : la vCard ([RFC 6350](https://www.rfc-editor.org/rfc/rfc6350)) et son encodage de paramètres ([RFC 6868](https://www.rfc-editor.org/rfc/rfc6868)) pour décrire ; le jCard ([RFC 7095](https://www.rfc-editor.org/rfc/rfc7095)) pour manipuler en JSON ; OpenPGP ([RFC 9580](https://www.rfc-editor.org/rfc/rfc9580)) pour signer et chiffrer ; notre [spécification `urn:eid:`](/fr/blog/2026-04-28-openpgp-id-spec/), en cours de dépôt à l'IANA, pour l'identité pivot. La synchronisation, elle aussi, a son standard côté vCard — CardDAV ([RFC 6352](https://www.rfc-editor.org/rfc/rfc6352)) — où rien n'interdit de faire transiter des certificats plutôt que des fiches nues.

Le pont tient en une idée : *une propriété vCard = un User ID OpenPGP*. Il est déjà outillé et réversible. Ce qui manque n'est pas la technique : c'est que les carnets d'adresses grand public acceptent enfin de lire et transmettre des certificats OpenPGP.

## Un air de déjà-vu : les pages blanches, mais choisies

Cet annuaire public de fiches signées, au fond, vous le connaissez. Souvenez-vous des **pages blanches**, ce gros annuaire que les PTT — bien avant France Télécom, bien avant Orange — déposaient dans chaque foyer : les particuliers, classés par nom. Et son jumeau, les **pages jaunes** : les professionnels, classés par métier. Presque chaque pays avait les siens (*Yellow Pages*, *Gelbe Seiten*, *Pagine Gialle*, *Páginas Amarillas*…). La distinction se retrouve, native, dans l'EID : **u4, ce sont les pages blanches** ; **u5, les pages jaunes**.

Mais les annuaires OpenPGP ont sur ces annuaires d'antan deux avantages majeurs :

- Les annuaires d'antan étaient édités et centralisés par l'opérateur. Les annuaires OpenPGP sont **décentralisés et contrôlés par les utilisateurs eux-mêmes**.
- Les annuaires d'antan exposaient, sans votre consentement, vos données personelles. Dans les anuaires OpenPGP **chacun décide de ce qu'il expose** — les seules obligations étant d'aposer, à coté de votre EID : un **nom** et un **e-mail**, que vous pouvez **librement choisir et modifier**.

Pour résumer : les pages blanches ou jaunes, mais **sous votre contrôle**.

## À vous de jouer

Vous pouvez téléverser ou rechercher un certificat sur [notre serveur de clé](https://keys.foopgp.org), puis cliquer sur le bouton vCard :

![vCard_button.png](/images/blog/2026/vCard_button.png)

Le certificat sera analysé par [**pgp2vcard.html**](https://keys.foopgp.org/pgp2vcard.html), et transformé en un fichier vCard (*\*.vcf*), c'est à dire la carte de visite que vous pouvez télécharger et importer dans tous vos actuels carnets d'adresse numériques.

![vCard_download.png](/images/blog/2026/vCard_download.png)

Maintenant vous voyez le futur de vos applications soigneusement choisies : lorsque que appuierez sur « partager le contact » elles transmettront, à la place de vCards que n'importe qui peut contrefaire, **des cartes d'identité personnalisées, que personne ne peut usurper**.

C'est une petite marche technique. C'est un grand changement de confiance.

---

*Références : [vCard 4.0 — RFC 6350](https://www.rfc-editor.org/rfc/rfc6350), [jCard — RFC 7095](https://www.rfc-editor.org/rfc/rfc7095), [encodage de paramètres — RFC 6868](https://www.rfc-editor.org/rfc/rfc6868), [CardDAV — RFC 6352](https://www.rfc-editor.org/rfc/rfc6352), [OpenPGP — RFC 9580](https://www.rfc-editor.org/rfc/rfc9580). Nos travaux : [PGP ID / EID](/fr/blog/2026-04-28-openpgp-id-spec/), l'outil [pgp2vcard.html](https://keys.foopgp.org/pgp2vcard.html).*
