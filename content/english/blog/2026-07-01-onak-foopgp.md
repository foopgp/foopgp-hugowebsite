---
Title:   "An OpenPGP keyserver in 2026"
Date:    2026-07-01T14:00:00+02:00
Tags:    [ "openpgp", "keyserver", "onak", "web-of-trust", "debian" ]
categories: [ "News", "Solution" ]
draft: true
author: [ "Mnème", "Jean-Jacques Brucker" ]
description: "keys.foopgp.org just came back on a rewritten build of onak. Two-column rendering, seven languages, anti-flood ingestion caps, signature dedup, a native templating engine — four days of work for a keyserver that actually talks to whoever is looking at it."
lang: en
bg_image: "images/backgrounds/page-title.jpg"
image: "images/solutions/OpenPGPkeys.jpg"
type: "post"
---

Type an e-mail address into a standard OpenPGP keyserver. Here is what you get:

```
Type   bits/keyID    Date       User ID
pub    255E/0x8C39D09E68D27179 2026/05/08 Alice Dupont <alice@example.com>
```

A monospaced `<pre>`, in English, in HTML 3.2 (a spec frozen in 1997). The HKP protocol has been frozen since 1998; the web rendering followed suit. A non-technical visitor landing on that page understands nothing: what is a `pub`? a `KeyID`? why `255E`? is the key still valid?

At foopgp, we believe a keyserver has to serve two audiences: the **expert verifier**, who wants full Web-of-Trust traversal, and the **curious visitor**, who just wants to confirm that the key someone sent them really belongs to that person. Existing servers serve neither well.

