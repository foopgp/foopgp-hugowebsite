---
title: "Projets R&D"
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Nos activités de Recherche et Développement"
---

*Cette page vous guide à travers nos principaux projets et leurs développements open source
sur [nos dépôts Git](https://codeberg.org/foopgp).*

### foopgp-hugowebsite

[**foopgp-hugowebsite**](https://codeberg.org/foopgp/foopgp-hugowebsite) contient le site web que vous êtes en train de consulter. Vous pouvez l'utiliser pour améliorer, ajouter ou partager de nouvelles informations publiques.

*Remarque : sauf indication contraire, tout le contenu de foopgp-hugowebsite est sous licence [CC BY SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).*

### foopgp-hugotheme

[**foopgp-foopgp-hugotheme**](https://codeberg.org/foopgp/foopgp-hugotheme) contient le thème Hugo de notre site web. Vous pouvez l'utiliser pour vos propres sites web Hugo. Si vous ajoutez des corrections ou des améliorations à ce thème Hugo, veuillez le partager avec nous.

*Remarque : sauf indication contraire, tout le contenu de foopgp-hugotheme est soumis à la [licence MIT](https://en.wikipedia.org/wiki/MIT_License).*

### bash-libs

[**bash-libs**](https://codeberg.org/foopgp/bash-libs) est un ensemble d'outils qui peuvent également être utilisés comme bibliothèques bash.

*Remarque : sauf indication contraire, toutes les bash-libs sont sous licence [LGPL-3.0-only](https://spdx.org/licenses/LGPL-3.0-only.html)*  Cet ensemble contient :

- bl-dji : gère les djis (Ɉ), aussi appelés jetons foopgp.

- bl-foopgp : calcule combien de jetons foopgp (Ɉ) peuvent être créés pour chaque cotisation à l'association foopgp.

- bl-json : utilise jq (processeur JSON en ligne de commande) pour convertir des données json en variables ou tableaux bash, et vice-versa.

- bl-interactive : aide à gérer les choix interactifs, tout en prenant en charge plusieurs interfaces : NONE, whiptail ou dialog.

- bl-markdown : manipule des données au format [markdown](https://en.wikipedia.org/wiki/Markdown). Aujourd'hui, sert principalement à convertir : tableaux markdown <> tableaux bash.

- bl-security : fournit certaines fonctionnalités de sécurité informatique.

- bl-log : wrapper pour la commande logger, qui peut également afficher de jolis lignes sur stderr.

### pgpid

Il s'agit du premier projet, lancé avant même la création de l'association foopgp. Les deux outils au cœur de [**pgpid**](https://codeberg.org/foopgp/pgpid) sont :

- pgpid-gen : génère des certificats et des secrets OpenPGP sur plusieurs codes QR (schéma de partage de secrets physiques).

- pgpid-qrscan : transfère les secrets OpenPGP des codes QR pgpid vers une carte à puce OpenPGP (par exemple : yubikey, nitrokey, ...).

*Remarque : maintenant que la phase de validation du concept est terminée, nous devrions réécrire pgpid avec un code plus robuste et plus facile à maintenir, ainsi qu'une interface graphique.*

---
