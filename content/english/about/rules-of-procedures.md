---
title: "foopgp internal regulations"
lang: en
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Internal regulations of the foopgp association"
image: "images/logos/logo-black-pgp.png"
categories: ["about"]
type: "post"
---

> ℹ️ *This page is a quasi-automatic translation. Only the [French version](/fr/about/rules-of-procedures/) is authoritative.*

## foopgp internal regulations

---

These internal regulations aim to specify [the bylaws](../status/) of the foopgp association, whose purpose is to bring together all individuals or legal entities that use or develop technological solutions based on OpenPGP standards.

The internal regulations in force should be given to every new member, and must be available on the association's website: https://foopgp.org/about/rules-of-procedures/ .


### Article 1 — Composition

The foopgp association is composed of members: individuals, and partners: legal entities.


### Article 2 — Amendment of the internal regulations

The internal regulations of the foopgp association are established by the board of directors in accordance with article 15 of the [bylaws](../status/).

They may be amended by the board of directors at the proposal of one of its members.

Any amendment must be approved by the general meeting.

### Article 3 — Membership fees

At any time, members may pay free-amount membership fees, in euros.

The greater the sum of these fees, the more power tokens the member will hold (see article 4 of the internal regulations).

Any fee paid to the association is acquired definitively. No refund of a fee may be required in the event of resignation, exclusion or death of a member during the year.

The fee payment should preferably be made by bank transfer[^IBAN] or by cheque made out to the foopgp association.

[^IBAN]: IBAN: FR76 1027 8079 9800 0208 2780 107

### Article 4 — Terms relating to power tokens (see Article 10bis of the Bylaws)

All fees paid to the association on an individual basis (natural person) entitle the contributor to power tokens, according to the formula:

