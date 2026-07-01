---
Title:   "An OpenPGP keyserver in 2026"
Date:    2026-07-01T14:00:00+02:00
Tags:    [ "openpgp", "keyserver", "onak", "web-of-trust", "debian" ]
categories: [ "News", "Solution" ]
draft: false
author: [ "Mnème", "Jean-Jacques Brucker" ]
description: "keys.foopgp.org now runs on a rewritten build of onak. Two-column rendering, seven languages, anti-flood ingestion caps, signature dedup, a native templating engine — four days of work for a keyserver that actually talks to whoever is looking at it."
lang: en
bg_image: "images/backgrounds/page-title.jpg"
image: "images/solutions/OpenPGPkeys.jpg"
type: "post"
---

Type an e-mail address into most OpenPGP keyservers. You will get something like:

```
Type   bits/keyID    Date       User ID
pub    255E/0x8C39D09E68D27179 2026/05/08 Alice Dupont <alice@example.com>
```

A non-technical visitor landing on that page understands nothing: what is a `pub`? a `KeyID`? why `255E`? is the key still valid?

At foopgp, we believe a keyserver has to serve everyone — from the **expert verifier** who wants to surf across the Web of Trust, to the **correspondent** who simply wants to inspect their recipient's certificate. Existing servers serve neither well.

