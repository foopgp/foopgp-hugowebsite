---
Title:   "PGP ID : une spécification pour identifier tout le monde (et n'importe quoi)"
Date:    2026-04-28T10:00:00+02:00
Tags:    [ "openpgp", "identity", "specification", "eid", "ietf" ]
categories: [ "News", "Solution" ]
draft: false
author: [ "Jean-Jacques Brucker", "Mnêmê" ]
description: "Nous publions une spécification pour les identifiants d'entité (EID) — u4 pour les humains, u5 pour toute autre entité — et leur namespace URN urn:eid:. Une brique fondamentale de l'infrastructure foopgp."
lang: fr
bg_image: "images/backgrounds/page-title.jpg"
image: "images/solutions/identity.png"
type: "post"
---

Depuis les débuts d'[Open-UDC](https://github.com/Open-UDC/) en 2010, une question revenait sans cesse : comment identifier un être humain de façon universelle, sans dépendre d'une autorité centrale, tout en respectant sa vie privée ?

La réponse tient en une famille d'identifiants courts — les **identifiants d'entité** (*Entity IDentifiers*), ou **EID** — qui forment le namespace URN `urn:eid:` et qu'on peut glisser dans n'importe quel certificat OpenPGP : c'est le cœur du système **PGP ID**. Deux variantes sont définies aujourd'hui : **u4** pour les humains, **u5** pour toute autre entité. Leur spécification formelle, au format Internet-Draft (IETF), est publiée sur ce site.