**jₙ = log₂( (cₙ+cₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Where:
* log₂(): the binary logarithm — that is, base 2:
  log₂(x) = ln(x) / ln(2)
* jₙ: the quantity of additional tokens
* cₙ: the amount of the *n*-th fee, measured in euros (€).
* cₜ: the total amount of previous fees (cₜ = cₙ₋₁ + cₙ₋₂ + ... + c₀ )
* *stingynaltyₙ*: the inflation factor at the time of the *n*-th fee
* jₜ: the total quantity of tokens issued from previous fees (jₜ = jₙ₋₁ + jₙ₋₂ + ... + j₀)

Where *stingynalty* grows automatically on the first day of each month, at 00:00. If this growth rate is 5 per thousand (5 ‰):

**stingynaltyₙ = stingynaltyₙ₋₁ + 0.005 × stingynaltyₙ₋₁**

*Explanation:* by choosing an inflation factor higher than those calculated in the euro area (e.g. Eurostat), we can create a mild "[Fear Of Missing Opportunity](https://en.wikipedia.org/wiki/Fear_of_missing_out)".

In the event of significant inflation in the euro area, an adjustment of the *stingynalty* parameter may be determined by the board of directors and then adopted at a general meeting.

*Note:* jₙ cannot be negative. If the *n*-th fee does not offset the growth of the *stingynalty* inflation factor, the fee is recorded but no token is created: jₙ is zero.

Note: at the time of the first fee, the formula simplifies to:

**j = log₂(c+1) / *stingynalty***

Where:
* j: the quantity of tokens
* c: the amount of the fee, measured in euros (€)
* *stingynalty*: the inflation factor

**Tables of correspondence between fees and tokens, as a function of current and forthcoming *stingynalty* inflation factors, are available on the association's website: https://foopgp.org/about/rules-parameters/**

### Article 4bis — Certification and validation

In order to use or exchange any power token, each member must be validated by the association.

This validation is automatic as soon as the two following criteria are met:
- Being up to date with their mandatory contributions (see article 7 of the present document and article 10bis of the Bylaws).
- Being certified by the association.

This certification goes through a unique identifier, computed from civil-status data conforming to standard ISO/IEC 7501-1:2008[^ISO7501-1].

This certification may rely on OpenPGP webs of trust[^PGPWOT], which can be strengthened during "Key Signing Parties"[^KSP].

[^ISO7501-1]: [ISO/IEC 7501-1:2008 Identification cards — Machine readable travel documents — Part 1: Machine readable passport](https://www.iso.org/standard/45562.html)

[^PGPWOT]: <https://en.wikipedia.org/wiki/Web_of_trust>

[^KSP]: <https://en.wikipedia.org/wiki/Key_signing_party>

### Article 5 — Universal issuance of new tokens (see Article 10bis of the Bylaws)

Each month, new tokens are issued in equal quantity to every validated individual member of the association. **This mechanism allows the application of [Stéphane Laborde's Relative Theory of Money](https://trm.creationmonetaire.info/).**

Thus, for each of these monthly periods, every validated member of the association — that is, certified and up to date with their fees and mandatory contributions (see articles 3 and 7) — may issue, before the end of the said period, a quantity of new tokens equal to:

**jₛ= *growth* × Mₜ ∕ N**

Where:
* jₛ: the quantity of additional tokens from this issuance
* *growth*: a growth rate of the total mass of all tokens
* Mₜ: the total mass of all tokens (before this universal issuance)
* N: the number of members over the period

**The *growth* rate adopted at the last general meeting is available on the association's website: https://foopgp.org/about/rules-parameters/**

### Article 6 — Wallets

Every token must be associated with one and only one wallet.

Every individual member of the association must own at least one individual wallet.

Any individual may own secondary wallets, possibly shared, in equal proportion, with other individuals.

These wallets are denoted "W".

### Article 7 — Mandatory contributions (see Article 10bis of the Bylaws)

Mandatory contributions in tokens may be determined by the board of directors and then adopted at a general meeting.

These contributions correspond to a percentage of the value of each wallet at the end of the previous period. They are revisable at a general meeting.

The sum of these contributions is called the association tax and its rate is denoted "*taxe*".

They may also be settled in a single payment, for the benefit of the association.

As long as these contributions are not settled, the members associated with these wallets are considered suspended (see article 8 of the bylaws).

**The total contribution rate *taxe* and its periodicity *taxep* defined at the last general meeting are available on the association's website: https://foopgp.org/about/rules-parameters/**

### Article 8 — Polynomial smoothing of power quantities (see Article 10bis of the Bylaws)

During each fiscal year, members may cast their votes to validate, or not, certain resolutions taken by the board of directors.

The number of votes of each validated member depends on the quantity of power tokens they hold, according to the formula:

**v = j^*sharp* = jˢʰᵃʳᵖ**

Where:
* v: the number of votes
* j: the quantity of tokens recorded in their possession at the time of the vote
* *sharp*: the power exponent, between 0 and 1: 0 ≤ p ≤ 1

*Explanation:*
* *sharp*=0 is equivalent to "*One person, one vote*"
* *sharp*=1 is equivalent to "*One token, one vote*"
* *sharp*=1/2=0.5 is equivalent to quadratic voting where v is the square root of j (v=√j)

**The power exponent *sharp* defined at the last general meeting is available on the association's website: https://foopgp.org/about/rules-parameters/**

### Article 9 — Expression of the members' will (see Article 10bis and Article 11 of the Bylaws)

At each general meeting, members may cast their votes to redefine, among values proposed by the board of directors, certain parameters of the present internal regulations:

* the inflation factor *stingynalty* (see article 4 of the present internal regulations)
* the growth rate "*growth*" and its periodicity "*growthp*" (see article 5 of the present internal regulations)
* the mandatory contribution rates, and therefore the association tax rate "*taxe*" and its periodicity "*taxep*" (see article 7 of the present internal regulations)
* the power exponent "*sharp*" (see article 8 of the present internal regulations)

This expression may use the [Schulze method](https://en.wikipedia.org/wiki/Schulze_method).

*Explanation:* the [Schulze method](https://en.wikipedia.org/wiki/Schulze_method) is a [Condorcet method](https://en.wikipedia.org/wiki/Condorcet_method). The inspiration here comes from [the Debian community](https://www.debian.org/vote/).

---

*Adopted at the [extraordinary general meeting of Sunday 20 July 2025 in Pelleautier](/fr/assembly/2025-07-20-report-age/) and in effect since that date until further notice.*

*[Previous internal regulations](../rules-of-procedures-old/)*

