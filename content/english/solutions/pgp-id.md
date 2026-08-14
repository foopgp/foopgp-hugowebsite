---
title: "PGP ID"
lang: en
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "A universal, sovereign digital identity anchored in a physical key."
image: "images/solutions/identity.png"
tags: ["Identity", "PGP ID", "openpgp"]
categories: ["solution"]
type: "post"
aliases:
  - /solutions/openpgp-id/
  - /solutions/theme-identity/
---

### PGP ID, in a nutshell

**PGP ID** is a digital identity that is:

- **universal** — characterises [all persons](/blog/2026-04-28-openpgp-id-spec/) of the solar system: physical (humans), legal (organisations), even digital (AI agents);
- **decentralised** — no central authority, no third-party identity provider, [no cloud vault to trust](/blog/2026-05-11-djibian-agentforwarding/);
- **respectful** — built on the strongest encryption primitives we have, so as to protect your privacy as fully as possible;
- **interoperable** — usable anywhere PGP is accepted (email signing and encryption, document signing, SSH authentication, supply-chain traceability, git, …);
- **sovereign** — your private keys are *yours*, on a [physical security key](/solutions/offer-security-keys/) (YubiKey / NitroKey) you hold in your hand;
- **long-lived** — your **EID** (*Entity IDentifier*, see below) is stable for life; the certificates that back it can be rotated (post-quantum migration, etc.) without changing who you are.

Since [January 2026](/blog/2026-01-19-djibian-release/), **PGP ID is in production**, shipped in the [Djibian GNU/Linux](/blog/2026-01-19-djibian-release/) operating system.

### The EID, your entity identifier

Under the hood, your PGP ID is anchored in an **EID** (*Entity IDentifier*): a **deterministic** identifier, computed once and for all from your birth civil records (`u4` variant) or from a moment and place of origin (`u5` variant) — for instance `urn:eid:u4vb6UZTMKsllgoH760pc0xwe_42.17-002.76`. Anyone can recompute, verify and certify your EID from that origin data, **without any central service or registry**. It precedes your cryptographic keys and outlives them: certificates get renewed, the EID remains.

> ✨ **Try it**: [generate your EID](/eid/) right in your browser.

> 🔎 **Digging deeper**: [the technical article](/blog/2026-04-28-openpgp-id-spec/) details how EIDs are built, and the RFC draft [draft-foopgp-urn-eid-00](//codeberg.org/foopgp/foopgp-hugowebsite/src/branch/public/public/documents/en/draft-foopgp-urn-eid-00.txt) specifies the `eid` URN namespace, meant to be reserved with IANA.

### What is a sovereign digital identity good for?

In practice, your **PGP ID** lets you:

- **[Authenticate](/solutions/theme-authentication/)** without passwords on online services — including [on any remote Djibian machine](/blog/2026-05-11-djibian-agentforwarding/), without ever placing a private key on it.
- **[Sign](/solutions/signature/)** your documents, emails, commits, contracts — *non-repudiable* proof of origin.
- **[Encrypt](/solutions/encryption/)** your exchanges and personal data, i.e. keep them *private*.
- **[Certify](/solutions/theme-authentication/) the people close to you** and weave your [web of trust](https://en.wikipedia.org/wiki/Web_of_trust).
- **Stop being subjected** to identity theft, [informational pollution](/blog/2023-04-03-lutter-contre-la-polution-informationelle/), or generative-AI misuse.

And more broadly, [a step](/solutions/theme-vote/) toward [abolishing certain privileges](/solutions/theme-currency/), and gaining more freedom, equality, fraternity. [✊🕊️💕](/about/join/)

### Giving birth to your PGP ID

On a **Djibian** system, the **foodjis** *(djibian-onboarding)* graphical assistant guides the creation of a PGP identity in about a dozen clicks:

1. Launch **foodjis** (menu *Applications → Accessories → djibian-onboarding*).
2. Menu **PGP ID → *Generate an identity***.
3. Choose what is being identified: a **person** (`u4` variant) or **another entity** — association, company, software (`u5` variant).
4. Fill in the birth civil status — or, for another entity, its place and instant of origin.
5. Verify the information, then give an email address.
6. **Print the QR codes** (five sheets, of which three will be enough to rebuild the key — see below).
7. Insert your **YubiKey** or **NitroKey**, then menu **PGP ID → *Set up a key***.
8. **Scan the QR codes** — the private keys are etched into the physical key.
9. Done: your **PGP ID** is born.

> *Everything offline, no third-party server call. Video demo in the [release article](/blog/2026-01-19-djibian-release/).*

### Backup: paper QR codes, secret sharing

The foopgp tools generate and print your private keys as **paper fragments**, encrypted and split using a [secret sharing](https://en.wikipedia.org/wiki/Secret_sharing) (Shamir) scheme: by default, **3 fragments out of 5 printed** are enough to reconstitute the key.

| ![Fragment 1/5](/images/solutions/pgp-id/qrcode-fragment-1.png) | ![Fragment 2/5](/images/solutions/pgp-id/qrcode-fragment-2.png) | ![Fragment 5/5](/images/solutions/pgp-id/qrcode-fragment-5.png) |
|:---:|:---:|:---:|
| *Fragment 1/5* | *Fragment 2/5* | *Fragment 5/5* |

A few properties to know:

- **No isolated fragment reveals anything** — you need the quorum (3 here) to reconstitute.
- **Offline by construction**: fragments live on paper only, never on a cloud, never on a connected disk.
- **Resilience**: losing one or two fragments is not fatal; losing your YubiKey is not either, as long as you have your quorum of fragments.
- **Entrusting fragments to people you trust** is a common strategy: one fragment with a relative, one with a friend, one in a safe — and impersonation becomes very hard.

### Transposing to a physical key

Once your private keys have been fragmented onto paper sheets, another foopgp tool reads the QR codes via a webcam or scanner and **etches** the keys into a YubiKey or a NitroKey. The private keys never touch a hard drive nor a third-party service.

From there, your identity is exercised **from your hand** on any PGP-compatible service: [sign](/solutions/signature/), [decrypt](/solutions/theme-email/), [authenticate](/blog/2026-05-11-djibian-agentforwarding/) — the **PGP ID** physical key protects your privacy and your human singularity in the digital world.

Here is the **foodjis** *(djibian-onboarding)* welcome screen once your key is set up. Everything on it is read from the plugged-in physical key: avatar, common name, **EID**, certificate fingerprint, validity dates, number of certifications received, emails and other details. The slider at the bottom is the **credibility** *you* grant that identity to certify others — it stays on your machine until you choose to share it:

![PGP ID card as displayed by foodjis (djibian-onboarding)](/images/solutions/pgp-id/Phil_ID_EN.png)

*Illustration — a demonstration certificate, rebuilt from the fragments printed above: the EID is indeed the same one. Photograph of [Phil Zimmermann](https://en.wikipedia.org/wiki/Phil_Zimmermann), inventor of PGP — [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:PRZ_closeup_cropped.jpg), CC BY-SA 3.0.*

### In short

**PGP ID** makes real digital sovereignty possible: no password to forget, no cloud vault to trust, no dependence on an external identity provider. An identity that is **yours**, anchored in a physical object you carry, and **usable everywhere**.

**While others sell you technologies that enslave you, foopgp enables everyone to embrace technologies that serve us.** Safer, leaner, and entirely sovereign.

---
