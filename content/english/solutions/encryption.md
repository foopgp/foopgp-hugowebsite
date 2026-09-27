---
title: "Encryption"
lang: en
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
author: [ "Mnêmê", "Jean-Jacques Brucker" ]
description : "Making a message unreadable to everyone but its recipients: how PGP encryption works, and which software to practise it with."
image: "images/solutions/encryption.png"
tags: ["Encryption", "pgpid"]
categories: ["solution"]
type: "post"
---

### Encrypting

To encrypt is to make a message or a file unreadable to anyone who does not
hold the key that opens it. Two families of algorithms take part:

- **symmetric encryption** uses the same key to encrypt and to decrypt. It is
  fast and suits large amounts of data, but that key, a secret, must first
  reach the correspondent. Example: AES;
- **asymmetric encryption** uses a pair of keys: a *public* key, which anyone
  may know, to encrypt; a *private* key, held by its owner alone, to decrypt.
  No secret needs to be exchanged beforehand. Examples: elliptic curves
  (X25519) or, older, RSA.

In practice the two are combined: that is *hybrid* encryption, the kind PGP
uses.

---

### PGP, OpenPGP, LibrePGP, PGP ID

**PGP** (*Pretty Good Privacy*) is the original software, written by
[Philip Zimmermann](https://philzimmermann.com/EN/background/index.html)
in 1991.

**OpenPGP** is [the set of specifications](https://www.openpgp.org/about/standard/)
that came from it, drawn up by a
[working group](https://datatracker.ietf.org/wg/openpgp/charter/) of the
[IETF](https://en.wikipedia.org/wiki/Internet_Engineering_Task_Force). Its
latest version is RFC 9580, published in 2024.

**LibrePGP** is a variant of these specifications, which parted from them on
a few points and which GnuPG in particular follows.

**PGP ID** is a way of using PGP, with innovations specified one by one for
standardisation: a digital identity anchored in a place and an instant of
origin, whose secrets are backed up on paper and live in a security key.
[Learn more](/solutions/pgp-id/).

**PGPID** and **foodjis** are the original software implementing PGP ID.
For now they keep to the key format both specifications share (version 4),
which all the software listed below understands.

---

### How PGP encryption works

1. **The keys.** Everyone holds a pair of keys to encrypt and decrypt, beside
   those used to sign and to authenticate. The public key is shared with
   correspondents and published on the keyservers. The private key stays
   secret: with PGP ID, it lives only in a security key — a YubiKey, a
   Nitrokey —, never on a connected computer or phone.
2. **Encrypting.** The software draws a random *session key*, a symmetric one,
   and encrypts the message with it. It then encrypts that session key with
   each recipient's public key. The encrypted message and the encrypted
   session keys travel together.
3. **Decrypting.** The recipient presents their security key: it alone, with
   the private key it keeps, recovers the session key. The software uses it
   to decrypt the message.

The same mechanism can add a [signature](/solutions/signature/), which proves
who wrote the message and that it was not altered.

---

### Why a security key

A copied private key is a lost private key: whoever holds a copy reads your
mail, for ever. In a security key the private key never comes out: the
computer or phone hands it the session key to open, and gets the answer back —
never the secret.

Losing one's phone therefore costs nothing. Losing one's key costs what a key
costs, and PGP ID's paper backup lets a new one be written. The association
[provides these keys](/solutions/offer-security-keys/) to its members.

---

### Which software

Software that encrypts with PGP through a security key:

#### Android
  * **[foodjis](/blog/2026-09-24-foodjis-android/) with [Thunderbird for Android](https://www.thunderbird.net/en-US/mobile/)** — what we recommend. foodjis offers itself to mail applications as the phone's OpenPGP provider: the security key held against the back of the phone decrypts and signs, and no secret is ever on the phone. It also encrypts and decrypts a text or a file on its own, with the key or with a password.

#### Linux
  * [foodjis — djibian-onboarding](/solutions/djibian/)
  * [Evolution: Seahorse](https://www.openpgp.org/software/seahorse/)

#### macOS
  * [Apple Mail: GPGTools](https://www.openpgp.org/software/gpgtools/)

#### Windows
  * [Gpg4win](https://www.openpgp.org/software/gpg4win/) ***⚠ untested ⚠***
  * [Thunderbird](https://www.thunderbird.net/en-US/), the security key going through GnuPG ***⚠ untested ⚠***

#### iOS
  * [FlowCrypt](https://www.openpgp.org/software/flowcrypt/) ***⚠ untested ⚠***

---

**Software that complies with the OpenPGP or LibrePGP specifications is a
powerful tool for protecting communications and data, in a world ever more
exposed to cyberattacks.**
