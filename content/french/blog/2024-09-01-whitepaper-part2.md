---
Title:   "Notre Livre Blanc - Partie 2"
Date:    2024-08-24T01:30:00+02:00
License: CC By-SA
Tags:    [ "specification", "governance", "signature", "authentication", "encryption", "identity", "pgpid" ]
categories: [ "About" ]
draft: false
author: [ "Jean-Jacques Brucker" ]
description : "par quels moyens nous atteindrons nos objectifs"
lang: fr
bg_image: "images/backgrounds/library.jpg"
bg_image: "images/blog/2024/europe-413102_960_720.jpg"
image: "images/blog/2024/earth4ever.jpeg"
type: "post"
---


*Suite de [la partie 1](../2024-08-15-whitepaper-part1/)*

## Comment nous atteindrons nos objectif...

### Premier objectif : démocratiser OpenPGP

De part la portée de ses spécifications, OpenPGP souffre à base d'une certaine complexité technique.

Cette complexité est cependant tout à fait résoluble, et serait probablement
déjà resolue si la technologie ne
souffrait pas des freins politico-économique [identifiés
précédemment](../2024-08-15-whitepaper-part1/#construire-des-espaces-de-vie-numérique-privée)

L'association doit donc se doter d'un modèle économique qui financera les
développements ou évolutions nécessaire à l'adoption en masse des solutions OpenPGP.

Déjà, nous avons développé des outils et processus permettant, pour une
utilisation en masse, de créer des identités numérique OpenPGP et de gérer
efficacement et au haut plus haut niveau de sécurité, les clés privées qui leurs
sont associées[^rappelasym] :

1. **pgpid-gen** génère, manuellement ou à partir d'un passeport aux normes ICAO
   9303 ou ISO/IEC 7501, une identité numérique OpenPGP. Puis découpe et imprime en plusieurs fragments, l'ensemble des clés privés associées.
2. **pgpid-qrscan** utilise ces fragments papier pour injecter les clés privés dans une clé de sécurité [^YK] [^NK]. La clé de sécurité peut dès lors faire office non seulement de pièce d'identité, mais permet aussi la signature numérique, l'authentification numérique, ou la création d'espaces numériques parfaitement chiffrés, c'est à dire vraiment privés.
3. Les fragments sont référencés et stockés dans des coffres dispersés et tenus
   par des entreprises de confiance ou des amis ou des notaires. Si nécessaire, ils pourront
être rassemblés et réutilisés par des outils comme **pgpid-qrscan** : recréation en cas d'incident (eg: blocage complet, destruction, perte non conséquente, etc), création de doubles, décès du titulaire, etc.

[^rappelasym]: En Informatique, la sécurité repose très souvent sur la cryptographie asymétrique, laquelle nécessite une non divulgation parfaite du contenu de la partie privée d'une clé asymétrique (eg: RSA, ed25519, etc.), que l'on appelle aussi "clé privée".*

Le modèle économique de l'association permettra de faire évoluer et
maintenir ces outils et processus.

Il devra aussi permettre de :
 * Généraliser l'usage des serveurs de clés WKD/WKS, en lieu et place des
   serveurs centralisés ou fournissant des certificats incomplets (par exemple : [keys.openpgp.org](https://keys.openpgp.org/)).
 * Réaliser des outils permettant de mieux créer et gérer les toiles de confiances OpenPGP.
 * Utiliser des toiles de confiances OpenPGP pour lutter efficacement contre
   le SPAM - bien plus efficacement que l'ensemble des solutions actuelles.
 * Utiliser des toiles de confiances OpenPGP et des clés de sécurité[^YK] [^NK] pour s'authentifier numériquement plus sûrement et plus facilement - sans identifiant / mot de passe.
 * Créer des espaces numériques vraiment privés, accessibles et contrôlables
   uniquement au travers de clés de sécurité[^YK] [^NK].
 * Généraliser l'utilisation de signature électronique OpenPGP. Ce qui permettra
   aussi de lutter efficacement contre toute pollution informationnelle[^LclPI]
 * Réaliser les outils permettant d'utiliser les clés de sécurité [^YK] [^NK]
   comme moyen de paiement numérique.
 * Améliorer ses outils de prise de décision communautaire.
 * Déployer et maintenir des systèmes (laptops, smartphones, etc.) équipés des outils précédents, en veillant à leur empreinte carbone (recyclage, basse consommation, etc.).

[^YK]: [YubiKey 5 Series](https://www.yubico.com/la-cle-yubikey/yubikey-5-series/?lang=fr)
[^NK]: [NitroKeys](https://www.nitrokey.com/fr/products/nitrokeys)
[^LclPI]: [Lutter contre la pollution informationnelle / Jean-Jacques Brucker](https://foopgp.org/fr/blog/2023-04-03-lutter-contre-la-polution-informationelle/)

### Deuxième objectif : mettre en place, non seulement un modèle, mais un système économique innovant.

L'organisation foopgp n'a pas de but lucratif. Bien au contraire, l'organisation
œuvre dans la recherche de l'intérêt général.

Aussi les donations mesurées en € devraient être d'abord philanthropique.

Ensuite, il semble assez évident que ceux qui donnent plus, aient un peu plus
de pouvoir au sein de l'association. Par contre il semblerait injuste que le rapport
entre don et pouvoir soit proportionnel. En effet, cela reproduirait les
inégalités que nous cherchons justement à corriger.

#### Jetons de pouvoir Ɉ

L'organisation foopgp a résolu ce problème en introduisant des jetons de pouvoir
et une fonction logarithmique pour calculer la quantité de ces jetons (Ɉ) en
fonctions des donations mesurées en euros (€).

Ce mécanisme est décrit dans l'article 4 du règlement intérieur[^RI4].

[^RI4]: https://foopgp.org/fr/about/rules-of-procedures/#article-4---modalit%C3%A9s-relatives-aux-jetons-de-pouvoir-confer-article-10bis-des-statuts

{{< plantuml id="donation" >}}
@startuml
left to right direction
actor "Member" as mb
rectangle foopgp {
  usecase "monetary donation" as UC1
  usecase "donations of goods" as UC2
  usecase "donations of services" as UC3

}
usecase "Member's wallet of power tokens" as W
mb --> UC1 : €
mb --> UC2 : €
mb --> UC3 : €
UC1 --> W #line:purple;line.bold;text:purple : Ɉ
UC2 --> W #line:purple;line.bold;text:purple : Ɉ
UC3 --> W #line:purple;line.bold;text:purple : Ɉ
@enduml
{{< /plantuml >}}

---

Ces jetons de pouvoir seront pris en comptes à chaque fois que des décisions
devront être prises et que les discussions préalables n'ont pu dégager de consensus.

Mais ces jetons de pouvoir pourront aussi être utilisés comme monnaie d'échange
pour récupérer des produits ou services que l'association a pu construire grâce aux donations.

Sachant que l'association produit déjà des services autour des clés de sécurité
OpenPGP[^YK] [^NK], recycle déjà des laptop usagés, et envisage de pouvoir
fournir des serveurs d'auto-hébergement ou des téléphones mobiles "dégoogelisés".

{{< plantuml id="sell" >}}
@startuml
!include https://raw.githubusercontent.com/plantuml/plantuml-stdlib/master/osa/device_usb/device_usb-sprite.puml
!include https://raw.githubusercontent.com/plantuml/plantuml-stdlib/master/osa/mobile/pda/pda-sprite.puml
!include https://raw.githubusercontent.com/plantuml/plantuml-stdlib/master/osa/laptop/laptop-sprite.puml
actor "customer member" as mb1
actor "customer member" as mb2
actor "customer member" as mb3
rectangle foopgp {
  actor "worker member" as wm1
  actor "worker member" as wm2
  actor "worker member" as wm3

}
mb1 --> wm1 #line:purple;line.bold;text:purple : Ɉ
wm1 --> mb1 : <$device_usb>
mb2 --> wm2 #line:purple;line.bold;text:purple : Ɉ
wm2 --> mb2 : <$laptop>
mb3 --> wm3 #line:purple;line.bold;text:purple : Ɉ
wm3 --> mb3 : <$pda>
@enduml
{{< /plantuml >}}

---

Si l'on combine et simplifie les deux diagrammes précédents nous pourrions
retrouver un schéma assez simple : un client échange des euros (€) contre, par
exemple :
* une clé de sécurité OpenPGP correctement configuré + une initiation à ses usages.

{{< plantuml id="resume" >}}
!include https://raw.githubusercontent.com/plantuml/plantuml-stdlib/master/osa/device_usb/device_usb-sprite.puml
left to right direction
actor "customer member" as mb1
rectangle foopgp {
  actor "worker member" as wm1
}
mb1 --> wm1 : €
wm1 --> mb1 : <$device_usb>
{{< /plantuml >}}

À la différence notable que ce client aura cédé de son pouvoir décisionnel au sein de
l'organisation, aux membre travailleurs qui lui ont vendu le service.

Et que, étant donné la fonction logarithmique décrite dans l'article 4 du règlement intérieur[^RI4], le prix en euros des produits ou services sera exponentiel dès lors qu'il voudra
acheter plusieurs produits ou services

... à moins que le client ait lui-même des produits ou services à vendre en jetons (Ɉ) aux autres membres.

#### Incitation à la générosité

Pour inciter à ne pas attendre que le monde devienne inhabitable pour comprendre
que nous avons besoin d'un système économique sans privilège de création
monétaire, l'article 4 du règlement intérieur[^RI4] introduit également une
notion de pénalité à la pingrerie, autrement dit d'incitation à la générosité,
appelé *stingynalty*.

Ce facteur se doit évidemment d'être supérieur à celui de l'inflation de la monnaie à
cours légal dans la zone prépondérante d'activité de l'association.

Ainsi les enthousiastes qui investissent dès maintenant dans notre projet d'intérêt
général pour un monde plus durable, seront plus récompensés que les indécis qui
regardent, ou ne voient même pas, un ancien monde s'écrouler.

#### Distribution périodique de jetons

De part la formule de conversion[^RI4bis] de la monnaie prépondérante à cours légal vers nos jetons de
pouvoir, ces jetons (Ɉ) seront de fait bien moins abondants que la monnaie à cours légal. Ce qui risquerait
de faire prendre à nos jetons (Ɉ), trop de valeur par rapport à la monnaie à cours légal (€), et de créer
une bulle spéculative. Ce qui serait à moyen terme fatal pour le projet.

Pour éviter cela nous avons doté notre système d'un mécanisme de création
périodique, sans aucun privilège, décrit à l'article 5 du règlement
intérieur[^RI5] : la quantité de jetons croît donc périodiquement d'un pourcentage prédéfini et
ajustable si nécessaire. Ce pourcentage est appelé *growth*. Les jetons crées sont alors distribués équitablement à
l'ensemble des personnes physiques membres.

Cependant, afin que nos jetons demeurent plus rare et d'une valeur légèrement
supérieure à celle de la monnaie à cours légal. Il semble important que la croissance
prédéfinie de la quantité de jetons demeure inférieure ou égale à l'incitation à
la générosité. Autrement dit, il semble pertinent de maintenir :
***growth* < *stingynalty***

[^RI4bis]: Suivant l'article 4 du règlement intérieur, la formule est de la
    forme : **Ɉ = log₂(€+1) / *stingynalty***

[^RI5]: https://foopgp.org/fr/about/rules-of-procedures/#article-5--%C3%A9mission-universelle-de-nouveaux-jetons-confer-article-10bis-des-statuts

### Troisième objectif : gouverner en commun

*Gouverner, c’est prévoir, choisir et expliquer.*

*Seul on va plus vite, ensemble on va plus loin.*[^IC1]

Il s'agit donc parvenir à combiner ces deux maximes, parfois difficiles à
suivre.

[^IC1]: [Intelligence collective : ensemble, va-t-on toujours plus loin ? / Gaëtan de Lavilléon, Marie Lacroix et Emma
Vilarem](https://www.usinenouvelle.com/blogs/le-blog-des-experts-des-neurosciences/intelligence-collective-ensemble-va-t-on-toujours-plus-loin.N2150847)

#### Intelligence collective

Le plus difficile n'est pas de choisir[^Brazil], mais de prévoir. C'est à dire
de voir, c'est à dire d'expliquer et d'accorder les visions de l'ensemble des
membres.

[^Brazil]: Choisir ne demande aucune intelligence particulière : {{< video src="/videos/Brazil Executive decision maker_360P.mp4" type="video/mp4" >}}

Tout problème, une fois rationalisé dans son environnement, ne comporte qu'une
est une seule "meilleure décision".

Toute la difficulté est dans la rationalisation des problèmes, la mise en
accord sur ces rationalisations, et l'acceptation que, malgré les efforts, toute rationnalisation
ne sera jamais qu'une approximation imparfaite.

Cela necessite de la transparence, de l'écoute, de la bienveillance et de
l'intelligence.[^Values]

[^Values]: Les valeurs inscrites dans nos statuts sont justement : la transparence, la proximité
(qui induit l'écoute), la bienveillance, et la coopération (qui induit l'intelligence collective).

Pour cela nous nous appuyons sur les recherches en intelligence collective[^IC2].

[^IC2]: [Intelligence collective / Wikipedia](https://fr.wikipedia.org/wiki/Intelligence_collective)

#### Démocratie

Les décisions sont prises dans un premier temps par recherche du consentement, au sein de conseils dont les
réunions sont ouvertes à tous les membres.

Le conseil d'administration de l'association se reuni par visio
conférence chaque semaine.

Certaines décisions ou responsabilités bien définies peuvent être délégués à certains
conseils ou rôles secondaires bien définis.

Si au sein des conseils des objections perdurent, tout membre dudit conseil pourra demander consultation
auprès de l'ensemble des membres de l'organisation. La consultation prendra en
compte les jetons de pouvoir et devra si possible utiliser la méthode de Shulze,
confer article 9 du règlement intérieur[^RI9]:

[^RI9]: https://foopgp.org/fr/about/rules-of-procedures/#article-9--expression-de-la-volont%C3%A9-des-membres-confer-article-10bis-et-article-11-des-statuts

#### Vote polynomial de Condorcet

---

Liberté, Égalité, Fraternité.

gouvernance, équité, démocratie, décentralisation.

