---
Title:   GPT - Game Over
Date:    2023-04-03T01:30:00+02:00
Lastmod:    2023-04-16T17:30:00+02:00
License: CC By-SA
Tags:    [ "openpgp", "AI" ]
categories: [ "Opinion" ]
draft: false
author: [ "Jean-Jacques Brucker", "DeepL Translator" ]
description: "How to fight against information pollution"
lang: en
bg_image: "images/blog/2023/dalle-e-1.png"
image: "images/blog/2023/tomfishburne-ai.jpg"
type: "post"
---

*Finding the human singularity in the age of artificial intelligence.*

## Introduction

In our societies, maintaining through our economic system, the [postulate of a pessimistic vision of human nature](https://fr.wikipedia.org/wiki/Homo_homini_lupus_est), we are all encouraged to take, produce and sell more and more; with for only limits, those of [laws more and more complex, and always imperfect](https://fr.wikipedia.org/wiki/L%C3%A9viathan_%28Thomas_Hobbes%29).

Thus to force us to buy more and more, everything becomes a product ([even our opinions](https://fr.wikipedia.org/wiki/Scandale_Facebook-Cambridge_Analytica)), and we are overwhelmed by communications trying to pass themselves off as information. This confusion, formerly confined to advertising, has developed with the unbridled marketing inherent to our [society of overconsumption](https://fr.wikipedia.org/wiki/Soci%C3%A9t%C3%A9_de_consommation), itself inseparable from our economic and monetary system, based on [infinite growth](https://fr.wikipedia.org/wiki/Technocratie).

The resistance to [informational pollution](https://fr.wikipedia.org/wiki/Pollution_informationnelle) was already losing ground, when, on November 30th 2022, [OpenAI](https://fr.wikipedia.org/wiki/OpenAI) launched [ChatGPT](https://fr.wikipedia.org/wiki/ChatGPT) its conversational agent which was going to mark the spirits, by generating, to millions of users, more texts than an army of one million high school students could produce.

The tool was soon used to produce multi-page essays in a few minutes, which were then copied and pasted into emails, student assignments, or content for websites.

If a certain relevance can be found, GPT, Midjourney and [other artificial intelligences](https://fr.wikipedia.org/wiki/Art_g%C3%A9n%C3%A9ratif) seem to mark the end of all human originality and singularity, replaced by a handful of digital "brains", cold and uniform, reflecting only a few parts, restricted to offend as few sensitivities as possible, of the collective intelligence designated by that of the creative engineers.

Tomorrow we will perhaps be more numerous to be able to educate our own digital intelligences; small pieces of eternity; as well as our biological children.

**But today as tomorrow this (old) problem becomes a crucial issue:**

## Where does the information that reaches us come from?

For all our digital data, the solution has existed for a long time: [digital signatures](https://fr.wikipedia.org/wiki/Signature_num%C3%A9rique).

Unfortunately, these are still very little used. And when they are, it is often through useless solutions because [closed](https://fr.wikipedia.org/wiki/Logiciel_propri%C3%A9taire) or through [PKI](https://fr.wikipedia.org/wiki/Infrastructure_%C3%A0_cl%C3%A9s_publiques) dangerous because centralized.


Indeed, it is not enough that a data is signed, for us to be sure that the person who signed it is really the person he claims to be.

For example, I could sign a document "Emmanuel Macron", if you haven't retrieved the [public key](https://fr.wikipedia.org/wiki/Cryptographie_asym%C3%A9trique) allowing you to verify the digital signature through a secure channel (for example by hand), then you have no idea which Emmanuel Macron it is, or even if it is a certain "Emmanuel Macron".

Since you are unlikely to know this "Emmanuel Macron" (and even less likely to receive his public key in person), "Emmanuel Macron" will produce a [certificate](https://fr.wikipedia.org/wiki/Certificat_%C3%A9lectronique), which will contain his public key, and will be signed by a [certification authority](https://fr.wikipedia.org/wiki/Autorit%C3%A9_de_certification).

Except that if you don't know anything about this certification authority, you still can't be sure that it is who it claims to be, and even less sure that it doesn't sign anything much less that it doesn't sign anything in any way.

This is the flaw of centralized [PKI](https://fr.wikipedia.org/wiki/Infrastructure_%C3%A0_cl%C3%A9s_publiques), on which are based our identity documents, as well as all the so-called "secured" web sites...

Flaw that the [OpenPGP webs of trust](https://fr.wikipedia.org/wiki/Toile_de_confiance) do not have.

## Reputation

Thanks to the [digital signature](https://fr.wikipedia.org/wiki/Signature_num%C3%A9rique), and the [OpenPGP webs of trust](https://fr.wikipedia.org/wiki/Toile_de_confiance), we can be sure that a data has been endorsed by a well identified person.

But this does not tell us whether the data was actually produced by the person.

To complete the picture and finally fight effectively against
pollution:

* 1 - All data should be accompanied by a context (summary of its history).
* 2 - Data and context must be signed by a well identified person.
* 3 - Each person should be free to associate and share reputations with each person.
* 4 - Each person must be free to give more or less credit to the reputations shared by others.

Note that the first rule is already applied by the many people who
know how to use [version control software] (https://fr.wikipedia.org/wiki/Logiciel_de_gestion_de_versions), such as [Git](https://fr.wikipedia.org/wiki/Git) or [Mercurial](https://fr.wikipedia.org/wiki/Mercurial).

The second rule is also applied when publications are signed by
a person recognized in an OpenPGP web of trust.

The article you are reading is itself data that respects these first two
rules. Indeed the raw text of this web page is stored in a git repository,
itself filled only by iterative publications ([concept taken over by
the "blockchain"...](https://netfuture.ch/2022/02/git-pgp-blockchain-comparison/)).

You can view its historical context by duplicating [this repository](https://github.com/foopgp/foopgp-hugowebsite/) on your computer, or by using some web service with a copy. For example: <https://github.com/foopgp/foopgp-hugowebsite/commits/test/content/french/blog/2023-04-03-lutter-contre-la-polution-informationelle.md>.

You can finally start applying the third rule by giving me an
excellent reputation for dealing with this kind of subject. However there is not yet a complete solution, especially a decentralized one, that would allow you to share
this recommendation to all the people in the world 😋.

## Conclusion

In order not to lose our human singularity, two paths emerge:

* Reject progress. That is, [prohibit](https://www.numerama.com/tech/1324324-litalie-reclame-larret-de-chatgpt-au-nom-du-rgpd.html), through [ever more complex and imperfect laws](https://www.europarl.europa.eu/news/fr/headlines/society/20201015STO89417/regles-sur-l-ia-ce-que-veut-le-parlement-europeen).
* Continue the work of [Philip Zimmermann](https://fr.wikipedia.org/wiki/Philip_Zimmermann) or [Linus Torvalds](https://fr.wikipedia.org/wiki/Linus_Torvalds) to be able to apply all the four rules stated above.

While some people seem to try to do the first way,
others try to [build](https://datatracker.ietf.org/wg/openpgp/charter/) a sustainable future...

---

*If you liked this article, feel free to join or fund [foopgp](/about/legal-notice/).*
