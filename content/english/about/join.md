---
title: "Invest"
lang: en
draft: false
bg_image: "images/backgrounds/Cartographie.jpg"
description : "The dji (Ɉ), the currency that sets us free."
image: "images/logos/logo-foopgp-token-0.png"
---

> 📣 **Our June campaign is live — [support us now](https://www.helloasso.com/associations/friends-of-openpgp-foopgp/collectes/juin-2)**

The best way to support [the project](/about/white-book/) is to invest in the form of **subscriptions**.

These subscriptions, **at a price of your own choosing**, give you your first **foopgp tokens** and
fund the work of the association to enable **the transition** from a monetary,
economic and political system that destroys our lives and our planet, [**to a 
system more respectful of all living things**](/about/white-book/). [^wb]

[^wb]: Our [white paper](/about/white-book/): <https://foopgp.org/about/white-book/>

---

## The foopgp token

The foopgp tokens, also called ***djis*** (**Ɉ**), are comparable to shares: they are freely exchangeable between members of the association and, when we have to make decisions that do not reach consensus, we vote with a number of votes that depends on the amount of djis held in our nominative wallets.

However, the comparison ends there, as these tokens have other very interesting characteristics:

- The creation of these tokens is extremely rigorous and democratic. See Articles 4 and 5 of our [rules of procedures](/about/rules-of-procedures/). [^RI4] [^RI5]

- The return-on-investment multiplier decreases with the amount invested. See this [nice 3D graph](https://www.math3d.org/VHvPcDNBY9).

- Large shareholders do not necessarily have more power than small ones. Our rules let us fine-tune the cursor between "one share, one vote" and "one person, one vote". See Article 8 of our [rules of procedures](/about/rules-of-procedures/).

- Thanks to the [technologies we assemble and develop](/solutions/activity-rd/) ([OpenPGP](/about/openpgp/), [git](https://en.wikipedia.org/wiki/Git), [blockchain](https://netfuture.ch/2022/02/git-pgp-blockchain-comparison/), ...), exchanges in *djis* (**Ɉ**) are extremely easy and inexpensive, for the whole world.

---

## What will the dji be worth?

Suppose we are in February 2026 and that the size of the economic pie no longer moves.

In the eurozone, [the M1 money supply](https://tradingeconomics.com/euro-area/money-supply-m1) stands at 11,235,768 million euros, that is on average: 11,235,768 / 350 ≈ €32,102.19 per citizen of the zone. [^momentum]

This figure is a reference to which we can apply the simplified dji-creation formula: *DJI = log₂(EUR + 1) / stingynalty*. [^RI4]

The *stingynalty* parameter having been set by General Assembly at 1.10489557718673078682 for this February 2026, we therefore have *log₂(32102.19+1)/1.10489557718673078682 ≃ 13.549179*.

So as soon as we start using the dji (emancipating) in place of the euro (which causes so many ills), on average we exchange and use 13.549179 Ɉ for €32,102.19.

That is, one dji (Ɉ) is worth 32102.19 / 13.549179 = €2,369.31.

```bash
# bc -l <<<"11235768/350"
32102.19428571428571428571
# bl-foopgp --date 2026-02-02 g2t 32102.19
13.549179
# bc -l <<<"32102.19/13.549179"
2369.30887103934489314813
```

Let us now refine:
- Downward pressure: the "universal dividend". [^RI5]
- Upward pressure: the **stingynalty** parameter (designed to contain the pressure of the "universal dividend" or euro inflation). [^RI4]
- Downward, then upward pressure: not everyone holds €32,102.19 on average in their bank account... [^momentum]
- Upward pressure: the dji is the social share of a company that produces innovations such as [**OpenPGP ID**](/blog/2026-01-19-djibian-release/) and [**Djibian**](/blog/2026-02-10-djibian-tour/). These products take on (among others) the market shares of Microsoft and Apple, that is (for those two alone): [7,200 billion in combined market capitalisation (in 2025)](https://www.clubic.com/actualite-574953-non-apple-et-microsoft-ne-connaissent-pas-la-crise.html).

[^RI4]: Article 4 of our [rules of procedures](/about/rules-of-procedures/#article-4---modalités-relatives-aux-jetons-de-pouvoir-confer-article-10bis-des-statuts): <https://foopgp.org/about/rules-of-procedures/>
[^RI5]: Article 5 of our [rules of procedures](/about/rules-of-procedures/#article-5--émission-universelle-de-nouveaux-jetons-confer-article-10bis-des-statuts): <https://foopgp.org/about/rules-of-procedures/>
[^momentum]: momentum: ~99% of eurozone citizens have an interest in adopting the dji, precisely because they sit below that average. Compared to the euro, an additional upward pressure will appear when, even for the wealthiest ~1%, what we produce is bought in ***our*** currency — emancipating — rather than in ***their*** currency, which costs them nothing (or close to nothing, cf. the Cantillon effect).


Thus the first calculation only represents the case where society produces nothing, in a perfectly egalitarian economy.

And the figure of €2,369.31 is only a floor estimate.

Now let time flow again: it is quite likely that one day, **the value of one dji will clearly exceed €2,500** (1 Ɉ > €2,500). [^risks]

[^risks]: Any investment carries a risk of partial or total capital loss.

---

## And the physical security key?

As soon as you have generated **6.42 Ɉ** through your cumulative subscriptions, you receive a **physical security key** ([Yubikey](https://www.yubico.com/) or [Nitrokey](https://www.nitrokey.com/)) so that you can **[use](/blog/2026-01-19-djibian-release/) your decentralised digital identity [OpenPGP ID](/solutions/openpgp-id/)** — the cornerstone of foopgp's digital sovereignty. The threshold in euros rises by approximately 0.5% each month: this is the **stingynalty** mechanism made tangible, and an incentive to join the association sooner rather than later. [^threshold]

| Date | Subscriptions needed to reach 6.42 Ɉ |
|---|---|
| February 2026 | ≈ €135.57 |
| May 2026      | ≈ €146.08 |
| August 2026   | ≈ €157.57 |
| December 2026 | ≈ €174.61 |
| May 2027      | ≈ €199.09 |
| May 2028      | ≈ €276.43 |

[^threshold]: The threshold is expressed **in djis**, not in euros — so it evolves automatically and impartially with the association's monetary mechanics, with no commercial manager having to arbitrate it. The `bl-foopgp t2g 6.42` function lets anyone verify the equivalent in euros at any given date.

---

## Ready to generate your djis?

Then take your stake and 🌟 [**subscribe**](/djis-emission/) [here](/djis-emission/) 🌟.

Or please [download the membership form here](/documents/fr/bulletin-adhesion-foopgp.pdf) (currently in French only), fill it out, and send it.

- by post, accompanied by a cheque made out to the ***foopgp association***,
  *75 Impasse Serre des Isnards*, *05000 Pelleautier*, France.

- by email to [info at foopgp.org](mailto:info@foopgp.org), indicating the reference
  of the transfer made in parallel to our account ***IBAN: FR76 1027 8079 9800 0208 2780 107***.

**Welcome home**: ***our*** new **world**! 🥰

---

