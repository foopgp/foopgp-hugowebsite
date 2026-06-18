---
title: "Djibian"
lang: fr
draft: false
bg_image: "images/backgrounds/party-event.jpg"
description: "Djibian : le système qui vous respecte — installation et premiers pas."
image: "images/logos/djibian_square_logo.png"
tags: [ "djibian", "Debian", "Ubuntu", "OpenPGP ID" ]
categories: [ "solution" ]
type: "post"
---

**[Djibian](/fr/blog/2025-09-12-welcome-djibian/) est fait pour vous.**

C'est le système d'exploitation que foopgp assemble, sur la base de [Debian](https://www.debian.org/index.fr.html), pour vous redonner le contrôle de votre vie numérique : une [identité OpenPGP](/fr/solutions/openpgp-id/) portée par une [clé physique](/fr/solutions/offer-security-keys/) (YubiKey ou NitroKey), des [courriels chiffrés](/fr/solutions/theme-email/), une [authentification](/fr/solutions/theme-authentication/) qui ne dépend de personne d'autre que vous, et la possibilité, pour les adhérents, d'utiliser les [djis](/fr/solutions/theme-currency/) comme [monnaie d'échange](/fr/about/join/).

Djibian a aussi été pensé pour fonctionner aussi bien sur des machines récentes que sur des *ordinosaures* — c'est un excellent moyen pour prolonger la durée de vie de vos ordinateurs.

{{< video
  src="/videos/2026/2026-02-06-djibian.mp4"
  type="video/mp4"
  sub_fr="/videos/2026/2026-02-06-djibian.fr.vtt"
  sub_en="/videos/2026/2026-02-06-djibian.en.vtt"
>}}

*Visite guidée en vidéo (≈ 5 min). [Article associé](/fr/blog/2026-02-10-djibian-tour/).*

---

## Voie recommandée — installer Djibian sur un ordinateur

### 1. Sauvegarder vos données existantes

⚠️ **L'installateur Djibian formate tout le disque** de la machine cible. Si elle contient des données auxquelles vous tenez (photos, documents, contacts, marque-pages…), **copiez-les sur un disque externe avant de continuer**.

Dans le doute, prenez une image complète de votre disque (`Clonezilla` fait ça très bien) ; vous pourrez en extraire ce qu'il faut plus tard.

### 2. Télécharger l'ISO Djibian

> <http://iso.foopgp.org/djibian/latest>

Comptez 6 à 7 Go.

### 3. Préparer une clé USB d'installation

Servez-vous de votre outil habituel — **[Ventoy](https://www.ventoy.net/)**, **[balenaEtcher](https://etcher.balena.io/)**, **[Rufus](https://rufus.ie/fr/)** (Windows) ou la ligne de commande `dd` pour les plus aguerris — pour graver l'ISO sur une clé USB d'au moins 8 Go.

Avec Ventoy, vous gardez la possibilité d'installer plusieurs ISO sur la même clé (très pratique pour gérer différentes versions).

### 4. Démarrer sur la clé, essayer, installer

Branchez la clé, redémarrez la machine, et au logo du constructeur appuyez sur la touche du menu de boot (souvent `F2`, `F12` ou `Esc`).

Un menu d'installation apparaît. Appuyer sur `Entrée` pour **« Installer Djibian »**, puis encore sur `Entrée` pour choisir **« Entièrement automatisé »**, puis `FlècheBas` (`🡫`) pour valider le nettoyage complet du disque dur, puis une dernière fois sur `Entrée` : l'installation est entièrement autonome, elle prend de 15 à 45 minutes, suivant la rapidité du disque dur.

### 5. Premier démarrage : laissez-vous porter

L'utilisateur par défaut est **`unknow`** et son mot de passe est **`foopgp`**.

Au premier redémarrage sur votre nouveau Djibian, l'application **`djibian-onboarding`** se lance toute seule. Elle vous accompagne pas à pas — **sans aucune ligne de commande à saisir** — pour :

- générer votre **[identité numérique OpenPGP](/fr/solutions/openpgp-id/)** (des clés de cryptographie asymétrique sont alors réparties et imprimées sur 5 feuilles différentes) ;
- scanner et charger les secrets correspondants sur votre **clé physique** (YubiKey ou NitroKey, [fournie gratuitement par l'asso au-delà de 6,42 Ɉ cumulés](/fr/about/join/)) ;
- vous ajouter en tant que vrai utilisateur du système, avec votre répertoire personnel configuré pour votre clé physique OpenPGP (déchiffrement et signature de courriels, authentification ssh, signature de commits git).

La vidéo ci-dessous suit un nouvel utilisateur à travers exactement cette expérience :

{{< video
  src="/videos/2026/20260126-djibian-clepgp.mp4"
  type="video/mp4"
  sub_fr="/videos/2026/sous-titre-fr-cle-pgp.vtt"
  sub_en="/videos/2026/sous-titre-en-cle-pgp.vtt"
>}}

*Note : si une icône « Attention ! » (⚠️) apparaît en bas à droite dans la barre du tableau de bord, c'est qu'il y a des mises à jour de sécurité. Cliquez sans attendre sur l'icône ⚠️ pour les lancer.*

*Article associé : [« Djibian passe en prod ! »](/fr/blog/2026-01-19-djibian-release/).*

---

## Voie alternative — garder votre Linux actuel, ajouter nos outils

Vous tenez à votre Debian (≥ 13) ou Ubuntu (≥ 24.04). Vous pouvez activer notre dépôt et n'installer que les paquets qui vous intéressent.

### Activer le dépôt foopgp

```bash
gpg --keyserver keys.foopgp.org --recv-keys 2C364630A2436D7E FE1349E747CF1896
gpg --export 2C364630A2436D7E FE1349E747CF1896 | sudo tee /usr/local/share/foopgp-archive-keyring.pgp > /dev/null

cat <<EOF | sudo tee /etc/apt/sources.list.d/foopgp.sources
Types: deb
URIs: http://djibian.foopgp.org/debs/
Suites: ./
Components:
Signed-By: /usr/local/share/foopgp-archive-keyring.pgp
EOF

sudo apt update
```

### Trois paquets, et vous y êtes

```bash
sudo apt install djibian-gpgconfig djibian-onboarding pgpid
```

- **`djibian-onboarding`** : la même application graphique qu'à l'étape 5 ci-dessus. Lancez-la après l'installation, et laissez-vous guider. C'est la voie la plus douce.
- **`djibian-gpgconfig`** : les réglages OpenPGP qui rendent l'usage d'une clé physique fluide au quotidien (cache PIN raisonnable, paramètres de carte, choix du serveur de clés).
- **`pgpid`** : la version en ligne de commande, pour ceux qui préfèrent. Deux commandes en tout et pour tout :

  ```bash
  pgpid-gen      # génère votre identité + N parts de récupération (QR codes)
  pgpid-qrscan   # scanne ces QR codes et charge le tout dans votre clé physique
  ```

  C'est *aussi* simple que ça.

---

## Aller plus loin

- 🎓 **[Atelier Djibian + OpenPGP](/fr/course/djibian-openpgp/)** — 4 heures en présentiel, gratuit. On démarre d'un Djibian fraîchement installé, on génère votre identité, on configure votre clé physique, on vérifie ensemble que tout signe / déchiffre / s'authentifie. Vous repartez avec une chaîne complète opérationnelle. [Voir les prochaines sessions.](/fr/event/)

- 💬 **Démonstration : un courriel chiffré, de bout en bout.**

{{< video
  src="/videos/2026/20260123-djibian-mail-chiffre.mp4"
  type="video/mp4"
  sub_fr="/videos/2026/sous-titre-fr-mail-chiffre.vtt"
  sub_en="/videos/2026/sous-titre-en-mail-chiffre.vtt"
>}}

*Voir aussi : [Courriel sécurisé OpenPGP](/fr/solutions/theme-email/).*

- 🔐 **[Une seule clé physique pour toutes les machines d'Internet](/fr/blog/2026-05-11-djibian-agentforwarding/)** — `sshwgpg`, livré dans nos paquets, vous permet de rebondir en ssh sur n'importe quelle machine sans copier la moindre clé privée.

- 📬 **[Nous écrire](/fr/contact/)** — pour rejoindre les listes de diffusion, poser une question, ou venir nous rencontrer à un atelier.

***Bienvenue chez vous : *notre* nouveau *monde* !*** 🌍

---

Si vous avez des améliorations ou corrections à proposer, vous pouvez contribuer directement sur
[Codeberg](https://codeberg.org/foopgp/foopgp-hugowebsite/_edit/test/content/french/solutions/djibian.md).

