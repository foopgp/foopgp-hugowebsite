---
Title:   "Utilisation (avancée) de foodjis comme agent SSH pour Android"
Date:    2026-10-01T18:00:00+02:00
Tags:    [ "foodjis", "android", "ssh", "termux", "git", "pgp-id", "openpgp", "nfc", "yubikey", "nitrokey" ]
categories: [ "News" ]
draft: false
author: [ "Mnêmê", "Jean-Jacques Brucker" ]
description: "Depuis la version 1.3, votre clé de sécurité ouvre aussi vos sessions SSH depuis le téléphone : ssh, scp et git s'authentifient avec elle, sans qu'aucune clé privée ne soit copiée sur l'appareil."
lang: fr
bg_image: "images/backgrounds/party-event.jpg"
image: "images/logos/foodjis_logo_banner.png"
type: "post"
---

***Note :*** *Cet article s'adresse à qui se sert déjà de SSH. Pour découvrir foodjis sur Android, commencez par [l'article qui le présente](/fr/blog/2026-09-24-foodjis-android/).*

**Votre clé de sécurité ouvre désormais vos sessions SSH depuis le téléphone.**
Depuis la version 1.3, foodjis peut servir d'*agent SSH* pour les autres
applications Android. Ainsi, `ssh`, `scp` ou `git`, dans l'application
[Termux](https://termux.dev/), s'authentifient avec la clé d'authentification
de votre identité PGP ID — celle que porte et sécurise votre clé physique,
YubiKey ou NitroKey.

Démonstration, avec une clé de sécurité configurée par foodjis (PGP ID) :
{{< video
  src="/largefiles/videos/2026/2026-10-01-foodjis-ssh-agent-fr.mp4"
  type="video/mp4"
>}}

## Pourquoi

D'ordinaire, ce qui vous fait reconnaître d'un serveur SSH est une clé privée
rangée dans un fichier de l'appareil : qui copie ce fichier peut se connecter à
votre place, et le téléphone n'est pas un coffre-fort numérique. Des ingénieurs
qui l'ont conçu aux pirates qui en exploitent discrètement les failles, jusqu'aux
États qui préfèrent espionner leurs citoyens plutôt que les protéger, nombreux
sont ceux qui violent régulièrement l'intimité et les secrets que vous lui
confiez. Souvenez-vous par exemple du
[logiciel Pegasus](https://fr.wikipedia.org/wiki/Pegasus_(logiciel_espion)).

Les clés de sécurité [PGP ID](/fr/solutions/pgp-id/), elles, sont de vrais
coffres-forts : leur surface d'attaque est infiniment plus petite, et les
secrets qu'on y a placés n'en ressortent pas.

Ce sont des coffres qui contiennent des clés, lesquelles ouvrent d'autres
coffres que vous pouvez ranger ailleurs, par exemple sur votre téléphone. Quand
ce coffre est fermé, aucun ingénieur de Google ni aucun pirate ne peut l'ouvrir.
Pour l'ouvrir, il faut la clé de sécurité : celle que vous présentez au lecteur
NFC de votre ordiphone comme au port USB de votre ordinateur.

## Ce qu'il faut

- foodjis **1.3** [ou plus récent](https://play.google.com/store/apps/details?id=org.foopgp.foodjis),
  et une identité PGP ID sur une [clé de sécurité](/fr/solutions/offer-security-keys/) ;
- l'application **Termux**, depuis [F-Droid](https://f-droid.org/packages/com.termux/)
  ou [Google Play](https://play.google.com/store/apps/details?id=com.termux) ;
- sur chaque serveur, la ligne de votre clé publique dans
  `~/.ssh/authorized_keys` — que **foodjis**, comme `gpg --export-ssh-key` sur
  l'ordinateur, vous donne à copier.

## Mise en place

1. Dans la **Configuration** de foodjis, activez « Faciliter aux autres
   applications l'utilisation de vos clés de sécurité pour l'authentification
   SSH », puis ouvrez **En savoir plus**. Sans cela, foodjis vous demandera à
   chaque connexion s'il doit prêter vos clés « pour cette fois ».
2. Copiez la ligne de votre clé publique et ajoutez-la sur vos serveurs, comme
   n'importe quelle clé SSH. Elle se termine par votre EID et l'empreinte de
   la clé OpenPGP d'où elle vient : vous saurez toujours d'où elle sort.
3. Toujours sur cette page, **Installer sshwfoodjis dans Termux**. foodjis
   confie à Termux le paquet `sshwfoodjis_*.deb`, et place la
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

À chaque connexion, foodjis propose vos clés au serveur. Un serveur qui ne
connaît pas votre clé passe à ses autres méthodes, sans rien vous demander.
Quand il l'accepte, foodjis apparaît par-dessus Termux, pour demander au besoin
votre code PIN, puis surtout : « Présentez votre clé de sécurité ». Vous
approchez la clé de sécurité, la porte s'ouvre — « Vous pouvez éloigner la clé
de sécurité » — et la session commence.

Le code PIN reste en mémoire le temps que vous avez choisi dans la
Configuration (15 minutes par défaut) : les connexions suivantes ne demandent
que la clé. Un `scp` ou un `git clone` ne demandent pas plus qu'une session :
nous avons cloné en SSH depuis nos serveurs, depuis Codeberg et depuis GitHub.

Pour voir ce qui se passe, l'option `-v` de `ssh` suffit : `sshwfoodjis` y
ajoute sa version, et quelle application foodjis il a réveillée.

## Signer ses commits git

Aujourd'hui, l'outil `gpg` de Termux ne sait pas encore parler à foodjis pour
utiliser votre clé de sécurité PGP ID.

git sait aussi signer ses commits avec une clé SSH, et foodjis en est l'agent :
c'est la voie que nous préparons. Pour l'instant, foodjis ne signe que des
connexions SSH — c'est voulu, pour qu'une autre application ne puisse pas lui
faire signer autre chose sous couvert d'une connexion. Accepter aussi les
signatures de git, en disant clairement à l'écran que c'est un commit qu'on
signe, viendra avec une prochaine version.