*(Mis à jour en juillet 2026 : le draft définit désormais le namespace URN `eid`, destiné à être réservé auprès de l'IANA, et la forme standard colle le tag de variante à la valeur — `urn:eid:u4…` — sans séparateur.)*

---

#### u4 : l'empreinte numérique de votre naissance

L'identifiant **u4** est dérivé de données d'état civil, selon les conventions de la zone MRZ des passeports internationaux (norme ICAO 9303) :

- le **dernier composant** du nom de famille de naissance (ex. : "TOCQUEVILLE" pour "DE CLÉREL-DE-TOCQUEVILLE"),
- le **premier** et le **deuxième prénom** (au sens du premier token de chaque prénom composé),
- la **date de naissance** en ISO 8601.

Ces éléments sont concaténés, hachés en MD5, encodés en base64url, puis complétés par les **coordonnées géographiques** du pays de naissance.

Un exemple concret : François-Xavier-Robert Lucien DE CLÉREL-DE-TOCQUEVILLE, né le 14 juillet 1989 en France, se voit attribuer :

```
urn:eid:u4vb6UZTMKsllgoH760pc0xwe_42.17-002.76
```

Ce qui est vérifiable à la main :

```sh
printf "TOCQUEVILLE<<FRANCOIS<XAVIER<1989-07-14" \
  | md5sum | xxd -r -p | basenc --base64url
```

L'identifiant est **unique à vie** : basé sur l'état civil de naissance, il ne change pas en cas de mariage, changement de nom ou de nationalité. Il est **pseudonyme** : sans connaître les données d'entrée exactes, impossible de remonter à l'individu. Et son URN, de **46 caractères**, constitue à lui seul un UID OpenPGP dédié (`UID:urn:eid:u4…`), certifiable et révocable indépendamment des autres UIDs. *(La forme historique `u4=…`, en commentaire d'UID, reste lue par tous nos outils mais n'est plus produite.)*

---

#### u5 : pour tout le reste

Le type **u5** identifie n'importe quelle entité par son moment et son lieu d'apparition : une association, un logiciel, un agent IA, ou même un humain qui préfère ne pas divulguer ses données d'état civil.

Sa structure est plus simple : un **horodatage Unix** sur 16 caractères (couvrant de l'an −1199 à l'an 5138)[^ts16], suivi du même suffixe géographique coord14.

[^ts16]: Le format ts16 est `[01-][0-9]{11}.[0-9]{3}` : un caractère de signe ou de tête (`0`, `1`, ou `-`), suivi de 11 chiffres, un point, et 3 chiffres de millisecondes.

Par exemple, cet article lui-même a été co-rédigé par [Mnêmê](/fr/author/mneme/), une IA apparue le 26 avril 2026 à 20h43 UTC à Marseille, ce qui donne naissance à un identifiant u5 :

```
urn:eid:u5001777236237.945e_43.30_005.38
```

*Un clin d'œil poétique s'est glissé dans l'implémentation de référence, dans un commentaire de code : "Apparition of anything (with or without any ghost in the shell)" — hommage à l'œuvre de Masamune Shirow [^gits].*

[^gits]: Masamune Shirow, *攻殻機動隊 (Ghost in the Shell)*, Kodansha, 1989-1990. Une œuvre qui pose, entre autres, la question de ce qui constitue une identité lorsque la frontière entre humain et machine devient poreuse.

---

#### Au-delà du certificat : un écosystème d'usages

Un eid ne sert pas qu'à étiqueter un certificat. Dans l'implémentation de référence ([bash-libs](https://codeberg.org/foopgp/bash-libs)), il irrigue tout l'écosystème numérique :

**Recherche sur les serveurs de certificats.** L'eid sert de clé de recherche pseudonyme sur les serveurs de certificats OpenPGP (souvent appelés *keyservers* dans le protocole HKP/HKPS — alors qu'ils servent en réalité des certificats). Celui qui connaît les données d'état civil peut retrouver le certificat sans que le serveur ait besoin d'indexer des noms.

**Dérivation d'un identifiant système.** L'identifiant est réduit en un entier 32 bits dans une plage réservée, ce qui donne à chaque individu le **même numéro d'utilisateur Unix sur tous les systèmes** conformes. Par le paradoxe des anniversaires, il faut environ **55 000 utilisateurs** sur un même système avant d'avoir 50 % de chance de collision ; en cas de collision, d'autres plages pourront être définies.

**Carte à puce OpenPGP.** L'eid est stocké dans le champ « données de connexion » de la carte (YubiKey, Nitrokey, ...), permettant à la carte de porter l'identité décentralisée de son porteur aux côtés des clés cryptographiques.

**Répertoire personnel.** Sur [Djibian](/fr/solutions/djibian/), le répertoire de l'utilisateur est nommé d'après l'eid complet, préfixé du tag de variante collé (`u4` ou `u5`) — la forme standard des EID, dont POSIX avait montré la voie :

```
/home/u4vb6UZTMKsllgoH760pc0xwe_42.17-002.76
```

Chemin unique, portable, auto-documenté : le nom du répertoire encode directement l'identité.

**Configuration du système en entier.** À partir du certificat OpenPGP identifié par son eid, le système dérive automatiquement : les clés SSH autorisées, la clé de signature Git, la clé GnuPG par défaut, et l'avatar de l'utilisateur (`~/.face`). Un seul certificat suffit à initialiser un environnement utilisateur complet et authentifié.

---

#### Pourquoi MD5 ? Pourquoi pas Argon2 ?

La question se pose légitimement. La réponse est double :

D'abord, **la compatibilité** : des identifiants ont déjà été générés depuis 2010 avec cet algorithme. Les changer rétroactivement casserait le tissu de certifications existant.

Ensuite, et surtout, **le modèle de sécurité n'en a pas besoin**. Les données d'entrée (nom, prénom, date de naissance) sont souvent accessibles par ingénierie sociale ou fuite de données. [Argon2](//fr.wikipedia.org/wiki/Argon2) ne prémunit nullement de cela. Le vrai rempart, c'est la **toile de confiance OpenPGP** : un u4 ne vaut que si au moins un humain déjà certifié a physiquement vérifié le document d'identité correspondant.

Et pour les collisions ? Produire deux individus avec exactement les mêmes nom, prénom et date de naissance reste, pour l'instant, hors de portée des ordinateurs — même les plus puissants.[^collision]

[^collision]: En l'absence de gouvernements corrompus, il faut au moins une femme et neuf mois pour générer un nouveau certificat de naissance. C'est un coût suffisamment dissuasif.

---

#### Lire la spécification

Le document complet est disponible sur notre dépôt, au format IETF :

**[draft-foopgp-urn-eid-00](//codeberg.org/foopgp/foopgp-hugowebsite/src/branch/public/public/documents/en/draft-foopgp-urn-eid-00.txt)**

Il définit le **namespace URN `eid`** (gabarit d'enregistrement IANA, RFC 8141) et couvre : la structure complète des EID (variantes u4 et u5), la grammaire ABNF, les exemples numériquement vérifiables, les usages applicatifs, une table des coordonnées pour 245 pays, et les sections Privacy & Security Considerations.

Les retours de la communauté sont les bienvenus — en particulier sur la section IANA et sur l'extension éventuelle aux entités sub-nationales (départements, régions) pour la résolution des collisions.

---

#### Et après ?

Cette spécification est la formalisation d'une brique déjà en production dans [Djibian](/fr/solutions/djibian/) et dans les outils `bl-foopgp` et `bl-pgpid`. La prochaine étape : réserver le NID `eid` auprès de l'IANA (revue d'expert, RFC 8141), soumettre le document à l'IETF, et construire autour de lui un écosystème de certification décentralisé.

> 📖 Pour la vue grand public du **PGP ID** — création, sauvegarde papier en QR codes, transposition sur clé physique, certification — voir la page **[solutions/pgp-id](/fr/solutions/pgp-id/)**.

[Rejoignez-nous.](/fr/about/join/) ✊🕊️💕
