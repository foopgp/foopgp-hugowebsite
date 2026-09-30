---
Title:   "Utilisation (avancée) de foodjis comme agent SSH"
Date:    2026-09-30T12:00:00+02:00
Tags:    [ "foodjis", "android", "ssh", "termux", "git", "pgp-id", "openpgp", "nfc", "yubikey", "nitrokey" ]
categories: [ "News" ]
draft: true
author: [ "Mnêmê", "Jean-Jacques Brucker" ]
description: "Depuis la version 1.2, votre clé de sécurité ouvre aussi vos sessions SSH depuis le téléphone : ssh, scp et git s'authentifient avec elle, sans qu'aucune clé privée ne soit copiée sur l'appareil."
lang: fr
bg_image: "images/backgrounds/party-event.jpg"
image: "images/logos/foodjis_logo_banner.png"
type: "post"
---

***Note :*** *Cet article s'adresse à qui se sert déjà de SSH. Pour découvrir foodjis sur Android, commencez par [l'article qui le présente](/fr/blog/2026-09-24-foodjis-android/).*

**Votre clé de sécurité ouvre désormais vos sessions SSH depuis le téléphone.**
Depuis la version 1.2, foodjis peut servir d'*agent SSH* : `ssh`, `scp` et
`git`, dans l'application [Termux](https://termux.dev/), s'authentifient avec
la clé d'authentification de votre identité PGP ID — celle que porte votre
YubiKey ou votre NitroKey. La clé privée ne quitte jamais la clé de sécurité :
le téléphone ne fait que lui transmettre la question du serveur, et vous
présentez la clé.

{{< video
  src="/largefiles/videos/2026/2026-09-30-foodjis-ssh-agent.mp4"
  type="video/mp4"
>}}

## Pourquoi

D'ordinaire, ce qui vous fait reconnaître d'un serveur SSH est une clé privée
rangée dans un fichier de l'appareil : qui copie ce fichier peut se connecter à
votre place, et un téléphone se perd, se vole ou se prête. Ici, il n'y a pas de
fichier à copier. La preuve est calculée par la clé de sécurité, au moment où
vous la présentez, et la même clé sert sur l'ordinateur comme sur le téléphone.

## Ce qu'il faut

- foodjis **1.2** ou plus récent, et une identité PGP ID sur une clé de
  sécurité ;
- l'application **Termux**, depuis F-Droid ou Google Play ;
- sur chaque serveur, la ligne de votre clé publique dans
  `~/.ssh/authorized_keys` — foodjis vous la donne à copier.

## Mise en place

1. Dans la **Configuration** de foodjis, activez « Permettre à Android
   d'utiliser vos clés de sécurité pour l'authentification SSH », puis ouvrez
   **En savoir plus**.
2. Copiez la ligne de votre clé publique et ajoutez-la sur vos serveurs, comme
   n'importe quelle clé SSH. Elle se termine par votre EID et l'empreinte de
   la clé OpenPGP d'où elle vient : vous saurez toujours d'où elle sort.
3. Toujours sur cette page, **Installer sshwfoodjis dans Termux**. foodjis
   confie à Termux un petit paquet, sans passer par le réseau, et place la
   commande d'installation dans le presse-papier : ouvrez le répertoire que
   Termux propose, et collez.
4. Dans Termux, une fois pour toutes :

   ```
   sshwfoodjis --install
   ```

   `ssh`, `scp` et `git` demandent désormais la clé à foodjis, sans autre
   réglage. `sshwfoodjis --uninstall` défait cette configuration, et
   désinstaller le paquet la défait aussi.

## À l'usage

```
ssh moi@mon-serveur.org
git clone moi@mon-serveur.org:mon-depot.git
```

À chaque connexion, foodjis propose vos clés au serveur et le dit d'un mot
bref (« Clés de foodjis proposées pour l'authentification SSH ») ; le clavier
de Termux se referme un instant, le temps de cet échange. Un serveur qui ne
connaît pas votre clé passe à ses autres méthodes (« … non utilisées par le
serveur SSH »), sans rien vous demander. Quand il l'accepte, foodjis apparaît
par-dessus Termux, qui reste visible derrière : votre code PIN d'abord — en
précisant
quelle clé de sécurité est attendue —, puis « Présentez votre clé de
sécurité ». Une coche, « Vous pouvez éloigner la clé de sécurité », et la
session s'ouvre.

Le code PIN reste en mémoire le temps que vous avez choisi dans la
Configuration (15 minutes par défaut) : les connexions suivantes ne demandent
que la clé. Un `scp` ou un `git clone` ne demandent pas plus qu'une session :
nous avons cloné en SSH depuis nos serveurs, depuis Codeberg et depuis GitHub.

Pour voir ce qui se passe, l'option `-v` de `ssh` suffit : `sshwfoodjis` y
ajoute sa version et celle de foodjis qui répond.

## Ce qui reste à venir

- **Signer ses commits** avec la même clé.
- Aujourd'hui, `sshwfoodjis` sert d'intermédiaire : `ssh` cherche son agent
  derrière un fichier spécial du répertoire de Termux, qu'une autre
  application ne peut pas créer, et foodjis ne peut répondre que sur le réseau
  interne du téléphone. Nous proposerons à Termux de savoir lui-même joindre
  un agent SSH fourni par une autre application : `sshwfoodjis` ne serait plus
  nécessaire.
- Le tout est libre (GPL-3.0) ; `sshwfoodjis` vit dans le dépôt
  [sshwgpg](https://codeberg.org/foopgp/sshwgpg).
