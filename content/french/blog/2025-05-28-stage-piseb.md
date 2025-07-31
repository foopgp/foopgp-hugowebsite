---
title: "Résumé de stage"
date: 2025-05-28T13:00:00+02:00
draft: false
description: "Résumé de stage par Sébastien Picardeau (piseb)"
lang: fr
image: "/images/blog/2024/rds.avif"
author: ["Sébastien Picardeau"]
categories: ["study"]
tags: ["Internship", "Experience"]
type: "post"
License: CC By-SA
---

# Stage de piseb

* [**OVH Debian SSH**](./#ovh-debian-ssh)
  * [Déploiement et connexion ssh d'une Debian chez OVH](./#déploiement-et-connexion-ssh-dune-debian-chez-ovh)
  * [Rajouter un acces ssh à un tiers](./#rajouter-un-acces-ssh-à-un-tiers)
* [**Apache**](./#apache)
  * [Déploiement de foopgp.org](./#déploiement-de-foopgporg)
    * [Particularité pour git](./#particularité-pour-git)
    * [git clone](./#git-clone)
    * [hugo](./#hugo)
  * [Déploiement du serveur de clés key.foopgp.org](./#déploiement-du-serveur-de-clés-keyfoopgporg)
  * [page index.html](./#page-indexhtml)
  * [Ajout de https aux sites](./#ajout-de-https-aux-sites)
  * [fail2ban](./#fail2ban)
* [**Packages Debian**](./#packages-debian)
  * [Préambule](./#préambule)
  * [Démonstration complète avec les bash-libs](./#démonstration-complète-avec-les-bash-libs)
  * [pgpid](./#pgpid)
    * [démo accélérée](./#démo-accélérée)
    * [premier problème](./#premier-problème)
    * [clean](./#clean)
    * [happy end](./#happy-end)
    * [Ma configuration](./#ma-configuration)
    * [Premier patch pour `/data/`](./#premier-patch-pour-data)
    * [Deuxième patch, les bash-libs et les `bl-`](./#deuxième-patch-les-bash-libs-et-les-bl-)
* [**iso Debian personnalisée**](./#iso-debian-personnalisée)
* [**Signer ses commit**](./#signer-ses-commit)
  * [Configuration dépôt distant](./#configuration-dépôt-distant)
  * [Configuration local](./#configuration-locale)

## OVH Debian SSH

### Déploiement et connexion ssh d'une Debian chez OVH

Chez ovhcloud, Debian est installée en quelques cliques. Il suffit d'entrer sa clé publique SSH dans le formulaire. La particularité est d'utiliser la clé gpg déjà créée avec pgpid (outil foopgp) comme clé SSH (une sous clé avec une utilisation A pour "authenticate capability").

```bash
$ gpg --export-ssk-key <ID|mail>
```

Pour l'agent, dans `.bashrc` :

```bash
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
```

On peut alors se connecter en ssh avec la [yubikey](https://www.yubico.com/products/) qui protége la clé privée.

Si on est sur une autre machine qui n'a pas déjà utilisé `pgpid`, quelques manipulations peuvent être nécessaires avant :

- Si besoin installer `scdaemon`
- Vérifier que la smart card est reconnue : `$ gpg --card-status`
- `$ gpg --card-edit` puis `fetch`
- `$ gpg --list-secret-keys` pour vérifier
- La référence (stub) est présente mais pas la clé gpg privée protégée par la Smart Card

Au moment de la connexion ssh la clé doit déjà être connectée (`ssh-agent` pour vérifier).

### Rajouter un acces ssh à un tiers

Pour rajouter les accès à un tiers, on rajoute sa clé publique dans `~/.ssh/authorized_keys`.

## Apache

Un serveur web apache est installé. Un fichier de configuration par site est créé dans `/etc/apache2/sites-available`. On active et désactive chaque site avec `sudo a2ensite <conf>` et `sudo a2dissite <conf>` suivi de `sudo service apache2 reload`.

On installe `logrotate`, on vérifie les conf dans `/etc/logrotate.d/`. `Systemd` avec des `timers` peut être utilisé à la place de `cron` (c'est le cas ici par défaut).

### Déploiement de foopgp.org

#### Particularité pour git

Les fichiers vidéos sont dans un sous-dépot et il faut utiliser [git-lfs](https://git-lfs.com/) pour récupérer les fichiers.

```bash
$ apt install git-lfs
$ git lfs install
```

#### git clone

Le site utilise [hugo](https://gohugo.io) et est sur un dépot git (en fait 3, avec le thème et les fichiers vidéos en submodule).

```bash
# Parce qu'on veut la branche "public" et uniquement elle qui n'est pas par défaut.
$ git clone --branch public --single-branch  https://codeberg.org/foopgp/foopgp-hugowebsite.git
$ git submodule update --init --recursive
```

#### hugo

On installe hugo pour "compiler" le site et obtenir la partie publique (dossier "public").

```bash
$ sudo apt install hugo
$ hugo # à la racine du site
```

### Déploiement du serveur de clés key.foopgp.org

Le serveur de clés pgp est [onak](https://www.earth.li/projectpurple/progs/onak.html) et les [cgi](https://fr.wikipedia.org/wiki/Common_Gateway_Interface) font le lien entre onak et les requêtes http.

> [Documentation officielle pour configurer apache.](https://the.earth.li/gitweb/?p=onak.git;a=blob_plain;f=doc/apache2;hb=HEAD)

### page index.html

Une page `index.html` est rajoutée comme interface web avec des formulaires qui utilisent les url et les paramètres des cgi.

### Ajout de https aux sites

Let's encrypt est utilisé pour obtenir un certificat [TLS](https://fr.wikipedia.org/wiki/Transport_Layer_Security). Les tutoriels sont nombreux et faciles à mettre en place. La subtilité ici était de s'apercevoir que l'IPv6 a été utilisé par défaut et le DNS n'était pas encore à jour en v6.

```bash
$ sudo apt install certbot python3-certbot-apache
$ sudo certbot --apache -d foopgp.org -d keys.foopgp.org
```
 Dans `/etc/apache2/sites-available` on retrouve et adapte si besoin les nouveaux sites, la version https de chaque site déjà fonctionnelle en http.

### fail2ban

```bash
$ sudo apt update
$ sudo apt install fail2ban
$ systemctl enable --now fail2ban
```

Dans `/etc/fail2ban/jail.conf` on édite `backend = systemd`.

Pour lancer maintenant et au rédémarrage : `sudo systemctl enable --now fail2ban`.

En quelques minutes on a déjà une première ip de bannie.

```bash
$ sudo fail2ban-client status
Status
|- Number of jail:	1
`- Jail list:	sshd
debian@ns3017519:/var/log$ sudo fail2ban-client status sshd
Status for the jail: sshd
|- Filter
|  |- Currently failed:	2
|  |- Total failed:	7
|  `- Journal matches:	_SYSTEMD_UNIT=sshd.service + _COMM=sshd
`- Actions
   |- Currently banned:	1
   |- Total banned:	1
   `- Banned IP list:	193.32.162.157
```

## Packages Debian

Création de packages .deb pour les outils de foopgp.

### Préambule

```bash
$ sudo apt install debmake git-buildpackage
```

Dans mon `.bashrc` :
```bash
export DEBEMAIL=piseb@mailo.com
export DEBFULLNAME='Sébastien Picardeau'
export DEB_BUILD_OPTIONS=nocheck
```

Documentation : [https://www.debian.org/doc/manuals/maint-guide/first.fr.html#dh-make](https://www.debian.org/doc/manuals/maint-guide/first.fr.html#dh-make)

### Démonstration complète avec les `bash-libs`

Préparation du workspace git :
```shell
$ mkdir demo-bash-libs
$ cd demo-bash-libs/
$ git clone ssh://git@codeberg.org/foopgp/bash-libs.git
$ cd bash-libs/
$ git checkout v0.0.2 # on veut un package de cette release
$ git switch -c debian/latest # par convention pour le nom
Basculement sur la nouvelle branche 'debian/latest'
```

```bash
# On a (pas) besoin d'une release :
$ curl https://codeberg.org/foopgp/bash-libs/archive/v0.0.2.tar.gz -o ../bash-libs.tar.gz
# en fait touch ../bash-libs.tar.gz suffit car on va passer à gbp

# On génère une conf comme point de départ (on pourrait aussi créer les fichiers directement)
$ debmake -x 1
I: set parameters
I: =================================================================
I: package_dir     = /usr/lib/python3/dist-packages
I: base_path       = /usr
I: base_lib_path   = /usr/lib/debmake
I: base_share_path = /usr/share/debmake
I: =================================================================
I: sanity check of parameters
I: pkg="bash", ver="libs", rev="1"
I: *** start packaging in "bash-libs". ***
I: provide bash_libs.orig.tar.gz for non-native Debian package
I: pwd = "/tmp/demo-bash-libs"
I: $ ln -sf bash-libs.tar.gz bash_libs.orig.tar.gz
I: pwd = "/tmp/demo-bash-libs/bash-libs"
I: parse binary package settings:
I: binary package=bash Type=bin / Arch=any M-A=foreign
I: analyze the source tree
I: build_type = make
I: scan source for copyright+license text and file extensions
I:  27 %, ext = md
I:  14 %, ext = text
I:   9 %, ext = adoc
I:   9 %, ext = yml
I:   9 %, ext = bats
I:   5 %, ext = gitattributes
I:   5 %, ext = hook
I:   5 %, ext = editorconfig
I:   5 %, ext = shellcheckrc
W: archive type exists.  Maybe non-DFSG!
I:   5 %, ext = archive
I:   5 %, ext = gitignore
I:   5 %, ext = bash
I: check_all_licenses
I: .....W: Non-UTF-8 char found, using latin-1: main.tar.gz
W: analyze_copyright: skip name="", years=9999-0
.......................
I: check_all_licenses completed for 28 files.
I: bunch_all_licenses
I: format_all_licenses
I: make debian/* template files
I: debmake -x "1" ...
I: creating => debian/control
I: creating => debian/copyright
I: substituting => /usr/share/debmake/extra0/rules
I: creating => debian/rules
I: substituting => /usr/share/debmake/extra0/changelog
I: creating => debian/changelog
I: substituting => /usr/share/debmake/extra1/watch
I: creating => debian/watch
I: substituting => /usr/share/debmake/extra1/README.Debian
I: creating => debian/README.Debian
I: substituting => /usr/share/debmake/extra1source/format
I: creating => debian/source/format
I: substituting => /usr/share/debmake/extra1tests/control
I: creating => debian/source/control
I: substituting => /usr/share/debmake/extra1upstream/metadata
I: creating => debian/upstream/metadata
I: substituting => /usr/share/debmake/extra1tests/control
I: creating => debian/tests/control
I: substituting => /usr/share/debmake/extra1patches/series
I: creating => debian/patches/series
I: substituting => /usr/share/debmake/extra1sourcex/local-options
I: creating => debian/source/local-options
I: substituting => /usr/share/debmake/extra1sourcex/options
I: creating => debian/source/options
I: substituting => /usr/share/debmake/extra1sourcex/patch-header
I: creating => debian/source/patch-header
I: run "debmake -x2" to get more template files
I: $ wrap-and-sort
```

Même avec `-x 1` on a des fichiers de configuration qu'on utilise pas. On commence par un petit nettoyage du surplus.

```bash
$ cd debian
$ rm -r tests/ upstream/ watch
$ rm -v source/{control,local-options,options,patch-header}
'source/control' supprimé
'source/local-options' supprimé
'source/options' supprimé
'source/patch-header' supprimé
$ ls source/
format # ne pas effacer
```

On édite `changelog` pour corriger le nom et la version.

```bash
$ vim changelog
$ cat changelog
bash-libs (0.0.2-1) UNRELEASED; urgency=low

  * Initial release.
...
```

On édite aussi `control`.

```bash
$ cat control
Source: bash-libs
Section: utils
Priority: optional
Maintainer: Sébastien Picardeau <piseb@mailo.com>
Build-Depends: debhelper-compat (= 13), pandoc
Standards-Version: 4.5.1
Homepage: https://foopgp.org
Rules-Requires-Root: no
Vcs-Git: https://codeberg.org/foopgp/bash-libs.git
Vcs-Browser: https://codeberg.org/foopgp/bash-libs

Package: bash-libs
Architecture: any
Depends: ${misc:Depends}, ${shlibs:Depends}
Description: TODO

```

Le fichier `copyright` va demander un petit travail pour être correct mais ce n'est pas obligatoire pour le moment (voir le dépôt git).

On voit tout de suite un avantage d'avoir une branch dédiée au packaging. Le `Makefile` du projet est configuré pour s'installer dans `/usr/local`, on veut que notre package .deb s'installe désormais dans `/usr`. On édite donc `rules` ainsi :

```bash
$ vim rules
$ cat rules
	dh $@

override_dh_auto_install:
	dh_auto_install -- prefix=/usr
```

Le `README.Debian` sera à éditer.

On passe a une rapide configuration pour `gbp` (git-buildpackage), on précise juste les branch et tag.

```bash
$ vim gbp.conf # toujours dans bash-libs/debian
seb@PC1:~/demo-bash-libs/bash-libs/debian$ cat gbp.conf
[DEFAULT]
upstream-branch = main
upstream-tag = v%(version)s
debian-branch = debian/latest
debian-tag = debian/latest/%(version)s
```

On retourne dans `bash-libs` : `$ cd ..` .

Petit nettoyage du `debmake` : `$ rm ../bash_libs.orig.tar.gz ../bash-libs.tar.gz` .

Build :

```shell
$ curl https://codeberg.org/foopgp/bash-libs/archive/v0.0.2.tar.gz -o ../bash-libs_0.0.2.orig.tar.gz
$ gbp buildpackage --git-ignore-new # on a pas commit
```

Un minimum est de vérifier le contenu du .deb créé : `$ dpkg -c ../bash-libs_0.0.2-1_amd64.deb`

On veut commit notre configuration de build mais pas que les fichiers créés pour le build soient commit, donc on rajoute dans `.gitignore` :

```bash
debian/*.debhelper
debian/debhelper-build-stamp
debian/bash-libs.debhelper.log
debian/bash-libs.substvars
debian/bash-libs/
debian/files
```

Pour installer :

```bash
$ sudo apt install ./bash-libs_0.0.2-1_amd64.deb
$ apt list --installed bash-libs
En train de lister... Fait
bash-libs/now 0.0.2-1 amd64  [installé, local]

```

Dès qu'on est satisfait on peut commit et push.

Dépôt git : [https://codeberg.org/foopgp/bash-libs/src/branch/debian/latest](https://codeberg.org/foopgp/bash-libs/src/branch/debian/latest).

Documentation :

- [https://www.debian.org/doc/manuals/debmake-doc/ch05.en.html#step-debmake](https://www.debian.org/doc/manuals/debmake-doc/ch05.en.html#step-debmake)

- [https://honk.sigxcpu.org/projects/git-buildpackage/manual-html/](https://honk.sigxcpu.org/projects/git-buildpackage/manual-html/)

- [https://www.debian.org/doc/manuals/maint-guide/modify.fr.html](https://www.debian.org/doc/manuals/maint-guide/modify.fr.html)

### pgpid

Pour `pgpig` une manipulation complémentaire est nécessaire.

#### démo accélérée

```bash
$ mkdir demo-pgpid && cd demo-pgpid
$ git clone https://codeberg.org/foopgp/pgpid.git
$ mv pgpid pgpid-0.0.1
$ curl https://codeberg.org/foopgp/pgpid/archive/main.tar.gz -o pgpid_0.0.1.orig.tar.gz
$ cd pgpid-0.0.1/
$ git tag v0.0.1 # car pas dans le dépôt
$ git switch -c debian/latest
$ debmake -x1
$ rm -rv debian/{tests,upstream,watch} debian/source/{control,local-options,options,patch-header}
$ vim debian/control
$ cat debian/control
Source: pgpid
Section: utils
Priority: optional
Maintainer: Sébastien Picardeau <piseb@mailo.com>
Build-Depends: debhelper-compat (= 13)
Standards-Version: 4.5.1
Homepage: https://foopgp.org
Rules-Requires-Root: no
Vcs-Git: https://codeberg.org/foopgp/pgpid.git
Vcs-Browser: https://codeberg.org/foopgp/pgpid

Package: pgpid
Architecture: any
Depends: ${misc:Depends}, ${shlibs:Depends}, bash-libs, facedetect, graphicsmagick, tesseract-ocr, qrencode, gpg-wks-client, cups-client, zbar-tools, scdaemon, pandoc, texlive-extra-utils, xxd, libgfshare-bin, cups-bsd
Description: TODO

$ mv ../pgpid-0.0.1/ ../pgpid # j'ai bien précisé en accélérée
$ gbp buildpackage --git-ignore-new
```

#### premier problème

On constate que le .deb ne contient pas `bin/` ni `data/`. (Ils sont pas compilés mais à copier.)

```bash
$ dpkg -c ../pgpid_0.0.1-1_amd64.deb
drwxr-xr-x root/root         0 2025-05-27 16:02 ./
drwxr-xr-x root/root         0 2025-05-27 16:02 ./usr/
drwxr-xr-x root/root         0 2025-05-27 16:02 ./usr/share/
drwxr-xr-x root/root         0 2025-05-27 16:02 ./usr/share/doc/
drwxr-xr-x root/root         0 2025-05-27 16:02 ./usr/share/doc/pgpid/
-rw-r--r-- root/root       230 2025-05-27 16:02 ./usr/share/doc/pgpid/README.Debian
-rw-r--r-- root/root       190 2025-05-27 16:02 ./usr/share/doc/pgpid/changelog.Debian.gz
-rw-r--r-- root/root      5251 2025-05-27 16:02 ./usr/share/doc/pgpid/copyright
```

On rajoute dans notre configuration les deux dossiers à copier et leur destination.

```bash
$ vim debian/install
$ cat debian/install
bin/ /usr/
data/ /usr/share/pgpid/
```

Nouvel essai :

```bash
$ gbp buildpackage --git-ignore-new
$ dpkg -c ../pgpid_0.0.1-1_amd64.deb
drwxr-xr-x root/root         0 2025-05-27 16:02 ./
drwxr-xr-x root/root         0 2025-05-27 16:02 ./usr/
drwxr-xr-x root/root         0 2025-05-27 16:02 ./usr/bin/
-rwxr-xr-x root/root     25769 2025-05-27 15:47 ./usr/bin/pgpid-gen
-rwxr-xr-x root/root     13005 2025-05-27 15:47 ./usr/bin/pgpid-qrscan
drwxr-xr-x root/root         0 2025-05-27 16:02 ./usr/share/
drwxr-xr-x root/root         0 2025-05-27 16:02 ./usr/share/doc/
drwxr-xr-x root/root         0 2025-05-27 16:02 ./usr/share/doc/pgpid/
-rw-r--r-- root/root       230 2025-05-27 16:02 ./usr/share/doc/pgpid/README.Debian
-rw-r--r-- root/root       190 2025-05-27 16:02 ./usr/share/doc/pgpid/changelog.Debian.gz
-rw-r--r-- root/root      5251 2025-05-27 16:02 ./usr/share/doc/pgpid/copyright
drwxr-xr-x root/root         0 2025-05-27 16:02 ./usr/share/pgpid/
drwxr-xr-x root/root         0 2025-05-27 15:47 ./usr/share/pgpid/data/
-rw-r--r-- root/root    114860 2025-05-27 15:47 ./usr/share/pgpid/data/country_centroids_az8.csv
-rw-r--r-- root/root      6886 2025-05-27 15:47 ./usr/share/pgpid/data/geolist_centroid.txt
-rw-r--r-- root/root   1452847 2025-05-27 15:47 ./usr/share/pgpid/data/mrz.traineddata
-rw-r--r-- root/root  11396382 2025-05-27 15:47 ./usr/share/pgpid/data/mrz_best.traineddata
-rw-r--r-- root/root     40641 2025-05-27 15:47 ./usr/share/pgpid/data/tesseract.parameters.ref
lrwxrwxrwx root/root         0 2025-05-27 16:02 ./usr/bin/bl-interactive -> ../bash-libs/bin/bl-interactive
lrwxrwxrwx root/root         0 2025-05-27 16:02 ./usr/bin/bl-json -> ../bash-libs/bin/bl-json
lrwxrwxrwx root/root         0 2025-05-27 16:02 ./usr/bin/bl-log -> ../bash-libs/bin/bl-log
lrwxrwxrwx root/root         0 2025-05-27 16:02 ./usr/bin/bl-security -> ../bash-libs/bin/bl-security
lrwxrwxrwx root/root         0 2025-05-27 16:02 ./usr/bin/data -> ../data
```

Pour `bin/` ça semble correct, mais maintenant on a des liens qui ne fonctionneront pas.

#### clean

Pour retirer ces fichiers :

```bash
$ vim debian/clean
$ cat debian/clean
bin/bl-interactive
bin/bl-json
bin/bl-log
bin/bl-security
bin/data
```

Je préfère inclure le dossier `bin` en entier et exclure une sélection. Je trouve ça plus propre en cas de nouveaux fichiers à l'avenir.

De nouveau :

```bash
$ gbp buildpackage --git-ignore-new
$ dpkg -c ../pgpid_0.0.1-1_amd64.deb
drwxr-xr-x root/root         0 2025-05-27 16:02 ./
drwxr-xr-x root/root         0 2025-05-27 16:02 ./usr/
drwxr-xr-x root/root         0 2025-05-27 16:02 ./usr/bin/
-rwxr-xr-x root/root     25769 2025-05-27 15:47 ./usr/bin/pgpid-gen
-rwxr-xr-x root/root     13005 2025-05-27 15:47 ./usr/bin/pgpid-qrscan
drwxr-xr-x root/root         0 2025-05-27 16:02 ./usr/share/
drwxr-xr-x root/root         0 2025-05-27 16:02 ./usr/share/doc/
drwxr-xr-x root/root         0 2025-05-27 16:02 ./usr/share/doc/pgpid/
-rw-r--r-- root/root       230 2025-05-27 16:02 ./usr/share/doc/pgpid/README.Debian
-rw-r--r-- root/root       190 2025-05-27 16:02 ./usr/share/doc/pgpid/changelog.Debian.gz
-rw-r--r-- root/root      5251 2025-05-27 16:02 ./usr/share/doc/pgpid/copyright
drwxr-xr-x root/root         0 2025-05-27 16:02 ./usr/share/pgpid/
drwxr-xr-x root/root         0 2025-05-27 15:47 ./usr/share/pgpid/data/
-rw-r--r-- root/root    114860 2025-05-27 15:47 ./usr/share/pgpid/data/country_centroids_az8.csv
-rw-r--r-- root/root      6886 2025-05-27 15:47 ./usr/share/pgpid/data/geolist_centroid.txt
-rw-r--r-- root/root   1452847 2025-05-27 15:47 ./usr/share/pgpid/data/mrz.traineddata
-rw-r--r-- root/root  11396382 2025-05-27 15:47 ./usr/share/pgpid/data/mrz_best.traineddata
-rw-r--r-- root/root     40641 2025-05-27 15:47 ./usr/share/pgpid/data/tesseract.parameters.ref
```

#### happy end

Mais dis-moi Jammy ça roule ! Non, et voilà pourquoi :

```bash
$ grep '$(dirname' bin/*
bin/pgpid-gen:TESSDATADIR="$(dirname "$0")/data/"
bin/pgpid-gen:GEOLIST_CENTROID="$(dirname "$0")/data/geolist_centroid.txt"
bin/pgpid-gen:. "$(dirname "$BASH_SOURCE")"/bl-log --no-act --log-level "$LOGLEVEL" --log-exit "$LOGEXITPRIO"
bin/pgpid-gen:. "$(dirname "$BASH_SOURCE")"/bl-interactive --
bin/pgpid-gen:. "$(dirname "$BASH_SOURCE")"/bl-security --
bin/pgpid-gen:. "$(dirname "$BASH_SOURCE")"/bl-json --
bin/pgpid-qrscan:. "$(dirname "$BASH_SOURCE")"/bl-log --no-act --log-level "$LOGLEVEL" --log-exit "$LOGEXITPRIO"
bin/pgpid-qrscan:. "$(dirname "$BASH_SOURCE")"/bl-interactive --
bin/pgpid-qrscan:. "$(dirname "$BASH_SOURCE")"/bl-security --
```

Il faut remplacer ces chemins relatifs par les futurs chemins. On va patcher avec les outils dédiés à ce cas d'usage.

#### Ma configuration

Dans mon `~/.bashrc` :

```bash
alias dquilt="quilt --quiltrc=${HOME}/.quiltrc-dpkg"
. /usr/share/bash-completion/completions/quilt
complete -F _quilt_completion -o filenames dquilt
```

Dans `~/.quiltrc-dpkg` :

```bash
d=. ; while [ ! -d $d/debian -a $(readlink -e $d) != / ]; do d=$d/..; done
if [ -d $d/debian ] && [ -z $QUILT_PATCHES ]; then
    # if in Debian packaging tree with unset $QUILT_PATCHES
    QUILT_PATCHES="debian/patches"
    QUILT_PATCH_OPTS="--reject-format=unified"
    QUILT_DIFF_ARGS="-p ab --no-timestamps --no-index --color=auto"
    QUILT_REFRESH_ARGS="-p ab --no-timestamps --no-index"
    QUILT_COLORS="diff_hdr=1;32:diff_add=1;34:diff_rem=1;31:diff_hunk=1;33:diff_ctx=35:diff_cctx=33"
    if ! [ -d $d/debian/patches ]; then mkdir $d/debian/patches; fi
fi
```

```bash
$ sudo apt install quilt
$ source ~/.bashrc
```

#### Premier patch pour `/data/`

Avant :

```bash
$ grep /data/ bin/*
../bin/pgpid-gen:TESSDATADIR="$(dirname "$0")/data/"
../bin/pgpid-gen:GEOLIST_CENTROID="$(dirname "$0")/data/geolist_centroid.txt"
```

dquilt :

```bash
$ dquilt new fix-pgpid-gen-data-path.patch
$ dquilt add bin/pgpid-gen
$ sed -i -e 's/$(dirname "$0")/\/usr\/share/g' bin/pgpid-gen
$ grep /data/ bin/* # après
bin/pgpid-gen:TESSDATADIR="/usr/share/data/"
bin/pgpid-gen:GEOLIST_CENTROID="/usr/share/data/geolist_centroid.txt"
$ dquilt refresh
$ dequil header -e
```

Le patch créé :

```bash
$ cat debian/patches/fix-pgpid-gen-data-path.patch
--- a/bin/pgpid-gen
+++ b/bin/pgpid-gen
@@ -50,8 +50,8 @@

 FACE_MARGIN_WIDTH="25/100"
 FACE_MARGIN_HEIGHT="50/100"
-TESSDATADIR="$(dirname "$0")/data/"
-GEOLIST_CENTROID="$(dirname "$0")/data/geolist_centroid.txt"
+TESSDATADIR="/usr/share/data/"
+GEOLIST_CENTROID="/usr/share/data/geolist_centroid.txt"
 ONLYUDID=false

 ### Default option values ###
```

On peut revenir avant patch, il sera appliqué au build automatiquement.

```bash
$ dquilt pop -a
Retrait de fix-pgpid-gen-data-path.patch
Restoring bin/pgpid-gen

Aucun patch n'est appliqué
```

#### Deuxième patch, les bash-libs et les `bl-`

Avant :

```bash
$ grep bl- bin/*
../bin/pgpid-gen:. "$(dirname "$BASH_SOURCE")"/bl-log --no-act --log-level "$LOGLEVEL" --log-exit "$LOGEXITPRIO"
../bin/pgpid-gen:. "$(dirname "$BASH_SOURCE")"/bl-interactive --
../bin/pgpid-gen:. "$(dirname "$BASH_SOURCE")"/bl-security --
../bin/pgpid-gen:. "$(dirname "$BASH_SOURCE")"/bl-json --
../bin/pgpid-qrscan:. "$(dirname "$BASH_SOURCE")"/bl-log --no-act --log-level "$LOGLEVEL" --log-exit "$LOGEXITPRIO"
../bin/pgpid-qrscan:. "$(dirname "$BASH_SOURCE")"/bl-interactive --
../bin/pgpid-qrscan:. "$(dirname "$BASH_SOURCE")"/bl-security --
```

Nouveau patch :

```bash
$ dquilt new fix-bash-libs-paths.patch
Le patch fix-bash-libs-paths.patch est maintenant au sommet
$ dquilt add bin/pgpid-gen bin/pgpid-qrscan
Le fichier bin/pgpid-gen a été ajouté au patch fix-bash-libs-paths.patch
Le fichier bin/pgpid-qrscan a été ajouté au patch fix-bash-libs-paths.patch
$ sed -i -e 's/"$(dirname "$BASH_SOURCE")"/\/usr\/bin/g' bin/pgpid-gen bin/pgpid-qrscan
```

Après :

```bash
$ grep bl- bin/*
bin/pgpid-gen:. /usr/bin/bl-log --no-act --log-level "$LOGLEVEL" --log-exit "$LOGEXITPRIO"
bin/pgpid-gen:. /usr/bin/bl-interactive --
bin/pgpid-gen:. /usr/bin/bl-security --
bin/pgpid-gen:. /usr/bin/bl-json --
bin/pgpid-qrscan:. /usr/bin/bl-log --no-act --log-level "$LOGLEVEL" --log-exit "$LOGEXITPRIO"
bin/pgpid-qrscan:. /usr/bin/bl-interactive --
bin/pgpid-qrscan:. /usr/bin/bl-security --
```

Enregistrer le patch :

```bash
$ dquilt refresh
Patch fix-bash-libs-paths.patch rafraîchi
$ dquilt header -e
```

Le patch :

```bash
$ cat debian/patches/fix-bash-libs-paths.patch
--- a/bin/pgpid-gen
+++ b/bin/pgpid-gen
@@ -136,10 +136,10 @@

 ### functions ###

-. "$(dirname "$BASH_SOURCE")"/bl-log --no-act --log-level "$LOGLEVEL" --log-exit "$LOGEXITPRIO"
-. "$(dirname "$BASH_SOURCE")"/bl-interactive --
-. "$(dirname "$BASH_SOURCE")"/bl-security --
-. "$(dirname "$BASH_SOURCE")"/bl-json --
+. /usr/bin/bl-log --no-act --log-level "$LOGLEVEL" --log-exit "$LOGEXITPRIO"
+. /usr/bin/bl-interactive --
+. /usr/bin/bl-security --
+. /usr/bin/bl-json --

 # Implementation of ICAO doc 9303 part 3 (Specifications Common to all MRTDs - 4.9)
 icao9303_mrz_checkdigit() {
--- a/bin/pgpid-qrscan
+++ b/bin/pgpid-qrscan
@@ -107,9 +107,9 @@

 ### functions ###

-. "$(dirname "$BASH_SOURCE")"/bl-log --no-act --log-level "$LOGLEVEL" --log-exit "$LOGEXITPRIO"
-. "$(dirname "$BASH_SOURCE")"/bl-interactive --
-. "$(dirname "$BASH_SOURCE")"/bl-security --
+. /usr/bin/bl-log --no-act --log-level "$LOGLEVEL" --log-exit "$LOGEXITPRIO"
+. /usr/bin/bl-interactive --
+. /usr/bin/bl-security --

 # Do nothing else if sourced
 [[ "$BASH_SOURCE" == "$0" ]] || return 0
```

Build final : `$ gbp buildpackage --git-ignore-new` .
On peut désormais commit, push, installer et utiliser le résultat final.  Dépôt git : [https://codeberg.org/foopgp/pgpid/src/branch/debian/latest](https://codeberg.org/foopgp/pgpid/src/branch/debian/latest).

Documentation :

- [https://www.debian.org/doc/manuals/maint-guide/modify.fr.html#quiltrc](https://www.debian.org/doc/manuals/maint-guide/modify.fr.html#quiltrc)

## iso Debian personnalisée

Le projet est de créer une iso Debian personnalisée avec un environnement pré-configuré et avec les outils foopgp.

Créer une base fonctionnelle se fait en quelques lignes.

```bash
$ sudo apt install live-build
$ mkdir demo-debian-live && cd demo-debian-live
$ lb config # initialise une configuration
$ cp -v /usr/share/doc/live-build/examples/auto/* auto/
'/usr/share/doc/live-build/examples/auto/build' -> 'auto/build'
'/usr/share/doc/live-build/examples/auto/clean' -> 'auto/clean'
'/usr/share/doc/live-build/examples/auto/config' -> 'auto/config'
```

Une configuration minimale fonctionnelle :

```bash
$ cat auto/config
#!/bin/sh

# doc:
# man lb config

set -e

lb config noauto \
--archive-areas "main contrib non-free-firmware" \
--debian-installer live \
--debian-installer-distribution bookworm \
--debootstrap-options "--include=apt-transport-https,ca-certificates,openssl" \
--distribution bookworm \

	"${@}"
```

```bash
$ cat config/package-lists/demo.list.chroot
task-xfce-desktop
```

Avec les dépendances tout le nécessaire est installé.

Pour build l'iso :

```bash
$ sudo lb clean && lb config && time sudo lb build
P: Build completed successfully
$ ls *iso
live-image-amd64.hybrid.iso
```

Pour retrouver la configuration étape par étape voir les commits : [https://codeberg.org/foopgp/debian-live-foopgp/commits/branch/main](https://codeberg.org/foopgp/debian-live-foopgp/commits/branch/main)

Documentation :

- [https://live-team.pages.debian.net/live-manual/html/live-manual/index.fr.html](https://live-team.pages.debian.net/live-manual/html/live-manual/index.fr.html)

- [file:///usr/share/doc/live-manual/html/live-manual.fr.html](file:///usr/share/doc/live-manual/html/live-manual.fr.html)

## Signer ses commit

On signe avec sa clé privée et un tiers peut vérifier une signature avec la clé publique correspondante.

### Configuration dépôt distant

On doit donc renseigner sa clé publique dans la configuration du dépot git, pour [codeberg.org](https://codeberg.org) : `configuration > Clés SSH / GPG`.

Pour obtenir sa clé publique en ASCII (`--armor`) :

```bash
$ gpg --armor --export piseb@mailo.com
-----BEGIN PGP PUBLIC KEY BLOCK-----
mDMEaBhvbRYJKwYBBAHaRw8BAQdAptz0xzoRLmzYZcNvQZ/bbT7aPIK13xNkJiGv
...
-----END PGP PUBLIC KEY BLOCK-----
```

Un challenge est demandé pour vérifier qu'on possède la clé privée correspondante.

### Configuration locale

Pour automatiser les signatures, dans `~/.gitconfig` :

```shell
...
[user]
	email = piseb@mailo.com
	name = piseb
	signingKey = 2110EF0D733D76275412AD502C364630A2436D7E
[commit]
	gpgSign = true
```

Désormais une signature est rajoutée pour les commits et les tags, et encore mieux avec la clé privée protégée par smart card.

Exemple :

```bash
bash-libs$ git log --show-signature -1
commit 95310bb37d6880e6c1e8e104bcc39ef0645f54f7 (HEAD -> debian/latest, origin/debian/latest)
gpg: Signature faite le lun. 19 mai 2025 14:58:11 CEST
gpg:                avec la clef EDDSA 2110EF0D733D76275412AD502C364630A2436D7E
gpg: Bonne signature de « piseb <piseb@mailo.com> (udid4=D9SrwuxesuMU90PM8xypxQe_48.78_002.19) » [ultime]
gpg:                 alias « [jpeg image of size 5259] » [ultime]
Author: piseb <piseb@mailo.com>
Date:   Mon May 19 14:58:11 2025 +0200

    [debian] fix copyright
```

Pour que la signature soit validée en local, la clé publique doit être importée si elle n'est pas déjà présente.

Documentation :

- [https://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work](https://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work)
