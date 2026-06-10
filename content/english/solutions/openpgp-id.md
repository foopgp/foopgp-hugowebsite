---
title: "OpenPGP ID"
lang: en
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "A universal, sovereign digital identity anchored in a physical key."
image: "images/solutions/identity.png"
tags: ["Identity", "OpenPGP ID", "openpgp"]
categories: ["solution"]
type: "post"
aliases:
  - /solutions/theme-identity/
---

### OpenPGP ID, in a nutshell

**OpenPGP ID** is a digital identity that is:

- **universal** — characterises [all persons](/blog/2026-04-28-openpgp-id-spec/) of the solar system: physical (humans), legal (organisations), even digital (AI agents);
- **decentralised** — no central authority, no third-party identity provider, [no cloud vault to trust](/blog/2026-05-11-djibian-agentforwarding/);
- **respectful** — built on the strongest encryption primitives we have, so as to protect your privacy as fully as possible;
- **interoperable** — usable anywhere OpenPGP is accepted (email signing and encryption, document signing, SSH authentication, supply-chain traceability, git, …);
- **sovereign** — your private keys are *yours*, on a [physical security key](/solutions/offer-security-keys/) (YubiKey / NitroKey) you hold in your hand;
- **long-lived** — your `u4` or `u5` identifier is stable for life; the certificates that back it can be rotated (post-quantum migration, etc.) without changing who you are.

Since [January 2026](/blog/2026-01-19-djibian-release/), **OpenPGP ID is in production**, shipped in the [Djibian GNU/Linux](/blog/2026-01-19-djibian-release/) operating system.

### What is a sovereign digital identity good for?

In practice, your **OpenPGP ID** lets you:

- **[Authenticate](/solutions/theme-authentication/)** without passwords on online services — including [on any remote Djibian machine](/blog/2026-05-11-djibian-agentforwarding/), without ever placing a private key on it.
- **[Sign](/solutions/signature/)** your documents, emails, commits, contracts — *non-repudiable* proof of origin.
- **[Encrypt](/solutions/encryption/)** your exchanges and personal data, i.e. keep them *private*.
- **[Certify](/solutions/theme-authentication/) the people close to you** and weave your [web of trust](https://en.wikipedia.org/wiki/Web_of_trust).
- **Stop being subjected** to identity theft, [informational pollution](/blog/2023-04-03-lutter-contre-la-polution-informationelle/), or generative-AI misuse.

And more broadly, [a step](/solutions/theme-vote/) toward [abolishing certain privileges](/solutions/theme-currency/), and gaining more freedom, equality, fraternity. [✊🕊️💕](/about/join/)

### Giving birth to your OpenPGP ID

On a **Djibian** system, the **Djibian Onboarding** graphical frontend (developed by [Sébastien Picardeau](/author/sebastien-picardeau/)) guides the creation of an OpenPGP identity in about a dozen clicks:

1. Launch **Djibian Onboarding** (menu *Applications → Accessories*).
2. Choose *« Configure your OpenPGP security key »*.
3. Insert your **YubiKey** or **NitroKey** — it is detected automatically.
4. First time? *« Create my OpenPGP identity »*.
5. Fill in birth name, given names, date of birth, country of birth, email.
6. Verify the information.
7. **Print the QR codes** (at least three sheets — see below).
8. **Scan the QR codes** — the key is etched into your YubiKey/NitroKey.
9. Done: your **OpenPGP ID** is born.

> *Everything offline, no third-party server call. Video demo in the [release article](/blog/2026-01-19-djibian-release/).*

### Backup: paper QR codes, secret sharing

The foopgp tools generate and print your private keys as **paper fragments**, encrypted and split using a [secret sharing](https://en.wikipedia.org/wiki/Secret_sharing) (Shamir) scheme: by default, **3 fragments out of 5 printed** are enough to reconstitute the key.

| ![Fragment 1/5](/images/solutions/openpgp-id/qrcode-fragment-1.png) | ![Fragment 2/5](/images/solutions/openpgp-id/qrcode-fragment-2.png) | ![Fragment 5/5](/images/solutions/openpgp-id/qrcode-fragment-5.png) |
|:---:|:---:|:---:|
| *Fragment 1/5* | *Fragment 2/5* | *Fragment 5/5* |

A few properties to know:

- **No isolated fragment reveals anything** — you need the quorum (3 here) to reconstitute.
- **Offline by construction**: fragments live on paper only, never on a cloud, never on a connected disk.
- **Resilience**: losing one or two fragments is not fatal; losing your YubiKey is not either, as long as you have your quorum of fragments.
- **Entrusting fragments to people you trust** is a common strategy: one fragment with a relative, one with a friend, one in a safe — and impersonation becomes very hard.

### Transposing to a physical key

Once your private keys have been fragmented onto paper sheets, another foopgp tool reads the QR codes via a webcam or scanner and **etches** the keys into a YubiKey or a NitroKey. The private keys never touch a hard drive nor a third-party service.

From there, your identity is exercised **from your hand** on any OpenPGP-compatible service: [sign](/solutions/signature/), [decrypt](/solutions/theme-email/), [authenticate](/blog/2026-05-11-djibian-agentforwarding/) — the **OpenPGP ID** physical key protects your privacy and your human singularity in the digital world.

Here is the **Djibian Onboarding** welcome screen once your key is set up — avatar, common name, **OpenPGP ID** identifier and emails read straight from the plugged-in physical key:

![OpenPGP ID card as displayed by Djibian Onboarding](/images/solutions/openpgp-id/Phil_ID_EN.png)

*Illustration. Photograph of [Phil Zimmermann](https://en.wikipedia.org/wiki/Phil_Zimmermann), inventor of PGP — [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:PRZ_closeup_cropped.jpg), CC BY-SA 3.0.*

### In short

**OpenPGP ID** makes real digital sovereignty possible: no password to forget, no cloud vault to trust, no dependence on an external identity provider. An identity that is **yours**, anchored in a physical object you carry, and **usable everywhere**.

**While others sell you technologies that enslave you, foopgp enables everyone to embrace technologies that serve us.** Safer, leaner, and entirely sovereign.

---
