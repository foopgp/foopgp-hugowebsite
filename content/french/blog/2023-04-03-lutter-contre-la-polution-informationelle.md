---
Title:   GPT - Fin de Partie
Date:    2023-04-03T01:30:00+02:00
Lastmod:    2023-04-03T10:30:00+02:00
License: CC By-SA
Tags:    [ "openpgp", "AI" ]
categories: [ "Opinion" ]
draft: false
author: [ "Jean-Jacques Brucker" ]
description : "Comment lutter contre la pollution informationnelle"
lang: fr
bg_image: "images/blog/2023/dalle-e-1.png"
image: "images/blog/2023/tomfishburne-ai.jpg"
type: "post"
---

*Retrouver la singularité humaine à l'heure de l'intelligence artificielle.*

## Introduction

Dans nos sociétés, entretenant au travers de notre système économique, le [postulat d'une vision pessimiste de la nature humaine](https://fr.wikipedia.org/wiki/Homo_homini_lupus_est), nous sommes tous encouragés à prélever, produire et vendre toujours plus ; avec pour seules limites, celles de [lois de plus en plus complexes, et toujours imparfaites](https://fr.wikipedia.org/wiki/L%C3%A9viathan_%28Thomas_Hobbes%29).

Ainsi pour nous faire acheter toujours plus de produits, comme d'opinions politiques, nous sommes submergés de communications cherchant à se faire passer pour de l'information. Cette confusion, autrefois cantonné à la publicité, s'est développé avec le marketing débridé inhérent à notre société de (sur)consommation, lui même indissociable de notre système économique et monétaire, basé sur une croissance infinie.

La résistance à la [pollution informationnelle](https://fr.wikipedia.org/wiki/Pollution_informationnelle) perdait déjà du terrain, lorsque, le 30 Novembre 2022, [OpenAI](https://fr.wikipedia.org/wiki/OpenAI) lança [ChatGPT](https://fr.wikipedia.org/wiki/ChatGPT) son agent conversationnel qui alla marquer les esprits, en générant, à des millions d'utilisateurs, plus de textes que ne pourrait produire une armée d'un million de lycéens.

Très vite l'outil fut utilisé pour produire en quelques minutes des rédactions de plusieurs pages, lesquelles étaient copiés-collés dans des emails, des devoirs d'étudiants, ou des contenus pour nourrir des sites web (et ainsi améliorer leur référencement).

Si une certaine pertinence peut-être au rendez-vous, GPT, Midjourney et [autres intelligences artificielles](https://fr.wikipedia.org/wiki/Art_g%C3%A9n%C3%A9ratif) semblent pouvoir marquer la fin de l'ensemble des originalités et singularités humaines, remplacées par une poignée de "cerveaux" numériques reflétant une partie de ceux de leur poignée de créateurs. D'autant plus froids, fades et uniformes, qu'ils sont bridés pour heurter le moins de sensibilités.

Demain nous serons peut-être plus nombreux à pouvoir éduquer nos propres intelligences numériques ; petits bouts d'éternité ; au même titre que nos enfants biologiques.

**Mais aujourd'hui comme demain ce (vieux) problème devient un enjeu crucial :**

## D'où vient l'information qui nous parvient ?

Pour toutes nos données numérisées, la solution existe pourtant depuis longtemps : [les signatures numériques](https://fr.wikipedia.org/wiki/Signature_num%C3%A9rique).

Hélas ces dernières sont encore très peu utilisées. Et quand elles le sont, c'est
souvent au travers de solutions inutiles car [fermés](https://fr.wikipedia.org/wiki/Logiciel_propri%C3%A9taire) ou au travers de [PKI](https://fr.wikipedia.org/wiki/Infrastructure_%C3%A0_cl%C3%A9s_publiques) dangereuses car centralisées.

En effet, il ne suffit pas qu'une donnée soit signée, pour que l'on puisse être sûr que la personne qui l'a signée est bien qui elle prétend être.

Je pourrais par exemple signer un document "Emmanuel Macron", si vous n'avez pas récupéré la [clé publique](https://fr.wikipedia.org/wiki/Cryptographie_asym%C3%A9trique) permettant de vérifier la signature numérique par un canal sûr (par exemple en main propre), alors vous ne savez absolument pas de quel Emmanuel Macron il s'agit, ni même si il s'agit bien d'un certain "Emmanuel Macron".

Comme vous avez peu de chance de connaître cet "Emmanuel Macron" (et encore moins de recevoir sa clé publique en main propre), "Emmanuel Macron" va produire un [certificat](https://fr.wikipedia.org/wiki/Certificat_%C3%A9lectronique), lequel contiendra sa clé publique, et sera signé par une [autorité de certification](https://fr.wikipedia.org/wiki/Autorit%C3%A9_de_certification).

Sauf que si vous ne savez rien de cette autorité de certification, vous ne
pouvez encore une fois pas être sûr qu'elle est bien qui elle prétend être, et
encore moins qu'elle ne signe pas n'importe quoi n'importe comment.

C'est toute la faille des [PKI](https://fr.wikipedia.org/wiki/Infrastructure_%C3%A0_cl%C3%A9s_publiques) centralisées, sur lesquelles reposent aussi bien
nos documents d'identités, que l'ensemble des sites web soit disant "sécurisés"...

Faille que n'ont pas les [toiles de confiance
OpenPGP](https://fr.wikipedia.org/wiki/Toile_de_confiance).

## Réputation

Grâce à la [la signature numérique](https://fr.wikipedia.org/wiki/Signature_num%C3%A9rique), et aux [toiles de confiance OpenPGP](https://fr.wikipedia.org/wiki/Toile_de_confiance), nous pouvons être sûr qu'une donnée a bien été endossé par une personne bien identifiée.

Mais cela ne nous dit pas si la donnée a bien été produite par ladite personne.

Pour compléter le tableau et enfin lutter efficacement contre la pollution
informationnelle :

* 1 - Toute donnée devrait être accompagné d'un contexte (résumé de son histoire).
* 2 - Donnée et contexte doivent être signé par une personne bien identifiée.
* 3 - Chaque personne doit pouvoir être libre d'associer et de partager des réputations à
  chaque personne.
* 4 - Chaque personne doit être libre d'accorder plus ou moins de crédits aux
  réputations partagées par autrui.

Notons que la première règle est déjà appliquée par les nombreuses personnes qui
savent utiliser des [logiciels de gestion de
versions](https://fr.wikipedia.org/wiki/Logiciel_de_gestion_de_versions), tel
que [Git](https://fr.wikipedia.org/wiki/Git) ou
[Mercurial](https://fr.wikipedia.org/wiki/Mercurial).

La deuxième règle est aussi appliquée lorsque les publications sont signées par
une personne reconnue dans une toile de confiance OpenPGP.

L'article que vous lisez est lui-même une donnée qui respecte ces deux premières
règles. En effet le texte brut de cette page web est stocké dans un dépôt git,
lui même rempli uniquement par des publications itératives (la blockchain  !).

Vous pouvez consulter son contexte historique en dupliquant [ce dépôt](https://github.com/foopgp/foopgp-hugowebsite/) sur votre ordinateur, ou bien en utilisant quelque service web possédant une copie. Par exemple : <https://github.com/foopgp/foopgp-hugowebsite/commits/test/content/french/blog/2023-04-03-lutter-contre-la-polution-informationelle.md>.

Vous pouvez enfin commencer à appliquer la troisième règle en me prêtant une
excellente réputation pour traiter ce genre de sujet. Par contre il n'existe pas
encore de solution aboutie, notamment décentralisée, vous permettant de partager
cette recommandation au monde entier 😋.

## Conclusion

Pour ne pas perdre notre singularité humaine, deux voies se dégagent :

* Refuser le progrès. C'est à dire [interdire](https://www.numerama.com/tech/1324324-litalie-reclame-larret-de-chatgpt-au-nom-du-rgpd.html) au travers de [lois toujours plus complexes et imparfaites](https://www.europarl.europa.eu/news/fr/headlines/society/20201015STO89417/regles-sur-l-ia-ce-que-veut-le-parlement-europeen).
* Poursuivre les travaux de [Philip Zimmermann](https://fr.wikipedia.org/wiki/Philip_Zimmermann) ou [Linus Torvalds](https://fr.wikipedia.org/wiki/Linus_Torvalds) pour pouvoir appliquer l'ensemble des quatre règles énoncées plus haut.

Tandis que certains semblent s'efforcer dans la première voie,
d'autres essayent de [construire](https://datatracker.ietf.org/wg/openpgp/charter/) un futur
durable...


---

*Si cette article vous a plu, n'hésitez pas à rejoindre ou financer
[foopgp](/about/legal-notice/).*

