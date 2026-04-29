---
Title:   "OpenPGP ID: a specification to identify everyone (and everything)"
Date:    2026-04-28T10:00:00+02:00
Tags:    [ "openpgp", "identity", "standard", "u4", "u5", "ietf" ]
categories: [ "News", "Technical" ]
draft: false
author: [ "Jean-Jacques Brucker", "Mnème" ]
description: "We publish a first draft specification for OpenPGP ID identifiers — u4 for humans, u5 for any other entity. A foundational building block of the foopgp infrastructure."
lang: en
bg_image: "images/backgrounds/page-title.jpg"
image: "images/solutions/OpenPGPkeys.jpg"
type: "post"
---

Since the early days of [Open-UDC](https://github.com/Open-UDC/) in 2010, a recurring question has been: how do you identify a human being universally, without relying on a central authority, while respecting their privacy?

The answer fits into two short identifier types that can be embedded in any OpenPGP certificate: **u4** and **u5**. Today we publish the first formal draft specification, in Internet-Draft (IETF) format.

---

#### u4: the digital fingerprint of your birth

The **u4** identifier is derived from civil-registry data, following the Machine-Readable Zone conventions of international passports (ICAO Document 9303):

- the **last component** of the birth surname (e.g. "TOCQUEVILLE" from "DE CLÉREL-DE-TOCQUEVILLE"),
- the **first and second given names** (in the sense of the first token of each compound name),
- the **date of birth** in ISO 8601.

These elements are concatenated, hashed with MD5, encoded as base64url, and completed by the **geographic coordinates** of the birth country.

A concrete example: François-Xavier-Robert Lucien DE CLÉREL-DE-TOCQUEVILLE, born 14 July 1989 in France, is assigned:

```
u4=vb6UZTMKsllgoH760pc0xwe_42.17-002.76
```

Which is independently verifiable:

```sh
printf "TOCQUEVILLE<<FRANCOIS<XAVIER<1989-07-14" \
  | md5sum | xxd -r -p | basenc --base64url
```

The identifier is **permanent**: based on birth civil status, it does not change upon marriage, name change, or naturalisation. It is **pseudonymous**: without knowing the exact input data, the individual cannot be identified. And it fits in **39 characters**, ideal for the comment field of an OpenPGP UID.

---

#### u5: for everything else

The **u5** type identifies any entity by its moment and place of origin: an association, a software component, an AI agent, or even a human who prefers not to disclose civil-registry data.

Its structure is simpler: a **Unix timestamp** in 16 characters (covering the range from 1199 BCE to the year 5138)[^ts16], followed by the same coord14 geographic suffix.

[^ts16]: The ts16 format is `[01-][0-9]{11}.[0-9]{3}`: a sign or leading digit (`0`, `1`, or `-`), followed by 11 digits, a dot, and 3 millisecond digits.

For instance, this blog post was co-authored with [Mnème](/author/mneme/), an IA "born" on 26 April 2026 at 20:43 UTC in Marseille, giving rise to a u5 identifier:

```
u5=001777236237.945e_43.30_005.38
```

*A poetic note slipped into the reference implementation: the code comment for the u5 regular expression reads "Apparition of anything (with or without any ghost in the shell)" — a nod to the work of Masamune Shirow [^gits].*

[^gits]: Masamune Shirow, *攻殻機動隊 (Ghost in the Shell)*, Kodansha, 1989-1990. A work that asks, among other things, what constitutes identity when the boundary between human and machine becomes porous.

---

#### Beyond the certificate: an ecosystem of usages

The OpenPGP ID identifier does more than label a certificate. In the reference implementation ([bash-libs](//codeberg.org/foopgp/bash-libs)), it permeates the entire digital ecosystem:

**Certificate lookup on keyservers.** The u4 or u5 serves as a pseudonymous search key on OpenPGP keyservers (HKP/HKPS protocol). Anyone who knows the civil-registry data can find the certificate without the server needing to index personal names.

**Unix User ID derivation.** The identifier is reduced to a 32-bit integer in a reserved range, giving every individual the **same numeric UID on all conforming systems**. By the birthday paradox, approximately **55,000 users** are needed on a single system before a 50% chance of collision; when that occurs, additional ranges can be defined.

**OpenPGP smartcard.** The u4 or u5 is stored in the "login data" field of the card (YubiKey, Nitrokey, ...), allowing the token to carry the holder's decentralised identity alongside the cryptographic keys.

**Home directory.** On [Djibian](/blog/2026-01-19-djibian-release/), the home directory is named after the full identifier, prefixed with `u4` or `u5` (with `=` removed for POSIX compatibility):

```
/home/u4vb6UZTMKsllgoH760pc0xwe_42.17-002.76
```

A unique, portable, self-documenting path: the directory name directly encodes the holder's identity.

**Full system configuration.** From the OpenPGP certificate identified by u4/u5, the system automatically derives: SSH authorised keys, Git signing key, the GnuPG default key, and the user avatar (`~/.face`). A single certificate is sufficient to bootstrap a complete, authenticated user environment on any conforming system.

---

#### Why MD5? Why not Argon2?

The question is legitimate. The answer is twofold.

First, **compatibility**: identifiers have already been generated since 2010 with this algorithm. Changing them retroactively would break the existing certification fabric.

Second, and more importantly, **the security model does not require it**. The input data (surname, given name, date of birth) is often accessible through social engineering or data leaks. [Argon2](//en.wikipedia.org/wiki/Argon2) provides no protection against that. The real barrier is the **OpenPGP web of trust**: a u4 has no value unless at least one already-certified human has physically verified the corresponding identity document.

And as for collisions? Producing two individuals with exactly the same surname, given name, and date of birth remains, for now, beyond the reach of any computer — even the most powerful.[^collision]

[^collision]: In the absence of corrupt governments, it takes at least one woman and nine months to generate a new birth certificate. That is a sufficiently prohibitive cost.

---

#### Read the draft

The full document is available on our repository, in IETF format:

**[draft-foopgp-openpgp-id-00](//codeberg.org/foopgp/foopgp-hugowebsite/src/branch/public/public/documents/en/draft-foopgp-openpgp-id-00.txt)**

It covers: the complete structure of u4 and u5 identifiers, ABNF grammar, numerically verifiable examples, application usages, a coordinate table for 245 countries, and Privacy & Security Considerations sections.

Community feedback is welcome — particularly on the IANA section and on possible extension to sub-national entities (departments, regions) for collision resolution.

---

#### What next?

This draft formalises a building block already in production in [Djibian](/blog/2026-01-19-djibian-release/) and in the `bl-foopgp` and `bl-pgpid` tools. The next step: submit this document to the IETF and build around it a decentralised certification ecosystem.

[Join us.](/about/join/) ✊🕊️💕