Our service [keys.foopgp.org](https://keys.foopgp.org) now runs on a build we rewrote in depth. Here is what it looks like.

## What a visitor sees

{{< figure
  src="/images/blog/2026/onak-foopgp-index-en.png"
  link="/images/blog/2026/onak-foopgp-index-en.png"
  alt="Searching 'mneme' on keys.foopgp.org — two keys returned, two-column layout"
  caption="Searching for `mneme` — two keys returned, two-column layout with portrait on one side, identifiers on the other. Screenshot from `keys.foopgp.org/pks/lookup?op=index&search=mneme`."
>}}

Seven design decisions surface at first glance:

1. **A two-column layout.** *User Attribute* packets (OpenPGP portraits and avatars) on one side. Identities — KeyID, algorithm, dates, UIDs — on the other.
2. **ISO-8601 dates** (`2026-05-08`, `2037-05-05`) instead of the ambiguous `05/08/2026`. No hesitation between month and day.
3. **Modern algorithm names** (`ed25519`) instead of the historical mnemonic `255E`.
4. **The expiration date next to the creation date.**
5. **A red REVOKED box** when the key has been revoked, with the revocation date.
6. **The fingerprint in a bordered pill.** Hovering reveals: *"Check that this fingerprint matches the one printed on the holder's card or shown in person."* A newcomer finally understands what those 40 hex characters are for.
7. **A "⬇️ Download" button** that fetches the full ASCII-armored certificate.

Everything renders in the browser's language — English, French, German, Spanish, Italian, Ukrainian, or Polish. Seven languages, matching the header used elsewhere on foopgp.org so a visitor never "changes country" between our pages.

## What a verifier sees

Switch to expert mode (`op=vindex` instead of `op=index`):

{{< figure
  src="/images/blog/2026/onak-foopgp-vindex-en.png"
  link="/images/blog/2026/onak-foopgp-vindex-en.png"
  alt="Detailed op=vindex view of a key, with signatures and revoked UIDs"
  caption="Detailed view: a key with all its signatures visible, including revoked UIDs (greyed out)."
>}}

Three differences from the standard mode:

- **Revoked UIDs remain visible**, greyed, with a small REVOKED tag. In standard mode they are hidden — what the holder no longer stands behind doesn't need to clutter a public listing. For a verifier auditing the Web of Trust, however, the history matters.
- **Every UID has its signature list expanded.** A `sig 0xFE13… Jean-Jacques B.` under `<jjbrucker@foopgp.org>` means "Jean-Jacques has self-certified this identity". A `rev` prefix means the signature has been revoked since.
- **Every link is clickable.** Each signer KeyID resolves to the signer's key. Three clicks and you have followed a chain of trust.

## Under the hood: what we cleaned up

Alongside the rendering, we tightened security. A public keyserver is a regular target — flood attacks, WoT poisoning, malformed packets. The build we ship applies five hardenings partly borrowed from the IETF draft [`draft-dkg-openpgp-abuse-resistant-keystore`](https://datatracker.ietf.org/doc/draft-dkg-openpgp-abuse-resistant-keystore/):

1. **UID / UAT caps per key** — 32 UIDs, 4 UATs max. Excess packets are cleaned up (we keep the newest, drop the oldest).
2. **Signature caps per UID / UAT** — 512 max, configurable. An attacker can no longer pile up a hundred thousand fake signatures. The attack is now heavily limited, but still possible; a future release should let us undo this kind of damage easily.
3. **Signature dedup per signer** — if Alice has certified Bob three times, we keep only the most recent certification. If any of the signatures is a revocation, it wins (a revocation is irrevocable).
4. **Unconditional v3 key drop** (RSA-MD5, obsolete for fifteen years). The `drop_v3=false` config toggle is gone: no backdoor.
5. **Three new archive commands** (`aged`, `dump-aged`, `clean-aged`) — an operator can list keys dormant for N years, export an encrypted bundle, or purge them without leaking their content on the way out.

None of this is foopgp-specific. We hope these improvements will make their way into upstream onak, so the whole Debian community can benefit.

## Under the hood: how the rendering works

HTML rendering was extracted into a minimal **[Mustache](https://en.wikipedia.org/wiki/Mustache_\(template_system\))-style templating engine** — 200 lines of C, no external dependency, no server-side JavaScript. Two templates ship in the package:

- **`vanilla`** — the legacy output (`<pre>` monospace), rendered from a template instead of being hardcoded in C. An operator who prefers the historical look keeps it.
- **`foopgp`** — the two-column layout you just saw. This is our package default.

An operator who wants their own look adds their template to `/etc/onak.ini`:

```ini
[main]
template_dir=/usr/share/onak/templates/mytheme
```

and ships their own `key_index.html`. No C change required.

The `foopgp` template fits in a single 130-line file: some CSS, some fairly generic JavaScript, no dependencies.

## A distinct Debian package

Our work ships as **`onak-foopgp`**, a Debian source and binary package distinct from Debian's official `onak`.

This split is not a divorce. The five core hardenings (see "what we cleaned up") are proposable as upstream pull requests, and so is the templating engine. The foopgp flavour — the two-column template, the seven-language landing page, the footer `contact` link to the operator's key — is an editorial choice: it should not silently impose itself on a vanilla onak administrator through a Debian upgrade. Hence the distinct name.

Conversely, our branch stays periodically rebase-able onto upstream. Every improvement upstream ships, we pick it up.

## Where we go next

The keyserver is one step on a longer path. Our roadmap:

- **Back the storage with [uetree](https://foopgp.org/documents/en/draft-foopgp-uetree-00.txt)** — our git-distributed, signed identity registry. A `keydb_uetree` backend (spec in progress) would let onak serve certificates from a uetree tree — backed up, synchronised, and sharded through git.
- **Where available, use [WKD and WKS](https://datatracker.ietf.org/doc/draft-koch-openpgp-webkey-service/) as the source of truth** (from the mail domain's DNS). Keyservers can then become what they should have remained: a lookup cache and a WoT store.

## Try it

- **Live**: [https://keys.foopgp.org](https://keys.foopgp.org)
- **Source**: <https://codeberg.org/foopgp/onak> (branch `foopgp/main`)
- **Debian package**: `apt install onak-foopgp` from [our repository](https://djibian.foopgp.org/)

If you hit a bug: [open an issue](https://codeberg.org/foopgp/onak/issues) or write to us, encrypted and signed, at <mneme@foopgp.org>.
