---
Title:   GPT - Fin de Partie
Date:    2023-04-03T01:30:00+02:00
Lastmod:    2023-04-03T10:30:00+02:00
License: CC By-SA
Tags:    [ "openpgp", "AI" ]
categories: [ "Study" ]
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

Dans nos sociétés, entretenant au travers de notre système économique, le [postulat d'une vision pessimiste de la nature humaine](https://fr.wikipedia.org/wiki/Homo_homini_lupus_est), nous sommes tous encouragés à produire et à vendre à tout prix ; avec pour seules limites, celles de [lois de plus en plus complexes, et toujours imparfaites](https://fr.wikipedia.org/wiki/L%C3%A9viathan_%28Thomas_Hobbes%29).

Ainsi pour vendre toujours plus de produits comme d'opinions politiques, nous sommes submergés de communications cherchant à se faire passer pour de l'information. Cette confusion délibérée, autrefois cantonné à la publicité, s'est développé avec le marketing débridé inhérent à notre société de (sur)consommation, lui même indissociable de notre système économique et monétaire, basé sur une croissance perpétuelle.

La résistance à la pollution informationnelle perdait déjà du terrain, lorsque, le 30 Novembre 2022, [OpenAI](https://fr.wikipedia.org/wiki/OpenAI) lança [ChatGPT](https://fr.wikipedia.org/wiki/ChatGPT) son agent conversationnel qui alla marquer les esprits, en générant, à des millions d'utilisateurs, plus de textes que ne pourraient produire une armée d'un million de lycéens.

Très vite l'outil fut utilisé pour produire en quelques minutes des rédactions de plusieurs pages, lesquelles étaient copiés-collés dans des emails, des devoirs d'étudiants, ou des contenus pour nourrir des sites web (et ainsi améliorer leur référencement).

Si une certaine pertinence peut-être au rendez-vous, GPT, Midjourney et [autres intelligences artificielles](https://fr.wikipedia.org/wiki/Art_g%C3%A9n%C3%A9ratif) semblent pouvoir marquer la fin de l'ensemble des originalités et singularités humaines, remplacées par une poignée de "cerveaux" numériques reflétant une partie de ceux de leur poignée de créateurs. D'autant plus froids, fades et uniformes, qu'ils sont bridés pour heurter le moins de sensibilités.

Demain nous serons peut-être plus nombreux à pouvoir éduquer des enfants numériques ; petits bouts d'éternité ; au même titre que nos enfants biologiques.

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

C'est toute la faille des PKI centralisées, sur lesquelles reposent aussi bien
nos documents d'identités, que l'ensemble des sites web dit "sécurisés"...

Faille que n'ont pas les [toiles de confiance
OpenPGP](https://fr.wikipedia.org/wiki/Toile_de_confiance).

## Réputation

Grâce à la [la signature numérique](https://fr.wikipedia.org/wiki/Signature_num%C3%A9rique), et aux [toiles de confiance OpenPGP](https://fr.wikipedia.org/wiki/Toile_de_confiance), nous pouvons être sûr qu'une donnée a bien été endossé par une personne bien identifiée.

Mais cela ne nous dit pas si la donnée a bien été produite par ladite personne.

Pour compléter le tableau et enfin lutter efficacement contre la pollution
informationnelle, retrouver nos singularités humaines :

* toute donnée devrait être accompagné d'un contexte (histoire résumé de la donnée).
* donnée et contexte doivent être signé par une personne bien identifiée.
* chaque personne doit pouvoir être libre d'associer et de partager des réputations à
  chaque personne.
* chaque personne doit être libre d'accorder plus ou moins de crédits aux
  réputations partagées par autrui.


Voilà là où s'étaient un peu arrêté les [spécifications
OpenPGP](https://datatracker.ietf.org/wg/openpgp/charter/) (et
[Philip Zimmermann](https://fr.wikipedia.org/wiki/Philip_Zimmermann))).

