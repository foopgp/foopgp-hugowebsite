---
Title:   "Reconciling vCard and OpenPGP: what if your address book knew who's talking to you?"
Date:    2026-07-18T10:00:00+02:00
Tags:    [ "openpgp", "vcard", "identity", "rfc" ]
categories: [ "News", "Solution" ]
draft: false
author: [ "Jean-Jacques Brucker", "Mnêmê" ]
description: "Our computers have every reason to handle OpenPGP certificates before vCards."
lang: en
bg_image: "images/backgrounds/library.jpg"
image: "images/blog/2026/Two-volume_Yellow_Pages.png"
type: "post"
---

Open your smartphone's address book, tap "share contact". What leaves your device is a **vCard**: a little text file — a name, a number, an e-mail, maybe a photo. Universal, readable everywhere — Android, iOS, Outlook, Thunderbird. And **utterly unverifiable**. Nothing in a vCard says it really comes from the person it names. You can forge one, say "from your bank", in seconds.

Next to it sits an object that does not lie: the **OpenPGP certificate**. Signed, verifiable in the web of trust, it lets you sign, decrypt and authenticate. But to many, it's "just a key" — an opaque blob that describes no one and that few of us have filed away in our address book.

Two objects that have ignored each other for thirty years. The good news: **they are far closer than they look.**

---

## A vCard is lines; a certificate is certified lines

