---
Title:   "foodjis goes live on Android!"
Date:    2026-09-24T18:00:00+02:00
Tags:    [ "foodjis", "android", "pgp-id", "openpgp", "nfc", "identity", "yubikey", "nitrokey" ]
categories: [ "News" ]
draft: false
author: [ "Mnêmê", "Jean-Jacques Brucker" ]
description: "The assistant that gives birth to your digital identity, writes it onto your security key and lets it circulate now fits in a phone. First production version, ready to download."
lang: en
bg_image: "images/backgrounds/party-event.jpg"
image: "images/logos/foodjis_logo_banner.png"
type: "post"
---

***Note:*** *For what a **PGP ID** identity is and what it is for, [see the page devoted to it](/solutions/pgp-id/). To keep up, [join our mailing lists](/contact/).*

**[foodjis](/solutions/pgp-id/) no longer asks for a computer.** The assistant
that gives birth to a digital identity, writes it into a security key and lets
it circulate now exists on Android, with the same journeys and the same words
as on Djibian. A phone, a **YubiKey** or **NitroKey** held against its back,
and that is all.

There is a reason for this port, and it is not convenience: an identity that
requires a desktop computer is an identity reserved for those who own one. In
most of the world, the phone *is* the computer.

## Four journeys, the same as on the desktop

**Generating an identity.** Your entity identifier — the **EID** — is computed
from a civil status of birth: a place, an instant. Not from a key, not from an
account, not from a number somebody hands you. The map is there to put down the
point, and the *Here* button to take the one you are standing on; the instant is
entered in your local time. A person falls under variant `u4`, another entity —
association, company, piece of software — under variant `u5`.

The identity's secrets are then printed as QR fragments on sheets of paper, of
which only some will be needed to put it back together. That is your backup,
and it depends on no service at all.

**Setting up a key.** The phone reads the printed fragments with its camera,
then writes the identity into the security key held against its back. The
secrets travel over the key's own radio, never over a network. At the end, the
application shows the key's PIN and Admin codes, once, on the only screen of
the whole journey that the system forbids photographing.

The key keeps the secrets; the phone keeps none. That is the property that
makes the object worth having: losing the phone costs nothing, losing the key
costs what a key costs — and the sheets of paper are there for that.

{{< shots cols="4"
  src1="/images/blog/2026/foodjis-1-identite-en.png" alt1="foodjis on Android — Generate an identity: the map, the place and the instant of origin" cap1="The place and instant an entity comes from, which the EID is computed from."
  src2="/images/blog/2026/foodjis-2-cle-en.png" alt2="foodjis on Android — Set up a key: hold your security key against the back of the phone" cap2="A security key is held against the back of the phone."
>}}

**Holding your own card.** Present the key and the application reads what it
carries: usual name, portrait, **EID**, certificate fingerprint, validity dates,
certifications received, addresses and other details. Everything is changed from
there — adding an address, withdrawing one, choosing the one mail software will
put forward, moving the date the certificate stops being true. Every change is
signed by the key, therefore by you, then published to the keyservers: a
certificate is a public thing, and a change that stayed inside one phone would
be a change nobody can act on.

**Certifying others.** This is the gesture a web of trust is made of: confirming
that a certificate does belong to the entity it names. There is no central
office to do it in your place, and that is on purpose — the parties sign, third
parties verify. The application says so before offering it: it puts your own
credibility on the line, and more still for an entity that is not a person,
whose responsibilities you take upon yourself.

{{< shots cols="4"
  src1="/images/blog/2026/foodjis-3-token-en.png" alt1="foodjis on Android — the connected key's card: usual name, EID, fingerprint, validity" cap1="The connected key's card, read from the key itself."
  src2="/images/blog/2026/foodjis-4-certifier-en.png" alt2="foodjis on Android — Certify: what certifying commits you to, to be read first" cap2="What certifying commits you to, said before it is offered."
>}}

**Keeping your contacts.** A local keyring, fed by the keyservers, by a QR code
shown face to face, or by a file you were sent. Each card can be handed over in
five ways — QR code, [vCard](/blog/2026-07-18-vcard-openpgp/) or certificate,
sent to another application or imported into the phone's address book. The
slider at the bottom is the credibility *you* grant that identity; it stays on
your phone as long as you do not share it.

{{< shots cols="4"
  src1="/images/blog/2026/foodjis-5-contacts-en.png" alt1="foodjis on Android — Contacts: searching for a certificate by email, certificate or EID" cap1="The keyring, and the search by email, certificate or EID."
  src2="/images/blog/2026/foodjis-6-fiche-en.png" alt2="foodjis on Android — a contact's card, their note and the credibility slider" cap2="A contact's card, their note and the credibility slider."
>}}

## What the key can do, once written

The identity on the key is not only there to be shown inside foodjis. Two
things work today, from the phone:

- **Signed and encrypted mail.** foodjis offers itself to mail applications as
  the system's OpenPGP provider: Thunderbird for Android reads signed messages,
  signs them, opens and closes them, with the key held against the back of the
  phone at the moment of signing. No other application needs to know your
  secrets, and none of them sees them.
- **Remote login.** Your identity's authentication key opens a session on the
  servers that accept it, with no private key existing in the phone at all —
  one gesture per connection, and nothing to copy from one machine to another.

## In place of OpenKeychain

If your OpenPGP keys already live on an NFC security key — a **YubiKey 5 NFC**,
a **Nitrokey 3A NFC** — then foodjis does the job you used to open OpenKeychain
for: it is what the system now offers to mail applications, and it needs no
secret on the phone at all. On top of that it does what no keyring does: give
birth to the identity, write it into the key, certify others, publish the
changes.

And if you do not have a key yet: the association **does not sell** them, it
**provides** them to its members as soon as their cumulative subscriptions have
reached [the threshold](/solutions/offer-security-keys/) — YubiKey 5 NFC or
Nitrokey 3A NFC, at your choice and according to stock.

## Download

This version installs beside any future store version rather than replacing it:
it carries our development key, so it is called **foodjis-dev**, and that is a
name of its own.

- **[foodjis-dev_1.0.3.apk](https://iso.foopgp.org/foodjis-dev_1.0.3.apk)** —
  Android 7 or newer, nine languages, 8.4 MB.
- The file's [fingerprint](https://iso.foopgp.org/foodjis-dev_1.0.3.apk.sha256):
  `03a6c328d6d56ad115fa7aec05037cdbe619dd5c9dbf06205bbcc8cb3c5d0ec7`.
- And its [detached signature](https://iso.foopgp.org/foodjis-dev_1.0.3.apk.asc),
  made by a PGP ID identity, which your usual OpenPGP tool will check against
  the published certificate for `mneme@foopgp.org`. That is exactly the use this
  article is about: you do not have to believe us, you can verify.

A brand-new security key wants three seconds of power from any USB port before
it will answer over radio — a charger will do. It is the one moment in the whole
journey where another device is needed, and it asks for no software.

## What comes next

The store account is being verified. The version distributed there is a
**different application** from this one: it carries its own name, as it carries
its own signature, and will therefore install **beside** it — nothing to
uninstall, and each keeps its own keyring. The caveat about signatures only
holds between two builds of one application.

The rest is written in our assembly reports, week after week: the identity on
the key is the first stage, [signing](/solutions/signature/),
[mail](/solutions/theme-email/) and the Ɉ accounts are the ones above it.
