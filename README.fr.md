
Il s'agit du site web des [Amis d'Open PGP](https://foopgp.org) ([FoOPGP](https://foopgp.org) pour les initiés),
réalisé avec amour et [hugo](https://gohugo.io).

## Structure

Presque toutes les pages se trouvent dans les sous-répertoires [content/{langue}](content/).

Certaines traductions appartiennent au site web et se trouvent dans le sous-répertoire [i18n](i18n/),
tandis que d'autres appartiennent au thème (et sont intégrées à celui-ci).

Les thèmes se trouvent dans le sous-répertoire [themes](themes/) (et ils devraient être des sous-modules git).

(Hélas) Il existe encore des interdépendances entre les thèmes, le site Hugo et
son contenu :
* le thème utilise les images du site.
* Certaines descriptions se trouvent dans le thème alors qu'elles pourraient être dans le site,
   ou inversement.

## Fonctionnalité des langues - prise en charge de l'i18n

Lorsque vous choisissez une langue dans la barre de menu, vous changez de contenu et devez traduire chaque page dans toutes les langues.

Heureusement, nos lecteurs ont l'habitude de lire plusieurs langues, et pour la partie la plus dynamique
du contenu, à savoir les pages de blog, événements et formations, le thème gère le
champ **lang** présent dans les [en-têtes YAML](https://cran.r-project.org/web/packages/ymlthis/vignettes/yaml-fieldguide.html).

Ainsi, si vous voulez qu'une page rédigée en anglais soit affichée sur le site "français",
il vous suffit de créer un lien symbolique depuis la partie française vers cette page anglaise. Ou
inversement.

> $ cd content/french/blog/

> $ ln -s ../../english/blog/1970-01-01-my-first-article.md

## Développer et tester ce site web chez soi

Vous devez utiliser un éditeur de texte qui prend en charge la syntaxe [Markdown](https://fr.wikipedia.org/wiki/Markdown)
([vim](https://www.vim.org/), etc.)

### Cloner le dépôt et son sous-module de theme :
```bash
git clone https://codeberg.org/foopgp/foopgp-hugowebsite.git
cd foopgp-hugowebsite
git submodule update --init --recursive themes
```

### Installer Hugo (si nécessaire) :
```bash
sudo apt update
sudo apt install hugo
```

### Lancer un serveur local :
```bash
hugo server --buildDrafts
```
Cela indique à Hugo de générer le site statique et de le faire fonctionner sur votre
[localhost](https://fr.wikipedia.org/wiki/Localhost), avec les pages de brouillon
activées.

### Configurer votre environement

#### Pour signer les commits et pousser avec SSH :
```bash
git config --global url.git@codeberg.org:.pushInsteadOf https://codeberg.org/
git config --global commit.gpgsign true
```

#### Ajouter ces deux lignes dans votre `~/.bashrc` pour remplacer l'agent SSH par l'agent GPG:
```bash
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
```