For the past four days, [keys.foopgp.org](https://keys.foopgp.org) has been running on a build we rewrote in depth. Here is what it looks like.

## What a visitor sees

{{< figure
  src="/images/blog/2026/onak-foopgp-index-en.png"
  link="/images/blog/2026/onak-foopgp-index-en.png"
  alt="Searching 'mneme' on keys.foopgp.org — two keys returned, two-column layout"
  caption="Searching for `mneme` — two keys returned, two-column layout with portrait on the left, identifiers on the right. Screenshot from `keys.foopgp.org/pks/lookup?op=index&search=mneme`."
>}}

Seven design decisions surface at first glance:

1. **A two-column layout.** *User Attribute* packets (OpenPGP portraits and avatars) sit on the left. Identities — KeyID, algorithm, dates, UIDs — sit on the right. On a phone in portrait, the portrait column automatically slides above the identifiers and gives them the full width.
2. **ISO-8601 dates** (`2026-05-08`, `2037-05-05`) instead of the ambiguous `05/08/2026`. No hesitation between month and day.
3. **Modern algorithm names** (`ed25519`) instead of the historical mnemonic `255E`.
4. **The expiration date next to the creation date.** A user whose key has no expiry gets a small orange "no expiration set" badge. A user whose key has expired gets a red badge with the expiry date.
5. **A red REVOKED box** when the key has been revoked, with the revocation date, and a tooltip stating that this certificate **MUST NOT** be used (not "should not" — a revocation is an explicit act by the holder, not a passive time-out).
6. **The fingerprint in a bordered pill.** Hovering reveals: *"Check that this fingerprint matches the one printed on the holder's card or shown in person."* A newcomer finally understands what those 40 hex characters are for.
7. **A "⬇️ Download" button** that fetches the full ASCII-armored certificate. The arrow emoji stays legible even if the visitor doesn't read the surface language.

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

This is the piece nearly every existing public HKP server misses: either they no longer serve third-party signatures ([Hagrid / keys.openpgp.org](https://keys.openpgp.org), for good historical reasons), or they render everything raw (SKS, and onak upstream). Our bet: serve third-party signatures, but through a UI that stays readable.

## Under the hood: what we cleaned up

Alongside the rendering, we hardened ingestion. A public keyserver is a regular target — flood attacks, WoT poisoning, malformed packets. The build we ship applies five hardenings borrowed from the IETF draft [`draft-dkg-openpgp-abuse-resistant-keystore`](https://datatracker.ietf.org/doc/draft-dkg-openpgp-abuse-resistant-keystore/):

1. **UID / UAT caps per key** — 32 UIDs, 4 UATs max. Extra packets are ignored at import (we keep the oldest ones, the entries we already know).
2. **Signature caps per UID / UAT** — 512 max, configurable. A key on which an attacker has stacked one hundred thousand fake signatures can no longer flood the server.
3. **Signature dedup per signer** — if Alice has certified Bob three times, we keep only the most recent certification. If any of the signatures is a revocation, it wins (a revocation is irrevocable).
4. **Unconditional v3 key drop** (RSA-MD5, obsolete for fifteen years). The `drop_v3=false` config toggle is gone: no backdoor.
5. **Three new archive commands** (`aged`, `dump-aged`, `clean-aged`) — an operator can list keys dormant for N years, export an encrypted bundle, or purge them without leaking their content on the way out.

None of this is foopgp-specific. Those five improvements live in the fork's core and are portable to any other onak installation as-is.

## Under the hood: how the rendering works

HTML rendering was extracted into a **minimal Mustache-style templating engine** — 200 lines of C, no external dependency, no server-side JavaScript. Two templates ship in the package:

- **`vanilla`** — the legacy output (`<pre>` monospace), rendered from a template instead of being hardcoded in C. An operator who prefers the historical look keeps it.
- **`foopgp`** — the two-column layout you just saw. This is our package default.

An operator who wants their own look adds their template to `/etc/onak.ini`:

```ini
[main]
template_dir=/usr/share/onak/templates/mytheme
```

and ships their own `key_index.html`. No C change required.

The `foopgp` template itself fits in a single 130-line file, without ever naming `-apple-system` or `BlinkMacSystemFont`: the CSS uses the generic `sans-serif` and `monospace` families, eight `:root` variables for the palette, and a single inline `<style>`. An operator can fork it in ten minutes without reading a framework doc.

Along the way, `start_html()` — the C helper every onak CGI shares — was modernised: `<!DOCTYPE html>` (rather than HTML 3.2) and a `<meta name="viewport">` tag. Without it, a mobile browser was simulating a 980-pixel desktop viewport and shrinking the whole page to 37%; our media queries never fired.

## A distinct Debian package

Our work ships as **`onak-foopgp`**, a Debian source and binary package distinct from Debian's official `onak`. The two packages can co-exist: `apt install onak-foopgp` does not overwrite `apt install onak`.

This split is not a divorce. The five core hardenings (see "what we cleaned up") are proposable as upstream pull requests, and so is the templating engine. The foopgp flavour — the two-column template, the seven-language landing page, the footer `contact` link to the operator's key — is an editorial choice: it should not silently impose itself on a vanilla onak deployer via a Debian upgrade. Hence the distinct name.

Conversely, our branch stays periodically rebase-able onto upstream. Every improvement upstream ships, we pick it up.

## Where we go next

The keyserver is one step on a longer path. Our roadmap:

- **Back the storage with [uetree](https://foopgp.org/documents/en/draft-foopgp-uetree-00.txt)** — our git-distributed, signed identity registry. A `keydb_uetree` backend (spec in progress at our end) would let onak serve certificates from a git store, with the sync and audit trail that comes for free. Target: millions of keys at two years, without a monolithic database.
- **Deploy [WKD](https://datatracker.ietf.org/doc/draft-koch-openpgp-webkey-service/) for every `*@foopgp.org` address** — serve `.well-known/openpgpkey/hu/<hash>` statically from our Hugo site. `gpg --auto-key-locate wkd` is already part of the modern `gpg` default: it is the native e-mail discovery path. The HKP server then becomes what it should have remained: a fingerprint-lookup and WoT-discovery layer, not the authoritative source by e-mail.
- **Expose a WKS submission channel at `key-submission@foopgp.org`** — an e-mail-verified upload path replacing the historical HKP POST submissions that poisoned the public pools.

## Try it

- **Live**: [https://keys.foopgp.org](https://keys.foopgp.org)
- **Source**: <https://codeberg.org/foopgp/onak> (branch `mneme/main`)
- **Debian package**: `apt install onak-foopgp` from [our repository](https://djibian.foopgp.org/)

Try it. Search your own key. If you find one that renders badly — a Unicode UID breaking the fingerprint, an over-sized UAT, an edge case we didn't anticipate — [open an issue](https://codeberg.org/foopgp/onak/issues) or write to us, encrypted and signed, at <mneme@foopgp.org>.
