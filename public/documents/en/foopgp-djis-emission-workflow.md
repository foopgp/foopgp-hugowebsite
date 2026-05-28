# foopgp Euro → djis (Ɉ) emission workflow

> ⚠️ **Partially superseded, 2026-05-27.**
> The **downstream** chain described below (writing per-entity
> `contributions.md` files under a flat `by-id/u4/<…>/<u4>/`
> hierarchy) is being replaced by the decentralized-ledger
> architecture documented in
> [foopgp-djis-decentralized-ledger.md](./foopgp-djis-decentralized-ledger.md):
> a tree of git submodules, with a per-entity `DJI/` sub-submodule
> administered by the entity holder. The **upstream** chain
> (CSV from `foopgp-cashflow`, `bl_foopgp_update_input`,
> per-email staging) remains as described here. This document
> will be revised once the decentralized-ledger design is locked.

**Audience.** Technical maintainers of foopgp's accounting and djis
emission pipeline.

**Scope.** This document describes how euro contributions received by
the foopgp association are turned into djis (Ɉ) credited to the
holders of certified OpenPGP entity identifiers (eids).

**Status.** Reference implementation in production since May 2026 on
the `mneme/foopgp-cashflow-uetree-1.1`, `mneme/bl-uetree-promote` and
`mneme/foopgp-cashflow-update-contribs` branches of
[bash-libs](https://codeberg.org/foopgp/bash-libs). Two registry
instances:
[uetree-djis-by-email](mneme@openudc.org:uetree-djis-by-email.git)
(private, shared) and
[uetree-djis-by-id](mneme@openudc.org:uetree-djis-by-id.git)
(public).

---

## 1. Overview

```
   Contributor donates by any euro-denominated channel
                       │
   ┌─────────┬─────────┼─────────────┬──────────────┐
   ▼         ▼         ▼             ▼              ▼
HelloAsso  SEPA IBAN  Cash         Stripe        (other
campaign   Crédit     (counted    (legacy,        channels
(card,     Mutuel     by the      to be           may join
incoming)  transfer   treasurer)  retired)        later)
                       │
   ┌──────────────────────────────────────────────────┐
   │  treasurer reconciles every account periodically │
   │  (manually, with .fods spreadsheets, today)      │
   └───────────────────────┬──────────────────────────┘
                           ▼
              foopgp-cashflow/csv_files/   (private)
              one CSV per account, per period
              (period prefix today: year, moving towards
               month or day as the cadence improves;
               see § 2.2 for the naming convention)
                           │
                           ▼  bl_foopgp_update_input
                           │  (header-driven canonical-key
                           │   mapping; email-first
                           │   beneficiary extraction)
                           │
                  uetree-djis-by-email          (private, shared)
                  by-email/<tld>/<dom>/<email>/
                  ├── .FORMAT
                  ├── README.md (eid-claimed: u4=…)
                  └── EUR-input.log
                           │
                           │  bl_uetree_promote
                           │  (only for WoT-certified eids)
                           ▼
                  uetree-djis-by-id             (public)
                  by-id/u4/<2c>/<4c>/<u4>/
                  ├── .FORMAT
                  ├── README.md
                  ├── EUR-input.log
                  └── receipt/
                      └── <iso8601-sec>_<source>_foopgp.asc
                           │
                           ▼  bl_foopgp_update_contribs
                           │
                  by-id/u4/<…>/<u4>/contributions.md
                  (per-line djis computed from stingynalty
                   schedule at each contribution's date)
                           │
                           ▼
              /djis-viewer/   /investir/   /djis-simulator/
              (public consumers, served by Hugo)
```

The pipeline is incremental and idempotent. Re-running any step on
unchanged inputs produces no diff in the output.

The **CSV** is the **pivot** between the euro side and the djis side.
It is the place where a human reviews the bookkeeping; upstream of
the CSV are the various euro channels (bank, cash, card processor),
downstream is cryptographic. The CSV is signed in the same act as
the rest of the `foopgp-cashflow` repository.

The pipeline observes a strict division of labour:

- The **treasurer** maintains the human-edited ledger (`.fods`),
  exports CSVs, and reconciles each account.

- `bl_foopgp_update_input` reads CSVs, identifies the
  beneficiary via the first e-mail address found in the motif,
  and writes the contribution to the canonical leaf reached
  through any existing `.ALIASES` chain — by default that is
  the private `by-email/<…>/<email>/` leaf; for promoted or
  manually-aliased emails it is `by-id/u4/<…>/<u4>/`.

- The **WoT certification act** — a human verifying a paper
  identity document and signing the corresponding OpenPGP UID —
  is the only event that can unlock the promotion of a `by-email/`
  entry to the public `by-id/u4/` tree.

- `bl_uetree_promote` performs that promotion (orthogonally —
  it can be run at any time relative to `update_input`), and
  `bl_foopgp_update_contribs` then computes the djis emission
  on whatever is currently under `by-id/u4/`.

- For multi-email holders whose certificate has not yet been
  extended with the new address, `bl-uetree aliases --add`
  declares the link without waiting for a workshop — see § 4.4b.

---

## 2. Tools and Repositories

### 2.1 bash-libs

The reference implementation lives in
[foopgp/bash-libs](https://codeberg.org/foopgp/bash-libs). Three
libraries participate in the emission pipeline:

- `bl-foopgp` — euro/djis arithmetic (`g2t`, `t2g`, `giftarray`),
  CSV ingestion (`update_input`), djis computation
  (`update_contribs`), aggregated statistics (`contribs`). Depends
  on the monthly *stingynalty* schedule defined in the source file.

- `bl-uetree` — operations on a uetree instance: vCard bridge
  (`tovcf`, `fromvcf`), OpenPGP-driven population (`from_pgpid`),
  image-driven population (`from_image`), and the canonical
  promotion (`promote`) used to move a certified entity from
  `by-email/` to `by-id/u4/`.

- `bl-pgpid` — primitives for OpenPGP entity identifiers
  (regexes, lookup against the local keyring).

All three are sourceable libraries that double as standalone
binaries. See [bl-foopgp.1](../../foopgp/bash-libs/man/bl-foopgp.1.md)
for the manual page and the inline `--help` of each action for
options.

### 2.2 foopgp-cashflow (private)

The accounting ledger of the association.

The euro side of the association lives on **several accounts at
once**, and the ledger holds one accounting subset per account.
As of May 2026 the actively-maintained accounts are:

- the **Crédit Mutuel SEPA account** — IBAN
  `FR7610278079980002082780107`, the main bank account through
  which IBAN transfers, debits and the HelloAsso settlements flow;

- the **cash account** — physical euro notes and coins held by
  the treasurer, counted at each reconciliation;

- the **legacy Stripe account** — very low volume historically,
  not currently tracked in `foopgp-cashflow`, in the process of
  being retired in favour of HelloAsso. Its closure plan is part
  of the broader treasurer migration and is documented separately.

Each tracked account corresponds to one column-set in the
treasurer's `.fods` spreadsheet, exported as one or several CSV
files.

The repository is laid out roughly as follows:

```
foopgp-cashflow/
├── 2023/, 2024/, 2025/, 2026/        annual .fods masters
├── csv_files/                        exported CSVs, see below
│   └── <period>_foopgp_cashflow_euros-<account>.csv
└── tools/                            local helpers (transitional,
                                       see § 4.2)
```

CSV naming convention:

- `<period>` is a date-prefix in ISO style. Today it is **`YYYY`**
  (annual) — the existing 2023…2026 files. The convention is
  designed to scale down to `YYYY-MM` (monthly) and
  `YYYY-MM-DD` (daily) without code changes, as the
  reconciliation cadence improves. The `bl_foopgp_update_input`
  tool does NOT parse this prefix; it relies entirely on the
  column header (§ 4.2).

- `<account>` is a short, stable label for the account: for the
  bank account, it is the IBAN; for the cash account today,
  `Cash_n2=20230403e_44.52_006.02` (the u5-style label of the
  cash bucket, capturing its first opening date and the
  treasurer's geographic anchor); for future Stripe or HelloAsso
  subsets, a parallel label would be chosen.

This repository is **private** — it carries bank-statement
labels, account references and contribution metadata that, even
partially exposed, would constitute a privacy breach under GDPR.
Access is restricted to the treasurer, the board, and Mnème (the
association's algorithmic accountant).

The repository is synchronised between maintainer workstations
through a private NextCloud share at `cloud.foopgp.org`. The
`bl_foopgp_update_input` tool reads CSV files locally; it never
fetches them over the network.

### 2.3 uetree-djis-by-email (private, shared)

A uetree 1.1 instance containing exclusively the `by-email/` branch:
each leaf is a `by-email/<tld>/<domain>/<email>/` directory holding
the EUR contribution log of one (uncertified) entity. Access is
shared among the treasurer, the board members enrolled in OpenPGP,
and Mnème (cf. `REMOTE/pre-receive.acl`).

This instance is private because publishing it would map e-mail
addresses to monetary contributions to an opinionated association —
a GDPR-relevant disclosure that the holders have not consented to
make.

### 2.4 uetree-djis-by-id (public)

A uetree 1.1 instance containing exclusively the `by-id/u4/` branch:
each leaf is a `by-id/u4/<2c>/<4c>/<u4>/` directory holding the
canonical record of one WoT-certified u4 entity, its EUR
contribution log, its djis computation, and the signed receipts of
its contributions.

This instance is public. The u4 identifier is itself public by
construction (it is part of the OpenPGP certificate), so its
mapping to a contribution amount adds no privacy leakage beyond
what the certificate already discloses.

---

## 3. The Trust Anchor: Civil-Registry-Backed eid

A contribution becomes a djis emission only if the eid claimed in
its bank-transfer motif is **certified** in the foopgp web of trust.
"Certified" here has a precise meaning:

- The corresponding OpenPGP certificate is present in the local
  keyring of the maintainer running `bl_uetree_promote`.

- At least one User ID of that certificate carrying the eid has
  validity `f` (fully valid: signed by trusted issuers) or `u`
  (ultimate trust: own key) under the standard OpenPGP web-of-trust
  computation.

This rules out unverified self-claims. A donor who writes
`(u4=...) <email>` in the bank-transfer motif but whose key has
never been signed by a foopgp certifier does not yet receive djis;
the contribution sits under `uetree-djis-by-email`, fully visible
to the donor (via the `/investir/` lookup, Section 4.7) but
without a corresponding Ɉ emission until certification happens
through the regular workshop channel (presentation of an identity
document to a foopgp certifier, signature by that certifier of the
corresponding eid UID, publication to the keyserver).

This design choice is deliberate: the association's emission of a
local complementary currency must rest on a verifiable identity
basis, not on a self-claim, to remain compatible with the foopgp
white paper and applicable monetary regulations.

---

## 4. Step-by-Step Pipeline

### 4.1 Contribution Capture

The association can receive euros through any of the following
channels. The donor chooses; the pipeline downstream of the CSV
is identical for all.

**SEPA IBAN — Crédit Mutuel (transfer, deferred).** The donor
transfers euros to the association's IBAN, with a motif
ideally of the form `(u4=…) <email@…>` (the parenthesised u4 is
informational; the e-mail is what identifies the beneficiary,
see § 4.3). The motif is exported with the bank statement,
landed in the treasurer's `.fods`, and exported as CSV.

**HelloAsso (card, near-immediate).** The donor uses the
`/investir/` page, picks an amount, and is redirected to a
HelloAsso campaign. HelloAsso forwards the payment to the bank
account (and so eventually appears on the IBAN CSV too) and
emits a webhook to a foopgp-side endpoint
(`contribution-bridge`, Python stdlib, incubation stage). The
webhook is HMAC-signed; the bridge verifies the signature,
extracts an opaque beneficiary token from the campaign URL,
resolves it, and writes a signed receipt. Reconciliation of the
HelloAsso line and the IBAN line of the same payment is part
of the monthly review.

**Cash — physical notes and coins.** The treasurer accepts cash
contributions in person, counts them, records them in the
ledger as entries on the cash account. The same column shape
applies as on the bank account (date, credit, motif). Cash
contributions are not webhook-signed; the only proof is the
treasurer's signed CSV.

**Stripe (legacy).** A historical Stripe account was opened
early in the association's life but received very little
traffic and was never fully integrated into the bookkeeping.
It is being retired in favour of HelloAsso. We note its
existence here for transparency; its few historical entries
will be either back-filled into `foopgp-cashflow` as a separate
account label, or summarised in the closure documentation —
the call has not yet been made.

Future channels (other PSPs, cryptocurrency on/off-ramps, local
mutual-aid schemes…) can be added the same way: one account
label in `foopgp-cashflow`, one or several CSVs, no other
change to the downstream pipeline.

### 4.2 CSV Extraction and Review

CSVs are exported from the `.fods` ledger as pipe-separated
UTF-8 files. A helper script (`soffice.convert2csv.sh`, kept in
`foopgp-cashflow/tools/` for now) drives the LibreOffice
conversion; it is intentionally minimal and the goal is to
remove it once the `.fods` editing is replaced by a more
scriptable format.

**Column shape is not fixed.** The bank revises its export
schema occasionally (the column order between the 2025 and 2026
exports of Crédit Mutuel changed, with `Ecriture Comptable`
moving to column 1 and `Motif` replacing the older `Référence …`
header). Different account labels (bank vs cash) carry slightly
different column sets. Future channels will bring more variants.

The pipeline therefore does NOT pin the column ordering. It uses
a **header-driven canonical-key mapping**: each column header is
matched against a small set of regular expressions, defined as
constants in `bl-foopgp`. The current set is:

| Canonical key | Header regex                                                |
|---------------|-------------------------------------------------------------|
| `date`        | `^Date( Valeur)?$`                                          |
| `credit`      | `^Cr[ée]dit ?€?$`                                           |
| `motif`       | `^(Motif\| R[ée]f[ée]rence \(d[ée]pend\|Depuis \(Vente)`    |

The three regexes are non-intersecting by construction. The tool
verifies this at runtime against every CSV: if a single column
header matches two regexes at once, processing aborts with a
clear error — the operator is then expected to refine the
regex set rather than silently accept ambiguity.

The three canonical columns are the only ones the pipeline
reads. Everything else (`Débit`, `Libellé`, `Solde`,
`Justificatif`, `RUM`, `END TO END`, `ICS`, ad-hoc analytics
columns…) is ignored — present or absent, in any position.

The CSV is the **review pivot**. The treasurer reconciles each
line between the upstream evidence (bank statement, cash
counting, HelloAsso dashboard) and the motif field; ambiguous
motifs are normalised in the `.fods`, re-exported, and re-fed
to the pipeline. The discipline is to look at the CSV at least
once a month — `bl_foopgp_update_input --dry-run` produces a
one-line preview per CSV row for a human to scan before the
real write.

### 4.3 bl_foopgp_update_input → by-email/

Command (one-time bootstrap, or monthly increment):

```sh
bl-foopgp update_input \
    --dry-run \
    ~/uetree-djis-by-email/ \
    ~/git/foopgp/foopgp-cashflow/csv_files/*.csv
# inspect output; then re-run without --dry-run
```

Behaviour:

- Verifies that `~/uetree-djis-by-email/.FORMAT` is
  `uetree 1.1 /` (or higher).

- For each CSV given on the command line, builds the canonical
  column mapping (§ 4.2). Requires that `date`, `credit`, and
  `motif` are all present; aborts otherwise.

- For each body line, retains only rows with a positive
  `credit`. Reads the `motif` and identifies the
  **beneficiary** as the **first string in the motif matching
  `BL_INTERACTIVE_EMAIL_REGEX`**. That e-mail is the canonical
  destination of the contribution.

- If a `u4=…` or `udid4=…` is also present in the motif, it is
  recorded as `eid-claimed:` in the leaf's `README.md` YAML
  frontmatter — purely **informational**: most donors today do
  not yet have a WoT-certified eid, so the claim awaits
  promotion. The tool does not act on the u4 beyond recording it.

- Lines without a recognisable e-mail in the motif are **skipped**
  with a warning. The treasurer is then expected to enrich the
  motif in the upstream `.fods` (most often by adding
  `<email@…>`) and re-export.

- The starting destination is
  `by-email/<TLD>/<full-domain>/<email-lowercase>/`. The chain
  of `.FORMAT` files is written at every intermediate level.
  When the leaf is created, its `README.md` carries the mandatory
  `lang:` key (IETF BCP 47 code, defaulting to `fr` for the
  cashflow context).

- **`.ALIASES` chain following.** Before writing, the tool
  checks the destination for a `.ALIASES` file. If present, it
  walks the chain (≤ 16 hops, with loop detection) and writes
  the EUR-input.log line at the **first leaf without `.ALIASES`**
  — the canonical position. Two flavours of chains exist :

  - **Auto** — installed by `bl_uetree_promote` (§ 4.5) when an
    eid is WoT-certified : the source by-email leaf is rewritten
    as `.ALIASES → /by-id/u4/<…>/<u4>/`.

  - **Manual** — installed by `bl-uetree aliases --add` (§ 4.4b)
    to declare a multi-email holder *before* any certification.
    Example : an admin who knows that `poyer.katia@orange.fr`
    and `irene.galor@mailo.com` are the same person can add the
    edge so that incoming lines for either address aggregate at
    the same canonical position.

  When the chain resolves into `by-id/u4/<…>/<u4>/`, the
  canonical README is left untouched (the u4 in the path is the
  WoT-certified authority, per uetree 1.1 § 7.5). For chains
  that still end in `by-email/`, the `lang:` and `eid-claimed:`
  frontmatter are maintained on the canonical leaf as before.
  If the motif's `u4=…` disagrees with the canonical u4 of a
  `by-id/u4/` destination, a `Warning:` is emitted and the
  certificate wins.

- `EUR-input.log` is appended idempotently with
  `| YYYY-MM-DD |     XXX,XX |` lines (10-char-wide credit,
  comma decimal, identical to the legacy `djis.git` format for
  bit-for-bit auditability) and re-sorted. Re-running the same
  CSV is a no-op (dupe detection scans the canonical
  EUR-input.log).

Because of the alias-aware routing, a full regeneration only
requires `rm $(find ~/uetree-djis-by-email -name EUR-input.log)`
followed by `bl-foopgp update_input` — promotion and manual
aliases are preserved (they live in `.ALIASES`, not in the
regenerated data). No `git rm` of leaves is needed.

### 4.4 WoT Certification of Claimed eids

Outside the pipeline, the association runs identity-verification
workshops:

- A volunteer with a fresh u4 presents their identity document to
  a foopgp certifier.

- The certifier signs the corresponding UID of the volunteer's
  OpenPGP certificate (`gpg --lsign-key` or equivalent), and
  publishes the signature to the foopgp keyserver
  (`keys.foopgp.org`).

- Maintainers running the pipeline refresh their keyring
  (`gpg --refresh-keys`), and the new signature becomes visible.

This is the **human in the loop** of the trust chain. There is no
substitute.

### 4.4b bl_uetree_aliases → manual `.ALIASES` (multi-email holders)

When an admin already knows that two identifiers belong to the
same person — for instance, a long-time contributor whose
certificate carries `irene.galor@mailo.com` but whose usual
inbox is now `poyer.katia@orange.fr` — and there is **no
short-term plan** to update the certificate, the admin can pre-
declare the link so that incoming contributions aggregate
correctly:

```sh
bl-uetree aliases --add poyer.katia@orange.fr irene.galor@mailo.com
# (direction is auto-detected by which side already exists ;
#  the inverse command is equivalent.)
```

This creates `by-email/fr/orange.fr/poyer.katia@orange.fr/`
with its `.FORMAT` chain and `.ALIASES` pointing to the
existing `irene.galor@mailo.com` leaf, which itself already
chains down to `by-id/u4/…/<u4>/`. Subsequent runs of
`bl_foopgp_update_input` will route both addresses to the same
canonical EUR-input.log.

Reading the current alias state:

```sh
bl-uetree aliases ~/uetree-djis-by-email/by-email
# (one line per edge, walking each chain to its canonical
#  leaf — see `bl-uetree aliases --help` for the rendering rules.)
```

`bl-uetree aliases` errors out at the first inconsistency —
`.HOMONYMS`, both `.ALIASES` and `README.md` on the same leaf,
dangling alias target, loops, depth > 16, etc. It does **not**
modify anything in list mode.

**This step is purely declarative.** It does not emit a Ɉ; it
just lets the pipeline correctly merge contributions across
several email channels of the same holder. The actual
djis-emitting promotion still happens through § 4.5, on the
WoT-certified canonical leaf.

The note on service degradation : as long as a holder has not
added their currently-used email as an UID of their certificate,
incoming encrypted/signed mail to that address cannot be served
by the foopgp keyserver. The alias on disk fixes the bookkeeping
side of the problem; it does **not** fix the OpenPGP side. The
fix on the OpenPGP side is for the holder to extend their
certificate with the new UID and have it re-signed in a
certification workshop (§ 4.4).

### 4.5 bl_uetree_promote → by-id/u4/ or by-id/u5/

Promotion is **orthogonal to the rest of the pipeline**: it can
be run before, between, or after `bl_foopgp_update_input` runs.
Its only effect on the routing of subsequent contributions is to
install an automatic `.ALIASES` redirect from the source
`by-email/` leaf to the canonical `by-id/<branch>/…/<eid>/`
position — which is then picked up by the chain-following logic
of `bl_foopgp_update_input` (§ 4.3). Once a leaf is promoted,
all future EUR-input.log lines for that email go to the canonical
position automatically.

The semantic of `bl_foopgp_update_contribs` (§ 4.6) **does**
depend on the promotion state at the time it runs — it counts
only `EUR-input.log` files under `by-id/u4/`. Running the two
steps in opposite orders therefore yields different
`contributions.md` — that's by design, not a bug.

#### Three calling modes

```sh
bl-uetree promote [OPTIONS] [PATH|ITEM]
```

The single argument is auto-detected (same convention as
`bl-uetree aliases`) and defaults to `$PWD`:

- **ITEM** — an email identifier (`jane@example.com`):
  resolved to the `by-email/` leaf inside `$PWD`'s uetree
  instance. Single-leaf promotion.
- **PATH to a single by-email leaf** — same effect, single
  promotion.
- **Wider PATH** (or argument omitted, defaulting to `$PWD`)
  — **sweep mode**: walks the subtree and attempts to promote
  every `by-email/<…>/<email>/` leaf still carrying a
  `README.md` (i.e. not yet aliased/promoted).

Typical session for a single member just certified:

```sh
cd ~/uetree-djis-by-email
bl-uetree promote --dry-run naturopathe.aveline@gmx.fr
# inspect; then re-run without --dry-run
bl-uetree promote naturopathe.aveline@gmx.fr
```

End-of-workshop sweep across the whole instance:

```sh
bl-uetree promote --dry-run        # report only
bl-uetree promote                  # do it
```

#### Eligibility — exactly one WoT-validated eid

For each candidate by-email leaf:

1. Unless `--no-fetch` is given, the tool calls `bl-pgpid get
   <email>` first to refresh the certificate from keyservers
   and Web Key Directories into the local keyring.
2. It then scans the certificate's UIDs and keeps only those
   with validity column `f` (foopgp WoT certified) or `u`
   (ultimate trust) **and** carrying a `u4=…` or `u5=…` token.
3. The resulting set is the source of truth:
   - **0 eids** → `Skip: no WoT-certified eid` — leaf left
     untouched, organise a certification workshop.
   - **exactly 1 eid** → promotion proceeds.
   - **2+ eids** → `Skip: multiple validated eids — manual
     disambiguation required` — the human decides (the cert
     may carry several historic u4 UIDs, only one should
     remain).

The `--skip-cert-check` option is a dangerous fallback that
takes the README's `eid-claimed:` at face value (no validity
check). To be hidden or removed in a later iteration; do not
rely on it.

The `--skip-cert-check` and `--no-fetch` are independent: in
batch / offline scenarios use `--no-fetch` alone (still
checks WoT validity, just doesn't pull fresh certs).

Why this design — see rule
[u4-certified-only-makes-authority](https://foopgp.org/fr/blog/2026-04-28-openpgp-id-spec/):
the signed certificate is the source of truth. A `README.md`'s
`eid-claimed:` field is at best informative (it records what
the contributor declared at cotisation time), at worst stale
(the certificate may have evolved — e.g. corrected geographic
coordinates).

#### What happens during a single promotion

- Branch & target are computed from the resolved eid:
  `/by-id/u4/<2>/<4>/<u4>/` or `/by-id/u5/<a>/<a_b>/<a_b_c>/<u5>/`,
  resolved into the parent uetree instance (incl. through the
  `by-id` submodule in the mixed-instance topology).
- Source files (`README.md`, `EUR-input.log`, receipts…) are
  copied to the target. Files in the hardcoded merge catalog
  (today: `EUR-input.log` → sort-unique) are merged content-wise.
- Any **other file conflict** at the target aborts that *one*
  promotion (in sweep mode the next leaf is still attempted),
  unless `--merge` is given — then the source's conflicting file
  is dropped and the target's kept. Useful when a second email
  of a multi-email holder is promoted into the canonical already
  established by the first.
- At the source: migrated files are removed, `.ALIASES` is
  written pointing to the canonical target. The source's
  `.FORMAT` is preserved.

#### Sweep accounting

In sweep mode each leaf is independent. Soft failures (no cert,
multi-eid, file conflict without `--merge`) are reported on
stderr and the sweep continues. The final summary line tallies
**promoted / skipped / aborted**. Hard data-corruption errors
(missing `.FORMAT`, malformed `.ALIASES` chain, etc.) abort
that one leaf but the sweep still moves on.

#### Edge case — wrong email at cotisation = "don" until recovery

If a member writes a wrong email in the transfer motif and
doesn't tell the treasurer in time for a manual alias, their
contribution lands in a phantom `by-email/<tld>/<domain>/<wrong-email>/`
leaf with no chain to a real eid. As long as no Ɉ have actually
been emitted (the `register` step is gated, see § 4.5b *NOT
implemented yet*), this is recoverable later via
`bl-uetree aliases --add <wrong-email> <correct-email-or-eid>`
— the chain will then route the line to its true canonical at
the next `bl-foopgp update_input` run. The CSV remains the
audit trail; the `.ALIASES` documents the human decision.

### 4.6 bl_foopgp_update_contribs → Ɉ Emission

```sh
bl-foopgp update_contribs ~/uetree-djis-by-id/
```

Behaviour:

- Verifies the `.FORMAT` of `~/uetree-djis-by-id/`.

- Warns about any `EUR-input.log` found outside `by-id/u4/`
  (such files MUST exist only in the private `by-email/`
  instance and are ignored by the djis computation).

- For each `EUR-input.log` under `by-id/u4/`, computes the djis
  amount of each contribution using the **stingynalty schedule**
  in force at that contribution's date. The schedule is a
  monthly table baked into `bl-foopgp`:

      log(1 + g + EUR) / log(2) / stingynalty - t

  where `g` is the cumulative EUR previously contributed to this
  entity, `t` is the cumulative djis previously emitted to this
  entity, and `stingynalty` grows by 0.5% per month from a
  baseline of 1.0 in July 2024.

- Writes a `contributions.md` Markdown table next to the
  `EUR-input.log`, with columns `date | EUR | DJI | registered`.
  The `registered` flag stays `no` until manual validation (the
  board signs off).

### 4.7 Publication

The public uetree-djis-by-id is reachable via static HTTPS
serving (the bare repository is mirrored, or the public branch is
checked out and rendered).

Three Hugo-served pages on `foopgp.org` consume the registry:

- `/djis-simulator/` — given a hypothetical additional
  contribution, simulates the djis it would create. Does not
  consult the registry.

- `/djis-viewer/` — given an u4 or an u5, displays the current
  djis balance and history.

- `/investir/` — given an e-mail, looks up
  `by-email/<tld>/<domain>/<email>/EUR-input.log` and displays
  the total contributions as a **logarithmic bucket**
  (`0..49 €`, `50..199 €`, `200..999 €`, `1000..4999 €`,
  `≥5000 €`) for privacy. A donor whose eid has not yet been
  certified can therefore confirm that their contribution has
  been received without exposing the exact amount.

---

## 5. The Human in the Loop

Although the pipeline is deterministic and signed end-to-end,
it embeds three points where a human MUST review:

1. **CSV reconciliation** (Section 4.2). The treasurer matches
   bank-statement lines to `(u4=...) <email>` motifs. This is
   chronologically the most demanding step today; an automation
   layer for `bl_foopgp_update_input` is under discussion.

2. **WoT certification** (Section 4.4). Cannot be automated; the
   physical verification of an identity document by a certifier
   is, by design, a human act.

3. **Registered flag** (Section 4.6). The `registered: no →
   yes` transition is the act of validation by the board.
   Tooling produces the candidate `contributions.md`; only a
   human signs it off.

A monthly reminder e-mail is sent to the treasurer, the
president and the secretary, with a checklist of the steps for
the past month. The reminder is generated and signed by Mnème
and sent through the maintainer's signed mailbox.

---

## 6. Privacy and Visibility

The split between `uetree-djis-by-email` (private, shared) and
`uetree-djis-by-id` (public) is the operational expression of
uetree 1.1 Section 5.4: only the public-by-nature branch
(`by-id/u4/`) is published; the e-mail-keyed branch stays
behind shared access control.

Public observers can therefore confirm:

- Which u4 identifiers have received contributions, and how
  much djis was emitted to them.

- The total mass of djis emitted by the association.

They cannot observe:

- Which e-mail addresses have contributed without certification.

- The exact amount, date or motif of any particular bank
  transfer, except via the donor's own logarithmic-bucket
  feedback on `/investir/`.

The `foopgp-cashflow` repository remains tightly held: it is
the only place where bank statement labels (which may carry
unmasked names and account numbers) appear.

---

## 7. Auditability

Every artefact in the pipeline is reproducible from the CSV
inputs:

- Re-running `bl_foopgp_update_input` on the same CSV produces
  the same `by-email/` content (idempotence verified May 2026).

- Re-running `bl_uetree_promote` is not idempotent at the same
  leaf (the source `README.md` has been replaced by
  `.ALIASES`); the public registry however is reproducible by
  promoting every certified entity from a fresh `by-email/`
  build.

- Re-running `bl_foopgp_update_contribs` on the same
  `EUR-input.log` produces a `contributions.md` byte-identical
  to the previous one. This was verified against the legacy
  `djis.git` (pre-uetree, format 1.0) on the same inputs: the
  per-entity djis values matched exactly for the entities
  available in both registries.

Every commit in the three involved repositories is OpenPGP-signed,
and the bare repositories on `openudc.org` carry a `pre-receive`
hook that refuses unsigned pushes (cf.
`REMOTE/pre-receive.reject`).

---

## 8. References

- **uetree 1.1 specification** —
  [draft-foopgp-uetree-00.txt](./draft-foopgp-uetree-00.txt).

- **uftree early sketch** —
  [draft-foopgp-uftree-00.txt](./draft-foopgp-uftree-00.txt).

- **OpenPGP ID specification** —
  [draft-foopgp-openpgp-id-00.txt](./draft-foopgp-openpgp-id-00.txt).

- **bash-libs** —
  [foopgp/bash-libs on Codeberg](https://codeberg.org/foopgp/bash-libs).
  Branches `mneme/foopgp-cashflow-uetree-1.1`,
  `mneme/bl-uetree-promote`,
  `mneme/foopgp-cashflow-update-contribs` to be merged into
  `main` after review.

- **foopgp white paper part 1** —
  [Whitepaper part 1 (2024-08)](/blog/2024-08-15-whitepaper-part1/).

- **foopgp white paper part 2** —
  [Whitepaper part 2 (2024-09)](/blog/2024-09-01-whitepaper-part2/).

- **stingynalty parameters** —
  [Rules and parameters in force](/about/rules-parameters/).

- **donation page** — [Investir / Donate](/investir/).