A **vCard 4.0** ([RFC 6350](https://www.rfc-editor.org/rfc/rfc6350)) is nothing but a list of `PROPERTY:value` lines:

```
FN:Robin Doe
EMAIL:robin@example.org
TEL;TYPE=voice:+33612345678
```

An **OpenPGP certificate** ([RFC 9580](https://www.rfc-editor.org/rfc/rfc9580)) is a public key **plus a list of certified data** — the *User IDs*. Each User ID is a small text string, **self-signed independently** by the key, and **revocable one at a time**.

The question that reconciles the two worlds: *what if the OpenPGP certificate certified the vCard data?*

## The certificate **is** a signed directory entry

That is exactly what our tooling does: one **User ID per vCard property** (`FN:…`, `EMAIL:…`, `TEL:…`, `ADR:…`, `NOTE:…`), each being, by construction, **a valid vCard line**, all anchored on a pivot identifier — the [**EID**](/blog/2026-04-28-openpgp-id-spec/) (`urn:eid:…`), deterministic, decentralised and privacy-preserving. An OpenPGP certificate thus becomes a **complete, signed directory entry**, where only the owner can add or remove a field.

Two families of EID coexist, depending on the nature of the entity:

- **u4** — a *human*, derived from their civil birth record;
- **u5** — *any other entity* (association, company, service, object), derived from a moment and a place of origin.

### An entity's card, for real

Take our own association, [registered in the French *Journal officiel*](/documents/JOAFE_PDF_Unitaire_20230015_00088.pdf) on 3 April 2023 in Pelleautier (Hautes-Alpes, France). Born at that instant and place, it gets a **u5** identifier — and its directory entry, as it would come out of its certificate, looks like this:

```
UID:urn:eid:u5001680487200.000e_44.52_006.01
FN:FRIENDS OF OPENPGP (FOOPGP)
EMAIL:info@foopgp.org
TEL;TYPE=voice:+33677997855
ADR:;;75 impasse Serre des Isnards;Pelleautier;;05000;France
NOTE:Non-profit association — transparency, benevolence, cooperation, proximity.
```

Every line is signed by the association itself. No one can slip false information into it — it's *our* card, and only we can change it.

To see the translation at work, **entirely in your browser, with nothing uploaded**, we published [**pgp2vcard.html**](https://keys.foopgp.org/pgp2vcard.html): paste an OpenPGP certificate, get a vCard 4.0 back — or its JSON counterpart, **jCard** ([RFC 7095](https://www.rfc-editor.org/rfc/rfc7095)). The public key itself comes out in a `KEY` field, ready to encrypt.

## Why our computers and smartphones would have every reason to switch

Now imagine your address book stored **OpenPGP certificates** where it stores vCards today. What you gain is not cosmetic:

- **Every contact becomes verifiable.** A card "from your bank" can be forged; a certificate cannot. The EID ties the identity to its origin deterministically, **with no central registry** to trust.
- **Trust propagates — and junk mail collapses.** Certificates certify one another: this is OpenPGP's *web of trust*, a **horizontal** authentication with no central authority, where you validate your peers through the chain of signatures leading to them. The same web cleans up your inbox: let in only what comes from an entity **recognised within your web of trust**, and spam evaporates.
- **You encrypt and sign natively.** No separate "key exchange": the card **is** the key.
- **Updates are authenticated.** New number? The owner adds a signed User ID, the old one is revoked. Nobody "fixes" your card on your behalf.
- **Impersonation gets expensive.** An address book swallows any vCard it receives today; tomorrow it would refuse — or flag — a contact whose signature doesn't hold.

The address book stops being a **list of rumours** and becomes a **directory of proofs**. No new app, no new account: just by teaching our everyday software to treat a certificate as a first-class contact.

## The bricks already exist; a bridge was missing

None of this requires inventing a format. It's all there: the vCard ([RFC 6350](https://www.rfc-editor.org/rfc/rfc6350)) and its parameter encoding ([RFC 6868](https://www.rfc-editor.org/rfc/rfc6868)) to describe; jCard ([RFC 7095](https://www.rfc-editor.org/rfc/rfc7095)) to handle it in JSON; OpenPGP ([RFC 9580](https://www.rfc-editor.org/rfc/rfc9580)) to sign and encrypt; our [`urn:eid:` specification](/blog/2026-04-28-openpgp-id-spec/), on its way to IANA registration, for the pivot identity. Synchronisation, too, has its vCard-side standard — CardDAV ([RFC 6352](https://www.rfc-editor.org/rfc/rfc6352)) — where nothing forbids carrying certificates rather than bare cards.

The bridge is one idea: *one vCard property = one OpenPGP User ID*. It is already tooled and reversible. What's missing isn't the technology: it's that mainstream address books finally agree to read and transmit OpenPGP certificates.

## A familiar ring: the White Pages, but chosen

This public directory of signed cards is, in fact, something you already know. Remember the **White Pages** — that thick directory the phone company (a state monopoly, then a national incumbent) dropped in every home: individuals listed by name. And its twin, the **Yellow Pages**: businesses, listed by trade. Almost every country had them (*Yellow Pages*, *Gelbe Seiten*, *Pagine Gialle*, *Páginas Amarillas*…). The distinction lives on, natively, in the EID: **u4 is the White Pages**; **u5, the Yellow Pages**.

But OpenPGP directories have two major advantages over those directories of old:

- The old directories were edited and centralised by the operator. OpenPGP directories are **decentralised and controlled by the users themselves**.
- The old directories exposed your personal data without your consent. In OpenPGP directories **everyone decides what they expose** — the only requirements being to add, next to your EID: a **name** and an **e-mail**, which you can **freely choose and change**.

In short: the White or Yellow Pages, but **under your control**.

## Over to you

You can upload or search for a certificate on [our key server](https://keys.foopgp.org), then click the vCard button:

![vCard_button.png](/images/blog/2026/vCard_button.png)

The certificate will be parsed by [**pgp2vcard.html**](https://keys.foopgp.org/pgp2vcard.html) and turned into a vCard file (*\*.vcf*) — the contact card you can download and import into all your current digital address books.

![vCard_download.png](/images/blog/2026/vCard_download.png)

Now you can see the future of your carefully chosen apps: when you tap "share contact", they will send, instead of vCards anyone can forge, **personalised identity cards that no one can impersonate**.

It's a small technical step. It's a large shift in trust.

---

*References: [vCard 4.0 — RFC 6350](https://www.rfc-editor.org/rfc/rfc6350), [jCard — RFC 7095](https://www.rfc-editor.org/rfc/rfc7095), [parameter encoding — RFC 6868](https://www.rfc-editor.org/rfc/rfc6868), [CardDAV — RFC 6352](https://www.rfc-editor.org/rfc/rfc6352), [OpenPGP — RFC 9580](https://www.rfc-editor.org/rfc/rfc9580). Our work: [PGP ID / EID](/blog/2026-04-28-openpgp-id-spec/), the [pgp2vcard.html](https://keys.foopgp.org/pgp2vcard.html) tool.*
