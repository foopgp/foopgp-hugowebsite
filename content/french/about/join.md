---
title: "Investir"
lang: fr
draft: false
bg_image: "images/backgrounds/Cartographie.jpg"
description : "Le dji (Ɉ), la devise qui nous délivre."
image: "images/logos/logo-foopgp-token-0.png"
---

La meilleur façon de soutenir [le projet](/fr/about/white-book/) consiste à investir sous forme de **cotisations**.

Ces cotisations, **à prix libre**, vous permettent d'obtenir vos premiers **jetons foopgp**, et
financent le travail de l'association pour permettre **la transition** d'un système monétaire,
économique et politique qui détruit nos vies et notre planète, [**vers un 
système plus respectueux de l'ensemble du vivant**](/fr/about/white-book/). [^wb]

[^wb]: Notre [livre blanc](/fr/about/white-book/) : <https://foopgp.org/fr/about/white-book/>


{{< helloasso-count >}}

---

## Le jeton foopgp

Les jetons foopgp, aussi appelés ***djis*** (**Ɉ**), sont comparables à des actions : ils sont librement échangeables entre les adhérents de l'association et, lorsque nous devons prendre des décisions qui ne trouvent pas de consensus, nous votons avec un nombre de voix dépendant de la quantité de djis sur nos portefeuilles nominatifs.

Cependant, la comparaison s'arrête là, car ces jetons ont d'autres caractéristiques très intéressantes :

- La création de ces jetons est extrêmement rigoureuse et démocratique. Voir les articles 4 et 5 de notre [règlement intérieur](/fr/about/rules-of-procedures/). [^RI4] [^RI5]

- Le coefficient multiplicateur du retour sur investissement diminue avec la quantité investie. Voir ce [joli graphique en 3D](https://www.math3d.org/VHvPcDNBY9).

- Les gros actionnaires n'ont pas forcément plus de pouvoir que les petits. Nos règles permettant de régler finement le curseur entre « une part, une voix » et « une personne, une voix ». Voir l'article 8 de notre [règlement intérieur](/fr/about/rules-of-procedures/).

- Grâce aux [technologies que nous assemblons et développons](/fr/solutions/activity-rd/) ([OpenPGP](/fr/about/openpgp/), [git](https://fr.wikipedia.org/wiki/Git), [blockchain](https://netfuture.ch/2022/02/git-pgp-blockchain-comparison/), ...), les échanges en *djis* (**Ɉ**) sont extrêmement faciles et peu couteux, pour l'ensemble du monde.

---

## Par rapport aux monnaies, aux cryptos ?

Tout comme les cryptos, le *dji* n'est pas une monnaie. Toutefois c'est aujourd'hui **l'outil le mieux pensé et conçu** pour :

- **Échanger** des valeurs.

- **Conserver** de la valeur.

- **Mesurer** des valeurs.

En effet ce qui fait la valeur intrinsèque de ce genre d'outil, est **l'équilibre parfait entre sa rareté et sa disponibilité**.

Et le constat est sans appel :

- Les *monnaies* (euro, dollar, …) : ***on peut en créer autant que l'on veut***, mais ***pas pour tout le monde***.

- Les *cryptos* (bitcoin, monero, …) : la ***création est limitée***, et c'est ***pas pour tout le monde***.

- Les *monnaies libres* (***dji***, june, …) : la ***création est limitée***, et ***chacun reçoit sa part***.

---

## Quel sera la valeur du dji ?

Supposons que nous sommes en février 2026 et que la taille du gateau économique ne bouge plus.

Dans la zone euro, [la masse monétaire M1](https://fr.tradingeconomics.com/euro-area/money-supply-m1) est de 11235768 millions d'euros, c'est à dire en moyenne : 11235768/350 =~ 32102.19 € par citoyen de cette zone. [^momentum]

Ce chiffre est une référence sur lequel nous pouvons appliquer la formule simplifiée de création du dji : *DJI = log₂(EUR + 1) / stingynalty*. [^RI4]

Le paramètre stingynalty ayant été fixé en Assemblée Générale à la valeur de 1.10489557718673078682 pour ce mois de février 2026, nous avons donc *log₂(32102.19+1)/1.10489557718673078682 ≃ 13.549179*

Donc dès que nous commençons à utiliser le dji (émancipateur) à la place de l'euro (qui cause tant de maux), nous échangeons et utilisons en moyenne 13.549179 Ɉ pour 32102.19 €.

C'est à dire qu'un dji (Ɉ) vaut 32102.19/13.549179 = 2369.31 €.

```bash
# bc -l <<<"11235768/350"
32102.19428571428571428571
# bl-foopgp --date 2026-02-02 g2t 32102.19
13.549179
# bc -l <<<"32102.19/13.549179"
2369.30887103934489314813
```

Précisons maintenant :
- Pression à la baisse : le « dividende universel ». [^RI5]
- Pression à la hausse : le paramètre **stingynalty** (mis en place pour contenir la pression du « dividende universel » ou l'inflation de l'euro). [^RI4]
- Pression à baisse puis à la hausse : Tout le monde n'a pas en moyenne 32102.19 € sur son compte en banque... [^momentum]
- Pression à la hausse : Le dji est la part sociale d'une société qui produit des innovations comme [**PGP ID**](/fr/blog/2026-01-19-djibian-release/) et [**Djibian**](/fr/solutions/djibian/). Ces produits s'attaquent (entre autres) aux parts de marché de Microsoft et d'Apple, c'est-à-dire (rien que pour eux deux) : [7200 milliards de capitalisation (en 2025)](https://www.clubic.com/actualite-574953-non-apple-et-microsoft-ne-connaissent-pas-la-crise.html).

[^RI4]: Article 4 de notre [règlement intérieur](/fr/about/rules-of-procedures/#article-4---modalités-relatives-aux-jetons-de-pouvoir-confer-article-10bis-des-statuts) : <https://foopgp.org/fr/about/rules-of-procedures/>
[^RI5]: Article 5 de notre [règlement intérieur](/fr/about/rules-of-procedures/#article-5--émission-universelle-de-nouveaux-jetons-confer-article-10bis-des-statuts) : <https://foopgp.org/fr/about/rules-of-procedures/>
[^momentum]: momentum : ~99% des citoyens de la zone euro ont intérêt à adopter le dji, justement parce qu'ils sont en dessous de cette moyenne. Par rapport à l'euro, une pression supplémentaire à la hausse apparaîtra lorsque, même pour les ~1% des plus riches, ce que nous produisons sera acheté dans ***notre*** monnaie, émancipatrice ; plutôt que dans ***leur*** monnaie, qui ne leur coûte rien (ou presque, cf. effet Cantillon).


Ainsi le premier calcul ne représente que le cas où la société ne produit rien, dans une économie totalement égalitaire.

Et le chiffre de 2369.31 €, n'est qu'une estimation plancher.

Reprenons maintenant le cours du temps : il est tout à fait probable qu'un jour, **la valeur d'un dji dépasse allègrement les 2500 euros** (1 Ɉ > 2500 €). [^risques]

[^risques]: Tout investissement comporte des risques de perte partielle ou totale en capital.

---

## Et la clé physique de sécurité ?

Dès que vous avez généré **6,42 Ɉ** par vos cotisations cumulées, vous recevez une **[clé physique de sécurité](/fr/solutions/offer-security-keys/)** (Yubikey ou Nitrokey) pour dès aujourd'hui **[utiliser](/fr/blog/2026-01-19-djibian-release/) votre identité numérique décentralisée [PGP ID](/fr/solutions/pgp-id/)** — la pierre angulaire de votre souveraineté numérique et financière. En 2027, cette même clé de sécurité sera utilisée pour vos échanges numériques en djis (**Ɉ**). Le palier en euros augmente d'environ 0,5 % chaque mois : c'est l'effet **stingynalty** rendu palpable, et une incitation à rejoindre la migration tôt plutôt que tard. [^palier]

| Date | Cotisations nécessaires pour atteindre 6,42 Ɉ |
|---|---|
| février 2026  | ≈ 135,57 € |
| mai 2026      | ≈ 146,08 € |
| août 2026     | ≈ 157,57 € |
| décembre 2026 | ≈ 174,61 € |
| mai 2027      | ≈ 199,09 € |
| mai 2028      | ≈ 276,43 € |

[^palier]: Le palier est exprimé **en djis**, pas en euros — donc il évolue automatiquement et impartialement avec la mécanique monétaire de l'organisation, sans qu'aucun gestionnaire ait à l'arbitrer. La fonction `bl-foopgp t2g 6.42` permet de vérifier à tout moment l'équivalent en euros à la date courante.

---

## Prêt à générer vos djis ?

Alors prenez votre part et 🌟 [**inscrivez-vous**](/djis-emission/?lang=fr) [ici](/djis-emission/?lang=fr) 🌟.

Ou directement sur HelloAsso :
{{< helloasso-button >}}

**Bienvenue chez vous** : **nôtre** nouveau **monde** ! 🥰

---

