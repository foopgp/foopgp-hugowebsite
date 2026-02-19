---
title: "Projets R&D"
lang: fr
draft: false
bg_image: "images/backgrounds/Cartographie.jpg"
description : "Nos activités de Recherche et Développement"
type: "post"
categories: ["solution"]
---

*Cette page vous guide à travers nos principaux projets et leurs développements open source
sur [nos dépôts Git](https://codeberg.org/foopgp).*

---

### bash-libs

[**bash-libs**](https://codeberg.org/foopgp/bash-libs) est un ensemble d'outils qui peuvent également être utilisés comme bibliothèques bash.

Cet ensemble contient :

- **bl-pgpid** : Génère des identifiants foopgp, tels que *u4*, pour identifier les personnes dans le monde entier, ou un uid Unix fixe pour chacune d'entre elles.

- **bl-qrkey** : Sauvegarde ou restauration des clés OpenPGP à l'aide de QR codes imprimés utilisant le partage de clé secrète de Shamir.
Facilite également la modification des mots de passe protégeant les clés OpenPGP ou des codes (PIN ou Admin) des jetons de sécurité OpenPGP (YubiKey, ...).

- **bl-djibian** : Outils système pour Djibian GNU/Linux. Principalement pour gérer les utilisateurs.

- **bl-dji** : gère les djis (Ɉ), aussi appelés jetons foopgp.

- **bl-foopgp** : calcule combien de jetons foopgp (Ɉ) peuvent être créés pour chaque cotisation à l'association foopgp.

- **bl-json** : utilise jq (processeur JSON en ligne de commande) pour convertir des données json en variables ou tableaux bash, et vice-versa.

- **bl-interactive** : aide à gérer les choix interactifs, tout en prenant en charge plusieurs interfaces : NONE, whiptail, dialog ou zenity.

- **bl-markdown** : manipule des données au format [markdown](https://en.wikipedia.org/wiki/Markdown). Aujourd'hui, sert principalement à convertir : tableaux markdown <> tableaux bash.

- **bl-security** : fournit certaines fonctionnalités de sécurité informatique.

- **bl-log** : wrapper pour la commande logger, qui peut également afficher de jolis lignes sur stderr.

*Remarque : sauf indication contraire, toutes les bash-libs sont sous licence [LGPL-3.0-only](https://spdx.org/licenses/LGPL-3.0-only.html).*

### pgpid

[**pgpid**](https://codeberg.org/foopgp/pgpid) marque le début de [**foopgp**](/fr/about/). Les deux outils en son cœur sont :

- **pgpid-gen** : génère des certificats et des secrets OpenPGP sur plusieurs codes QR (schéma de partage de secrets physiques).

- **pgpid-qrscan** : transfère les secrets OpenPGP des codes QR pgpid vers une carte à puce OpenPGP (par exemple : yubikey, nitrokey, ...).

### djibian.foopgp.org

[Ce service](http://djibian.foopgp.org/) est notre propre [dépôt de paquets Debian](https://wiki.debian.org/DebianRepository/Setup), destiné à distribuer nos dernières versions logicielles.

De cette manière, vous pouvez facilement installer nos logiciels sur vos systèmes Debian :

```bash
gpg --keyserver keys.foopgp.org --recv-keys 2C364630A2436D7E
gpg --export 2C364630A2436D7E | sudo tee /usr/local/share/foopgp-archive-keyring.pgp > /dev/null

cat <<EOF | sudo tee /etc/apt/sources.list.d/foopgp.sources
Types: deb
URIs: http://djibian.foopgp.org/debs/
Suites: ./
Components: 
Signed-By: /usr/local/share/foopgp-archive-keyring.pgp
EOF

sudo apt update

sudo apt install bashlibs-all
sudo apt install djibian-onboarding
```

*Remarques :*
- *Ces paquets ayant peu de dépendances, ils pourraient être compatibles avec d'autres systèmes de type Debian : Ubuntu, Mint, etc.*
- *Pour tester les versions de préproduction, remplacez l'URI <http://djibian.foopgp.org/debs/> par <http://djibian.foopgp.org/test/>.*

### keys.foopgp.org

C'est [notre serveur de clés OpenPGP](https://keys.foopgp.org/) conforme au [protocole draft-gallagher-openpgp-hkp-00](https://www.ietf.org/archive/id/draft-gallagher-openpgp-hkp-00.html).

Il utilise [une version améliorée d'Onak](https://codeberg.org/foopgp/onak), et nous transmettons régulièrement nos contributions [au développeur principal](https://www.earth.li/~noodles/) de [la version originale](https://github.com/u1f35c/onak).

### foopgp-hugotheme

[**foopgp-hugotheme**](https://codeberg.org/foopgp/foopgp-hugotheme) contient le thème Hugo de notre site web. Vous pouvez l'utiliser pour vos propres sites web Hugo. Si vous ajoutez des corrections ou des améliorations à ce thème Hugo, veuillez le partager avec nous.

*Remarque : sauf indication contraire, tout le contenu de foopgp-hugotheme est soumis à la [licence MIT](https://en.wikipedia.org/wiki/MIT_License).*

### foopgp-hugowebsite

[**foopgp-hugowebsite**](https://codeberg.org/foopgp/foopgp-hugowebsite) contient le site web que vous êtes en train de consulter. Vous pouvez l'utiliser pour améliorer, ajouter ou partager de nouvelles informations publiques.

*Remarque : sauf indication contraire, tout le contenu de foopgp-hugowebsite est sous licence [CC BY SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).*

---
