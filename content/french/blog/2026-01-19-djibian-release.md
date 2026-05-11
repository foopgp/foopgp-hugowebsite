---
Title:   "Djibian passe en prod !"
Date:    2026-01-20T01:30:00+02:00
Tags:    [ "djibian", "debian" ]
categories: [ "News" ]
draft: false
author: [ "Jean-Jacques Brucker", "Sébastien Picardeau", "Maël Lemoine" ]
description : "Djibian O.S., le système qui vous respecte."
lang: fr
bg_image: "images/backgrounds/party-event.jpg"
image: "images/logos/djibian_square_logo.png"
type: "post"
---

***Note :*** *Pour une première introduction à Djibian, [voir le post précédent](/fr/blog/2025-09-12-welcome-djibian/). Pour un plus large aperçu de Djibian, [voir le post suivant](/fr/blog/2026-02-10-djibian-tour/). Pour rester informé, [inscrivez-vous à nos listes de diffusion](/fr/contact/).*

#### Clairette [^clairette] !

[^clairette]: Proximité avec Die et préférence pour les produits locaux obligent. Leurs bouchons sautent aussi bien que ceux du champagne.

***Après plus de 3 ans de Recherche et Développement [^CVjjb], nous avons l'immense fierté de livrer la première version stable de [Djibian](/fr/blog/2025-09-12-welcome-djibian/), le système d'exploitation qui sécurise vos données et respecte votre vie privée***.

[^CVjjb]: On pourrait même chiffrer la R&D à plus de 15 ans, si l'on en croit le [CV impressionnant du fondateur](https://domesticserver.org/myresume/) (en toute modestie bien sûr, de toute façon personne ne lit les notes de bas de page... n'est-ce pas ?).
---

Cette première version pose et fournit le premier étage de [la fusée](/fr/solutions/activity-rd/) : **OpenPGP ID**.

{{< figure
  src="/images/solutions/OpenPGPkeys.jpg"
  alt="OpenPGP tokens: 1 nitrokey, 2 yubikey, 1 unknow (pink)"
  class="mx-auto w-25"
>}}

Votre [identité numérique](/fr/solutions/openpgp-id/) **OpenPGP ID**, est universelle et décentralisée.

Elle permet, [concrètement](/fr/solutions/offer-security-keys/) :

- de [s'authentifier](/fr/solutions/theme-authentication/) sans mot de passe ou de manière unique (SSO) ;

- d'émettre et recevoir des [données authentiques](/fr/solutions/signature/) ;

- de [chiffrer](/fr/solutions/encryption/) nos échanges et [données personnelles](/fr/solutions/theme-email/), c'est à dire de s'assurer qu'ils et elles demeurent privés ;

- [d'avancer](/fr/solutions/theme-vote/) vers [l'abolition](/fr/about/rules-of-procedures/) de [certains privilèges](/fr/solutions/theme-currency/), et d'obtenir plus de liberté, égalité, fraternité. [✊🕊️💕](/fr/about/join/)

De plus et toujours, efficacité et sobriété étant nos maîtres mots, **Djibian** GNU/Linux permet de ***prolonger de plusieurs années la vie de vos ordinateurs***.

Une petite vidéo valant mieux qu'un long discours :

{{< video
  src="/videos/2026/20260126-djibian-clepgp.mp4"
  type="video/mp4"
  sub_fr="/videos/2026/sous-titre-fr-cle-pgp.vtt"
  sub_en="/videos/2026/sous-titre-en-cle-pgp.vtt"
>}}

---

Pour les prochains étages de la fusée :

- Amélioration des pré-configurations (git, ssh, evolution, thunderbird, etc.)

- Gestion et exploitation fluide et puissante de vos [toiles de confiance](https://fr.wikipedia.org/wiki/Toile_de_confiance).

- Sauvegarde et récupération automatique de votre univers numérique, dès que vous branchez votre clé de sécurité OpenPGP sur un système **djibian**.

- etc.

---

#### Installer

La dernière ISO [^packages] est ici : <http://iso.foopgp.org/djibian/latest>.

[^packages]: Le fichier [extra-Packages.gz](http://iso.foopgp.org/djibian/1.0.0/extra-Packages.gz) contient la liste de tous les paquets qui ont été ajouté par rapport à l'ISO debian de référence (13.3.0) ; dont [une vingtaine](http://djibian.foopgp.org/debs/) sont (aujourd'hui) exclusives à djibian.

*Note : le mot de passe de l'utilisateur par défaut est :* ***foopgp***

Si vous souhaitez par vous-mêmes installer **djibian**, nous vous conseillons d'utiliser [Ventoy](https://www.ventoy.net/en/doc_start.html).

Sinon nous vous conseillons de vous fournir auprès de [nos partenaires](/fr/partner/). Notamment :
- [Sun Valley Systems](/fr/partner/sun-valley-systems/) à [Gap](//www.openstreetmap.org/node/7375918682).

---

#### Tester

Si vous êtes déjà sous Debian, vous pouvez installer nos logiciels [en rajoutant notre dépôt de paquets](/fr/solutions/activity-rd/#djibianfoopgporg).

Certains de ces paquets pourraient être fonctionnels également sous Ubuntu ou Mint. Les développeurs peuvent librement intégrer nos logiciels pour les autres systèmes d'exploitation (GNU/Linux, Mac OS, etc.)

---

#### Communiquer

Si [ce projet](/fr/about/white-book/) vous enthousiasme, visuels à partager sans modération :


{{< figure
  src="/images/banner/poster_fr_djibian_1654x2339.png"
  link="/images/banner/poster_fr_djibian_1654x2339.png"
  alt="Djibian, le système qui vous respecte !"
  class="float-left ml-4 w-25"
>}}

{{< figure
  src="/images/banner/poster_fr_dji_1654x2339.png"
  link="/images/banner/poster_fr_dji_1654x2339.png"
  alt="Le dji, la devise qui nous délivre !"
  class="float-right mr-4 w-25"
>}}

{{< figure
  src="/images/banner/poster_fr_all_1654x2339.png"
  link="/images/banner/poster_fr_all_1654x2339.png"
  alt="Poster: un notre monde est possible."
  class="mx-auto w-25"
>}}

---

😊
