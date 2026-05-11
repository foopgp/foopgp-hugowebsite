---
title: "OpenPGP ID"
lang: fr
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Une identité numérique universelle et souveraine, ancrée dans une clé physique."
image: "images/solutions/identity.png"
tags: ["Identity", "OpenPGP ID", "openpgp"]
categories: ["solution"]
type: "post"
aliases:
  - /fr/solutions/theme-identity/
---

### OpenPGP ID, en quelques mots

**OpenPGP ID** est une identité numérique :

- **universelle** — utilisable partout où OpenPGP est accepté (signature de courriels, authentification SSH, signatures de paquets, certificats Git, …) ;
- **souveraine** — vos clés privées sont *à vous*, sur une clé physique (YubiKey / NitroKey) que vous tenez dans votre main ;
- **décentralisée** — pas d'autorité centrale, pas de fournisseur d'identité tiers, [pas de coffre cloud à qui faire confiance](/fr/blog/2026-05-11-djibian-agentforwarding/) ;
- **pérenne** — votre identifiant `u4` ou `u5` reste stable à vie ; les certificats qui le supportent peuvent être renouvelés (rotation post-quantique, etc.) sans changer qui vous êtes.

Depuis [janvier 2026](/fr/blog/2026-01-19-djibian-release/), **OpenPGP ID est en production**, livré dans le système [Djibian GNU/Linux](/fr/blog/2026-01-19-djibian-release/).

### À quoi sert une identité numérique souveraine ?

Concrètement, votre **OpenPGP ID** vous permet :

- **[De vous authentifier](/fr/solutions/theme-authentication/)** sans mot de passe sur les services en ligne — y compris [sur n'importe quelle machine Djibian distante](/fr/blog/2026-05-11-djibian-agentforwarding/), sans jamais y déposer la moindre clé privée.
- **[De signer](/fr/solutions/signature/)** vos documents, vos courriels, vos commits, vos contrats — preuve d'origine *non répudiable*.
- **[De chiffrer](/fr/solutions/encryption/)** vos échanges et vos données personnelles, c'est-à-dire de garantir qu'ils restent *privés*.
- **[De certifier](/fr/solutions/theme-authentication/) vos proches** et de tisser votre [toile de confiance](https://fr.wikipedia.org/wiki/Toile_de_confiance).
- **De ne plus subir** ni les usurpations d'identité, ni la [pollution informationnelle](/fr/blog/2023-04-03-lutter-contre-la-polution-informationelle/), ni les abus d'IA générative.

Et plus généralement, [d'avancer](/fr/solutions/theme-vote/) vers [l'abolition de certains privilèges](/fr/solutions/theme-currency/), et d'obtenir plus de liberté, d'égalité, de fraternité. [✊🕊️💕](/fr/about/join/)

### Donner naissance à votre OpenPGP ID

Sur un système **Djibian**, le frontend graphique **Djibian Onboarding** (développé par [Sébastien Picardeau](/fr/author/sebastien-picardeau/)) guide la création d'une identité OpenPGP en une dizaine de clics :

1. Lancer **Djibian Onboarding** (menu *Applications → Accessoires*).
2. Choisir *« Configurer votre clé de sécurité OpenPGP »*.
3. Insérer votre **YubiKey** ou **NitroKey** — elle est détectée automatiquement.
4. Première fois ? *« Créer mon identité OpenPGP »*.
5. Renseigner nom de naissance, prénoms, date de naissance, pays de naissance, courriel.
6. Vérifier les informations.
7. **Imprimer les QR codes** (3 feuilles minimum, voir ci-dessous).
8. **Scanner les QR codes** — la clé est gravée dans votre YubiKey/NitroKey.
9. Et voilà : votre **OpenPGP ID** est née.

> *Le tout, hors-ligne, sans aucun appel à un serveur tiers. Démo vidéo dans [l'article de release](/fr/blog/2026-01-19-djibian-release/).*

### Sauvegarde : QR codes papier, secret réparti

Les outils foopgp génèrent et impriment votre clé privée sous forme de **fragments papier**, chiffrés et répartis selon un schéma de [secret réparti](https://fr.wikipedia.org/wiki/Secret_r%C3%A9parti) (Shamir) : par défaut, **3 fragments suffisent sur 5 imprimés** pour reconstituer la clé.

| ![Fragment 1/5](/images/solutions/openpgp-id/qrcode-fragment-1.png) | ![Fragment 2/5](/images/solutions/openpgp-id/qrcode-fragment-2.png) | ![Fragment 5/5](/images/solutions/openpgp-id/qrcode-fragment-5.png) |
|:---:|:---:|:---:|
| *Fragment 1/5* | *Fragment 2/5* | *Fragment 5/5* |

Quelques propriétés à connaître :

- **Aucun fragment isolé ne révèle quoi que ce soit** — il faut le quorum (3 ici) pour reconstituer.
- **Hors-ligne par construction** : les fragments existent uniquement sur papier, jamais sur un cloud, jamais sur un disque dur connecté.
- **Résilience** : perdre un ou deux fragments n'est pas fatal ; perdre votre YubiKey non plus, tant que vous avez accès à votre quorum de fragments.
- **Confier des fragments à des proches** est une stratégie courante : un fragment chez un parent, un chez un ami, un dans un coffre — et l'usurpation d'identité devient très difficile.

### Transposition vers une clé physique

Une fois votre clé privée fragmentée sur papiers, un autre outil foopgp lit les QR codes via une webcam ou un scanner et **grave** les clés dans une YubiKey ou une NitroKey. La clé privée ne touche jamais ni votre disque dur, ni un service tiers.

À partir de là, votre identité s'exerce **depuis votre main** sur n'importe quelle machine Djibian : [signer, déchiffrer, vous authentifier en SSH](/fr/blog/2026-05-11-djibian-agentforwarding/) — la clé physique reste l'unique source de signature.

### Bref,

L'**OpenPGP ID** rend possible une vraie souveraineté numérique : ni mot de passe à oublier, ni coffre cloud à qui faire confiance, ni dépendance à un fournisseur d'identité externe. Une identité **à vous**, ancrée dans un objet physique que vous portez, et **utilisable partout**.

**Quand d'autres vous vendent des technologies qui vous asservissent, foopgp permet à tous de s'approprier des technologies qui nous servent.** Plus sûres, plus sobres, et entièrement souveraines.

---
