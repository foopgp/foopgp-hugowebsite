---
Lastmod: 2024-06-04T15:04:27+02:00 # MANAGED BY update_lastmod.sh
title: "Réglement intérieur foopgp"
lang: en
###date: 2019-07-06T15:27:17+06:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Réglement intérieur de l'association foopgp"
image: "images/logos/logo-black-pgp.png"
categories: ["about"]
###tags: [""]
type: "post"


## foopgp Internal Regulations

---

 **⚠ Please note that this is approximate English traduction and there may be some misinterpretation. [French version](/fr/about/rules-of-procedures/) ⚠**

---


The purpose of these internal regulations is to clarify the [statutes](../status-2/) of the foopgp association, whose aim is to bring together all individuals and entities using or developing technological solutions based on OpenPGP standards.

The current internal regulations should be provided to each new member and must be accessible on the association's website: [https://foopgp.org/content/english/about/rules-of-procedures/]().

### Article 1 – Composition

The foopgp association is composed of members (individuals) and partners (entities).

### Article 2 – Amendment of the Internal Regulations

The internal regulations of the foopgp association are established by the Board of Directors in accordance with Article 15 of the [statutes](../status-2/).

They can be amended by the Board of Directors upon the proposal of one of its members.

Any modification must be approved by the General Assembly.

### Article 3 – Membership Fee

For each fiscal year, active members must pay a membership fee, noted as *fee*.

The amount and nature of this fee are determined by the Board of Directors, which submits each change to the approval of the General Assembly.

Any fee paid to the association is non-refundable. No reimbursement of the fee can be claimed in the event of resignation, exclusion, or death of a member during the year.

**The amount of the *fee* defined at the last General Assembly is available on the association's website: https://foopgp.org/fr/about/rules-parameters/**.

The fee should preferably be paid by bank transfer (IBAN: FR76 1027 8079 9800 0208 2780 107) or by check payable to the foopgp association.

### Article 4 – Provisions Related to Power Tokens (Refer to Article 10bis of the Statutes)

All donations to the association received individually (from individuals) entitle the donor to power tokens, according to the formula:

jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ

With:
* jₙ: the quantity of additional tokens
* jₜ: the total quantity of tokens from previous donations (jₜ = jₙ₋₁ + jₙ₋₂ + ... + j₀)
* dₙ: the amount of the nth donation
* dₜ: the total amount of previous donations (dₜ = dₙ₋₁ + dₙ₋₂ + ... + d₀)
* *stingynaltyₙ*: the inflation factor at the time of the nth donation

*Note:* jₙ cannot be negative. If the nth donation does not cover the growth of the inflation factor, then the donation is counted but jₙ is zero.

The correspondence tables between donations and tokens, based on the current and future inflation factors *stingynalty*, can be found on the association's website: https://foopgp.org/en/about/rules-parameters/

### Article 5 – Universal Issuance of New Tokens (see Article 10bis of the Bylaws)

On a monthly basis, new tokens are issued in equal quantity for each active individual member of the association. This mechanism allows for the application of Stéphane Laborde's theory of currency.

Thus, for each of these monthly periods, each active member of the association, meaning up-to-date with their membership fee and obligatory contributions (cf. Articles 3 and 7), may issue, before the end of the said period, a quantity of new tokens equal to:

jₛ= *growth* × Mₜ ∕ N

Where:
* jₛ: the quantity of additional tokens resulting from this issuance
* *growth*: a growth rate of the total mass of all tokens
* Mₜ: the total mass of all tokens (prior to this universal issuance)
* N: The number of active members over the period

The growth rate *growth* adopted during the last general assembly can be consulted on the association's website: https://foopgp.org/fr/about/rules-parameters/

### Article 6 – Wallets

Every token must be associated with one and only one wallet.

Every individual member of the association must possess at least one individual wallet.

Every individual may possess secondary wallets, potentially shareable, in equal proportion, with other individuals.

These wallets are denoted as "W".


### Article 7 – Mandatory Contributions (see Article 10bis of the Bylaws)

Mandatory contributions in tokens may be determined by the board of directors and then adopted at the general assembly.

These contributions will correspond to a percentage of the value of each wallet at the end of the previous period. They are subject to revision at the general assembly.

The total sum of these contributions is referred to as the association tax, and its rate is denoted as "*taxe*".

Moreover, they may be settled in one installment, to the benefit of the association.

Until these contributions are settled, members associated with these wallets do not have access to the rights of active members.

**The total contribution rate *taxe* and its frequency *taxep*, defined at the last general assembly, can be consulted on the association's website: https://foopgp.org/fr/about/rules-parameters/**

### Article 8 – Polynomial Smoothing of Power Quantities (see Article 10bis of the Bylaws)

During each term, active members may express their votes to approve or reject certain resolutions made by the board of directors.

The number of votes for each active member depends on the quantity of power tokens they possess, following the formula:

**v = j^*sharp* = jˢʰᵃʳᵖ**

Where:
* v: the number of votes
* j: the quantity of tokens registered in their possession at the time of voting
* *sharp*: the power exponent, ranging from 0 to 1: 0 ≤ p ≤ 1

*Explanation:*
* *sharp*=0 corresponds to "One person, one vote"
* *sharp*=1 corresponds to "One token, one vote"
* *sharp*=1/2=0.5 corresponds to quadratic voting where v is the square root of j (v=√j)

**The power exponent *sharp* defined at the last general assembly can be consulted on the association's website: https://foopgp.org/fr/about/rules-parameters/**

### Article 9 – Expression of Members' Will (see Article 10bis and Article 11 of the Bylaws)

At each general assembly, active members may express their votes to redefine, among values proposed by the board of directors, certain parameters of this internal regulation:

* the amount of the fee "fee" (see Article 3 of this internal regulation)
* the inflation factor *stingynalty* (see Article 4 of this internal regulation)
* the growth rate "growth" and its frequency "growthp" (see Article 5 of this internal regulation)
* the rates of mandatory contributions and therefore the association tax rate "taxe" and its frequency "taxep" (see Article 7 of this internal regulation)
* the power exponent "sharp" (see Article 8 of this internal regulation)

This expression may utilize the [Schulze method](https://en.wikipedia.org/wiki/Schulze_method).

*Explanation:* the [Schulze method](https://en.wikipedia.org/wiki/Schulze_method) is a [Condorcet method](https://en.wikipedia.org/wiki/Condorcet_method). The inspiration here comes from the [Debian community](https://www.debian.org/vote/).

---

*Adopted in [extraordinary general assembly on Sunday, March 24, 2024, in Pelleautier](/fr/assembly/2024-03-24-report-age/) and in effect since this date until further notice.*

*[Previous internal regulation](../rules-of-procedures-1/)*