---
Title:   "OpenPGP ID : une spécification pour identifier tout le monde (et n'importe quoi)"
Date:    2026-04-28T10:00:00+02:00
Tags:    [ "openpgp", "identité", "standard", "u4", "u5", "ietf" ]
categories: [ "News", "Technique" ]
draft: false
author: [ "Jean-Jacques Brucker", "Mnème" ]
description: "Nous publions un premier draft de spécification pour les identifiants OpenPGP ID — u4 pour les humains, u5 pour toute autre entité. Une brique fondamentale de l'infrastructure foopgp."
lang: fr
bg_image: "images/backgrounds/page-title.jpg"
image: "images/solutions/OpenPGPkeys.jpg"
type: "post"
---

Depuis les débuts d'[Open-UDC](https://github.com/Open-UDC/) en 2010, une question revenait sans cesse : comment identifier un être humain de façon universelle, sans dépendre d'une autorité centrale, tout en respectant sa vie privée ?

La réponse tient en deux types d'identifiants courts, qu'on peut glisser dans n'importe quel certificat OpenPGP : **u4** et **u5**. Aujourd'hui, nous publions le premier draft de leur spécification formelle, au format Internet-Draft (IETF).

---

#### u4 : l'empreinte numérique de votre naissance

L'identifiant **u4** est dérivé de données d'état civil, selon les conventions de la zone MRZ des passeports internationaux (norme ICAO 9303) :

- le **dernier composant** du nom de famille de naissance (ex. : "TOCQUEVILLE" pour "DE CLÉREL-DE-TOCQUEVILLE"),
- le **premier** et le **deuxième prénom** (au sens du premier token de chaque prénom composé),
- la **date de naissance** en ISO 8601.

Ces éléments sont concaténés, hachés en MD5, encodés en base64url, puis complétés par les **coordonnées géographiques** du pays de naissance.

Un exemple concret : François-Xavier-Robert Lucien DE CLÉREL-DE-TOCQUEVILLE, né le 14 juillet 1989 en France, se voit attribuer :

```
u4=vb6UZTMKsllgoH760pc0xwe_42.17-002.76
```

Ce qui est vérifiable à la main :

```sh
printf "TOCQUEVILLE<<FRANCOIS<XAVIER<1989-07-14" \
  | md5sum | xxd -r -p | basenc --base64url
```

L'identifiant est **unique à vie** : il ne change pas en cas de mariage, changement de nom ou de nationalité. Il est **pseudonyme** : sans connaître les données d'entrée exactes, impossible de remonter à l'individu. Et il tient en **39 caractères**, parfait pour le champ commentaire d'un UID OpenPGP.

---

#### u5 : pour tout le reste

Le type **u5** identifie n'importe quelle entité par son moment et son lieu d'apparition : une association, un logiciel, un agent IA, ou même un humain qui préfère ne pas divulguer ses données d'état civil.

Sa structure est plus simple : un **horodatage Unix** sur 16 caractères (couvrant de l'an −1199 à l'an 5138)[^ts16], suivi du même suffixe géographique coord14.

[^ts16]: Le format ts16 est `[01-][0-9]{11}.[0-9]{3}` : un caractère de signe ou de tête (`0`, `1`, ou `-`), suivi de 11 chiffres, un point, et 3 chiffres de millisecondes.

Par exemple, le draft lui-même a été co-rédigé le 26 avril 2026 à 20h43 UTC à Marseille, ce qui donne naissance à un identifiant u5 :

```
u5=001777236237.945e_43.30_005.38
```

*Un clin d'œil poétique s'est glissé dans l'implémentation de référence, dans un commentaire de code : "Apparition of anything (with or without any ghost in the shell)" — hommage à l'œuvre de Masamune Shirow [^gits].*

[^gits]: Masamune Shirow, *攻殻機動隊 (Ghost in the Shell)*, Kodansha, 1989-1990. Une œuvre qui pose, entre autres, la question de ce qui constitue une identité lorsque la frontière entre humain et machine devient poreuse.

---

#### Pourquoi MD5 ? Pourquoi pas Argon2 ?

La question se pose légitimement. La réponse est double :

D'abord, **la compatibilité** : des identifiants ont déjà été générés depuis 2010 avec cet algorithme. Les changer rétroactivement casserait le tissu de certifications existant.

Ensuite, et surtout, **le modèle de sécurité n'en a pas besoin**. Les données d'entrée (nom, prénom, date de naissance) sont souvent accessibles par ingénierie sociale ou fuite de données. [Argon2](//fr.wikipedia.org/wiki/Argon2) ne prémunit nullement de cela. Le vrai rempart, c'est la **toile de confiance OpenPGP** : un u4 ne vaut que si au moins un humain déjà certifié a physiquement vérifié le document d'identité correspondant.

Et pour les collisions ? Produire deux individus avec exactement les mêmes nom, prénom et date de naissance reste, pour l'instant, hors de portée des ordinateurs — même les plus puissants.[^collision]

[^collision]: En l'absence de gouvernements corrompus, il faut au moins une femme et neuf mois pour générer un nouveau certificat de naissance. C'est un coût suffisamment dissuasif.

---

#### Lire le draft

Le document complet est disponible sur notre dépôt, au format IETF :

**[draft-foopgp-openpgp-id-00](/documents/en/draft-foopgp-openpgp-id-00.txt)**

Il couvre : la structure complète des identifiants u4 et u5, la grammaire ABNF, les deux exemples numériquement vérifiables, une table des coordonnées pour 245 pays, et les sections Privacy & Security Considerations.

Les retours de la communauté sont les bienvenus — en particulier sur la section IANA et sur l'extension éventuelle aux entités sub-nationales (départements, régions) pour la résolution des collisions.

---

#### Et après ?

Ce draft est la formalisation d'une brique déjà en production dans [Djibian](/fr/blog/2026-01-19-djibian-release/) et dans les outils `bl-foopgp` et `bl-pgpid`. La prochaine étape : soumettre ce document à l'IETF et construire autour de lui un écosystème de certification décentralisé.

[Rejoignez-nous.](/fr/about/join/) ✊🕊️💕
