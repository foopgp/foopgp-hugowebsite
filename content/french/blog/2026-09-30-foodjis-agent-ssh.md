---
Title:   "Utilisation (avancée) de foodjis comme agent SSH pour Android"
Date:    2026-10-01T18:00:00+02:00
Tags:    [ "foodjis", "android", "ssh", "termux", "git", "pgp-id", "openpgp", "nfc", "yubikey", "nitrokey" ]
categories: [ "News" ]
draft: true
author: [ "Mnêmê", "Jean-Jacques Brucker" ]
description: "Depuis la version 1.3, votre clé de sécurité ouvre aussi vos sessions SSH depuis le téléphone : ssh, scp et git s'authentifient avec elle, sans qu'aucune clé privée ne soit copiée sur l'appareil."
lang: fr
bg_image: "images/backgrounds/party-event.jpg"
image: "images/logos/foodjis_logo_banner.png"
type: "post"
---

***Note :*** *Cet article s'adresse à qui se sert déjà de SSH. Pour découvrir foodjis sur Android, commencez par [l'article qui le présente](/fr/blog/2026-09-24-foodjis-android/).*

**Votre clé de sécurité ouvre désormais vos sessions SSH depuis le téléphone.**
Depuis la version 1.3, foodjis peut servir d'*agent SSH* pour les autres applications
Android. Ainsi`ssh`, `scp` ou
`git`, dans l'application [Termux](https://termux.dev/), s'authentifient avec
la clé d'authentification de votre identité PGP ID — celle que porte et sécurise votre
clé physique, YubiKey ou NitroKey.

Démonstration, à partir de clé de sécurité configuré avec foodjis (PGP ID) :
{{< video
  src="/largefiles/videos/2026/2026-10-01-foodjis-ssh-agent-fr.mp4"
  type="video/mp4"
>}}

## Pourquoi

D'ordinaire, ce qui vous fait reconnaître d'un serveur SSH est une clé privée
rangée dans un fichier de l'appareil : qui copie ce fichier peut se connecter à
votre place, et le téléphone n'est pas un coffre-fort numérique. De nombreuses personnes,
à commencer par les ingénieurs qui l'ont conçu, en passant par des hackers qui exploitent discrètement les failles, pour finir par les États qui préfèrent espionner ses citoyens au lieu de les protéger, de nombreuses personnes violent régulièrement toute l'intimité ou les secrets que vous pouvez lui confier. Rappelez-vous par exemple du [logiciel Pegasus](https://fr.wikipedia.org/wiki/Pegasus_(logiciel_espion)).

Les clés de sécurité [PGP ID](/fr/solutions/pgp-id/) sont elles de vrais coffre-forts : la surface d'attaque est infinement plus petite, et les secrets injectés n'ont aucune chance de ressortir.

Ce sont des coffres qui contiennent des clés, qui permette d'ouvrir d'autres coffres, que vous pouvez stocker ailleurs, par exemple sur votre téléphone. Quand ce coffre est fermé aucun ingénieurs de Google ou hacker malveillant ne peut l'ouvrir. Et pour l'ouvrir, il faut la clé de sécurité. Celle que vous présentez au lecteur NFC de votre ordiphone, comme au lecteur USB de votre ordinateur. 

## Ce qu'il faut

- foodjis **1.3** [ou plus récent](lien vers le play store), et une identité PGP ID sur une [clé de
  sécurité](/fr/solutions/offer-security-keys/) ;
- l'application **Termux**, depuis [F-Droid](lien termux F-Droid) ou [Google Play](lien de termux sur google play) ;
- sur chaque serveur, la ligne de votre clé publique dans
  `~/.ssh/authorized_keys` — que **foodjis** comme `gpg --export-ssh-key` donne à copier.

## Mise en place

1. Dans la **Configuration** de foodjis, activez « Faciliter aux autres
   applications l'utilisation de vos clés de sécurité pour l'authentification
   SSH », puis ouvrez **En savoir plus**. Sans cela, foodjis vous demandera à
   chaque connexion s'il doit prêter vos clés « pour cette fois ».
2. Copiez la ligne de votre clé publique et ajoutez-la sur vos serveurs, comme
   n'importe quelle clé SSH. Elle se termine par votre EID et l'empreinte de
   la clé OpenPGP d'où elle vient : vous saurez toujours d'où elle sort.
3. Toujours sur cette page, **Installer sshwfoodjis dans Termux**. foodjis
   confie à Termux le paquet sshwfoodjis_\*.deb, et place la
   commande d'installation dans le presse-papier : ouvrez le répertoire que
   Termux propose, et collez.
4. Dans Termux, une fois pour toutes :

   ```
   sshwfoodjis --install
   ```

   `ssh`, `scp` ou `git` demandent désormais la clé à foodjis, sans autre
   réglage. `sshwfoodjis --uninstall` défait cette configuration, et
   désinstaller le paquet la défait aussi.

## À l'usage

```
ssh moi@mon-serveur.org
git clone moi@mon-serveur.org:mon-depot.git
```

À chaque connexion, foodjis propose vos clés au serveur. Un serveur qui ne connaît pas
votre clé passe à ses autres méthodes, sans rien vous demander. Quand il l'accepte, foodjis
apparaît par-dessus Termux, pour demander éventuellement votre code PIN puis surtout
« Présentez votre clé de sécurité ». Vous approchez votre la clé de sécurité pour ouvrir la porte,
la session s'ouvre, et « Vous pouvez éloigner la clé de sécurité ».

Le code PIN reste en mémoire le temps que vous avez choisi dans la
Configuration (15 minutes par défaut) : les connexions suivantes ne demandent
que la clé. Un `scp` ou un `git clone` ne demandent pas plus qu'une session :
nous avons cloné en SSH depuis nos serveurs, depuis Codeberg et depuis GitHub.

Pour voir ce qui se passe, l'option `-v` de `ssh` suffit : `sshwfoodjis` y
ajoute sa version, et quelle application foodjis il a réveillée.

## Signer ses commits git

Aujourd'hui l'outil gpg dans termux ne sait pas encore parler avec foodjis pour utiliser votre clé de sécurité PGP ID.

Mais on peut d'ores et déjà signer ses commit git via foodjis en tant qu'agent SSH :

```
À toi de jouer Mnêmê\
```


