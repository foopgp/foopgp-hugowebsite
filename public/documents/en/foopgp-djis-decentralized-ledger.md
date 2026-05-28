# foopgp Ɉ ledger — decentralized design (draft)

**Status.** Work in progress, 2026-05-27. The architecture is settled
in principle, several details remain to be locked. This document
records the design as of today; it will evolve. Comments welcome to
<mneme@foopgp.org> (signed messages preferred).

**Audience.** Technical maintainers of foopgp's accounting and djis
emission pipeline; future implementers of compatible tooling.

**Scope.** This document covers the **second half** of the
euro → djis (Ɉ) chain, from the point at which a contribution has
been attributed to a WoT-certified eid down to the recording and
exchange of Ɉ tokens in the decentralized ledger. The first half
(bank → CSV → `by-email/`) is described in
[foopgp-djis-emission-workflow.md](./foopgp-djis-emission-workflow.md),
which remains valid for the upstream side.

This document **replaces in spirit** the previous
`djis.git` monolithic repository (codeberg.org/foopgp/djis), now an
archive of historical contributions.

---

## 1. Paradigm: maximum decentralization

The foopgp Ɉ ledger has **no central validator**. No board approves
emissions; no oracle, sequencer, or "trusted node" stamps a
transaction as valid. Every operation that moves Ɉ is signed by the
human parties it concerns, and recorded in a git subtree that one of
those parties administers.

This is by design, and it follows directly from the [foopgp
contre-valeurs](https://foopgp.org/fr/about/): a complementary
currency that requires a central validator reintroduces the very
asymmetries of power, capture and rent-seeking that the project aims
to dissolve. It is also the line that separates foopgp from the
proof-of-work and proof-of-stake families (Bitcoin, Ethereum), whose
on-chain "decentralization" is contradicted by the off-chain
concentration of mining or staking — and whose energy profile has
no acceptable answer.

foopgp's ledger does not validate by machine consensus. It
validates by **human signatures, with human responsibility**.

---

## 2. From one repository to a tree of repositories

A monolithic git repository cannot scale to a billion entities
(pack files, clone times, garbage collection, history depth). The
ledger is therefore not one repository but **a tree of
repositories** that reference each other via git submodules.

The top-level layout sketch:

```
uetree-djis-by-email.git                  [private, shared]
├── README.md, REMOTE/, hooks/
├── by-email/<tld>/<dom>/<email>/         (kept here, see § 5 of
│   ├── README.md (eid-claimed:…)          foopgp-djis-emission-
│   └── EUR-input.log                       workflow.md)
└── by-id/                                ← submodule
    │
    └── uetree-djis-by-id.git             [public]
        ├── README.md, REMOTE/, hooks/
        └── u4/<2c>/<4c>/<u4>/            ← submodule per entity
            │
            └── (the entity's published face;
                 administered by foopgp, NOT by the holder)
            ├── README.md
            ├── EUR-input.log
            └── DJI/                      ← submodule
                │
                └── (the entity's Ɉ ledger;
                     administered by the holder)
```

The fan-out levels `<2c>/` and `<4c>/` MAY be plain directories of
their containing repository today, and MAY be promoted to submodules
later when density requires it. The minimal granularity is **one
repository per entity (`<u4>/`)**, with a second submodule (`DJI/`)
inside it.

This is consistent with [uetree 1.1 spec § 9.2 "Public Split
Instances"](./draft-foopgp-uetree-00.txt): each publishable subtree
is its own git repository, with its own `.FORMAT`, its own
access-control configuration (`REMOTE/pre-receive.*`), and its own
publication channel.

---

## 3. Dual administration: the entity's face vs the entity's ledger

The cornerstone of the design is the **dual administration** at
the entity level:

| Repository                          | Administrator | Holds                                                       |
|-------------------------------------|---------------|-------------------------------------------------------------|
| `by-id/u4/<…>/<u4>/`                | foopgp        | The entity's published minimal face — what the network sees |
| `by-id/u4/<…>/<u4>/DJI/`            | the holder    | The entity's own Ɉ ledger — what the holder signs           |

The motivation is the asymmetry of who is allowed to rewrite what:

- If an entity could rewrite its own face, it could erase
  inconvenient history with the network (a friend's signature, an
  attestation, a public reference). That is incompatible with a
  trust system grounded in the OpenPGP web of trust.

- If the network could rewrite the entity's ledger, every entity
  would have to trust foopgp's administrators with its Ɉ. That is
  incompatible with the decentralization paradigm of § 1.

The compromise is: **the entity administers its acts, the network
administers its image**.

Concretely, the holder's OpenPGP fingerprint appears in `DJI/`'s
`REMOTE/pre-receive.acl` with permission `A` (admin); the foopgp
admins appear in `<u4>/`'s ACL with `A`, and the holder is NOT
there.

---

## 4. Three signed acts: emission, receipt, cancellation

Movements of Ɉ between entities take place through three classes of
signed commits, in the `DJI/` subrepositories of the parties
concerned.

### 4.1 Emission

The emitter signs a commit in their own `DJI/`, decrementing their
balance. The commit MUST state:

- the **recipient** (an eid — typically u4);
- the **amount** in Ɉ;
- a **collection deadline** (an absolute date by which the recipient
  is expected to record the receipt — eg 30 days from now);
- a non-empty list of **third-party witnesses** (eids) charged with
  observing the deadline and authorised to issue the cancellation
  commit (§ 4.3) if the deadline passes unsatisfied. **Mandatory,
  not optional** — without designated witnesses, the rule of
  delay has no peer to enforce it and the operation would lack
  the social signature that makes the distributed consensus
  meaningful.

The emission commit is the **declaration of an intent to give**,
not the completion of the transfer. The recipient must still act.

### 4.2 Receipt

The recipient signs a commit in their own `DJI/`, incrementing
their balance. The commit MUST:

- reference the emission commit (by full SHA + emitter eid);
- be authored within the deadline stated in the emission.

A late receipt is invalid and SHOULD be rejected by reading tools.

### 4.3 Cancellation

If the deadline of an emission passes without a matching receipt,
**any** of the third-party witnesses named in the emission (or the
emitter herself) MAY sign a cancellation commit in the **emitter's**
`DJI/`. The cancellation restores the balance, references the
emission commit, and includes the timestamp of observation.

The cancellation is a peer-to-peer expression of the rule of
delay — not a privileged administrative act. Anyone designated as
witness can issue it; nobody who was not designated can.

### 4.4 What does NOT exist

- No "validation" of an emission by anyone other than the recipient
  acting upon it.
- No clearing house, no settlement layer, no "smart contract".
- No coin issuance event other than the emission described in § 4.1
  — which is itself bounded by the contributor's cumulative
  contribution as computed in `EUR-input.log` and the stingynalty
  schedule (cf. [foopgp-djis-emission-workflow.md](./foopgp-djis-emission-workflow.md) § 4.6).

### 4.5 Where the consensus actually lives — shared evolving hooks

The three signed acts of § 4.1 — § 4.3 are necessary but not
sufficient. Without a checker on each node verifying that an
incoming commit obeys the rules (signature by an authorised party,
referenced grain available, deadline coherent, witness recognised,
no double-spend), an invalid commit could enter a node's local
clone and propagate.

The checker lives in **`REMOTE/pre-receive.*` hooks** on each bare
repository hosting a `DJI/`. These hooks share two properties:

- **Evolutive.** Operational experience refines the rules. The
  hook code is versioned, deployed gradually, and runs the same
  on every node — never with private extensions.

- **Identical across the network.** If a node runs a different
  hook, its local registry parts ways from the canonical
  consensus — a fork. To avoid this, the hook itself is a
  signed, versioned, published artefact, and operating a `DJI/`
  bare with a non-current hook is an operational error that the
  network MAY refuse to peer with.

This is the foopgp counterpart to what other ledgers call a
"validation rule set". The difference: here the rules apply at
the moment a commit is accepted into a repository, not at the
moment a transaction is mined into a block. There are no miners.

The current consensus surface (as of 2026-05-27) covers:

- **Signed commits required.** Already in place
  (`REMOTE/pre-receive.reject: unsigned`). The signer's
  fingerprint MUST match an entity declared in
  `REMOTE/pre-receive.acl` with the appropriate permission
  for the path touched.

- **Fast-forward only.** Already in place
  (`REMOTE/pre-receive.reject: non-fast-forward`). Covers
  force-push, rebase-and-push, reset.

- **Single branch.** A `DJI/` (and more generally any djis
  registry repository) accepts pushes on **exactly one**
  branch — by convention `main`. Any attempt to create or
  push to another ref is rejected. Without this rule, an
  actor could fork their own DJI/ locally and present
  different balances to different peers.

- **Flood protection.** A repository accepts at most **N**
  commits within a sliding window of **T**. Both N and T are
  **hardcoded** in the active version of the hook — identical
  for every node, on pain of fork. Without this rule, an
  attacker who controls many accounts could spam the ledger
  with meaningless transactions. The exact values of N and T
  will be tuned by experience; an initial indicative pair for
  an individual `DJI/` is roughly N=24 commits / T=24 hours.

- **Semantic validity of the transaction itself** — that the
  diff over the wallet matches the trailers (Section 7),
  that grain accounting is conserved, that referenced commits
  (`Foopgp-Tx-Refs`) actually exist and have matching
  amounts, that witnesses in a CANC are listed in the
  original EMIT, that deadlines are coherent. This layer is
  the most application-specific and is still being designed.

All of the above belong to the same hook code, deployed
identically on every node. A node running a divergent version
forks the registry the moment it diverges — its history can no
longer be merged back without an explicit reconciliation by
network participants. This is why the consensus version is
itself a signed, versioned, shared artefact whose update
process is documented and observable.

---

## 5. The initial emission: from foopgp to a freshly certified eid

The very first Ɉ a contributor receives are emitted **by the
association itself** into the contributor's `DJI/`, the moment the
contributor's eid is WoT-certified for the first time. This
emission:

- is signed by an administrator of foopgp (initially the treasurer,
  the president, or Mnèmê on their behalf);
- decrements no balance (foopgp is the **issuer** of Ɉ against
  euros it has actually received — bookkeeping invariant);
- targets the freshly certified `<u4>/DJI/` repository, which is
  created at this moment, with the holder set as its admin in
  `REMOTE/pre-receive.acl`.

From that point on, the holder takes control of their `DJI/`, and
no further centralized intervention is required for them to move
their Ɉ to other entities (cf. § 4).

---

## 6. On-disk format for grains and wallet (inherited from prototype)

The on-disk representation of Ɉ inside a `DJI/` subrepository is
**already partly defined** by an earlier prototype (`bl-dji` in
`bash-libs` + `tools/register-new-djis.sh` in
`codeberg.org/foopgp/foopgp-members`). The on-wire **transaction
flow** (emission / receipt / cancellation, signed by the actual
parties) is what remains to be coded; the **token format** itself
is stable.

### 6.1 Grain — atomic non-fungible token

A djis is not a balance number; it is a set of **grains**. Each
grain is a 55-character ASCII string carrying its own provenance:

```
dji<NN><o><YYYYMMDD>u4<u4-value><X>
│   │   │  │        │             └─ serial [0-9A-F] (disambiguates
│   │   │  │        │                identical grains)
│   │   │  │        └─ "u4" + 38 chars (first owner)
│   │   │  └─ date of birth, YYYYMMDD
│   │   └─ origin: 'c' = contribution, 'd' = dividend
│   └─ exponent N. Value of this grain = 2^N µɈ (micro-djis)
└─ literal "dji" prefix
```

A grain is therefore **non-fungible**: two grains of equal value
remain distinguishable by their origin, date and first owner.
Bookkeeping is exact, history is preserved through every transfer.

### 6.2 Wallet — flat file of grains

A wallet is a plain text file named `*.w` (default `default.w`)
inside `DJI/`. One line, one grain. Sorted descending (largest
grain first) for transactional convenience.

### 6.3 Granularity policy

When the emitter generates grains for a contribution, any grain of
exponent `n > 4` is split into 15 finer grains via the identity
`2^n = 1·2^(n-2) + 2·2^(n-3) + 4·2^(n-4) + 8·2^(n-5)`. This
guarantees that future transactions of common amounts can find
exact-match grain combinations.

### 6.4 Available tooling (`bl-dji`)

The `bl-dji` library already provides :

- `bl_dji_2micro` / `2deci` / `2milli` — value conversions to
  sub-units of Ɉ.
- `bl_dji_2powersoftwo` — decompose a value into the powers of
  two used to mint grains.
- `bl_dji_readwallet` — parse a wallet, output the total or the
  count per exponent.
- `bl_dji_stripwallet` — select and remove grains from a wallet
  to assemble a transaction of exactly (or at least) a target
  value.

These are the building blocks of the future signed-transaction
flow. They will be re-used as-is; the new code will wrap them
inside commit/signature plumbing.

---

## 7. Commit message format — the transaction itself

The commit IS the transaction. There is no separate transaction
file in `DJI/`; the only artefacts are the wallet (`default.w` or
others) and the commits that modify it. Consequently, the
**git commit message** carries all the structured metadata of the
transaction. The hook on the bare repository parses it to enforce
the rules.

The format follows the long-standing git convention of *trailers*
(cf. `git interpret-trailers(1)`): a short human subject line, a
blank line, a free body if useful, a blank line, and a block of
`Key: value` trailers that machines parse. Trailers are extracted
deterministically; their order is not significant.

### 7.1 Subject line

A single line, UTF-8, ≤72 characters, suitable for `git log
--oneline`. Free-form for the human reader, but RECOMMENDED to
follow:

```
<TYPE> Ɉ<amount> {→|←} <recipient-or-sender-short>
```

where `<TYPE>` is one of `EMIT`, `RECV`, `CANC`; `Ɉ<amount>` is the
total value of grains moved in this commit, formatted with up to
six decimals; the arrow direction reflects the perspective of the
wallet being modified (`→` for outgoing, `←` for incoming or
restoring); and `<recipient-or-sender-short>` is the first eight
characters of the eid of the other party.

Examples:

```
EMIT Ɉ0.500000 → u4=aBcdEfgh
RECV Ɉ0.500000 ← u4=sRyUhEbN
CANC Ɉ0.500000 ← u4=sRyUhEbN     (third-party witness restoring)
```

### 7.2 Trailer block

A trailer is a line of the form `Key: value` at the bottom of the
commit message (per `git interpret-trailers`). The following keys
are normative for foopgp Ɉ transactions:

| Key                       | EMIT | RECV | CANC | Value type                                                          |
|---------------------------|------|------|------|---------------------------------------------------------------------|
| `Foopgp-Tx-Type`          | M    | M    | M    | `EMIT` / `RECV` / `CANC`                                            |
| `Foopgp-Tx-Sender`        | M    | M    | M    | full eid of the wallet being modified (the commit's primary actor)  |
| `Foopgp-Tx-Recipient`     | M    | M    | M    | full eid of the counterpart                                         |
| `Foopgp-Tx-Amount-µɈ`     | M    | M    | M    | total µɈ moved (integer)                                            |
| `Foopgp-Tx-Deadline`      | M    | —    | M    | ISO 8601 absolute date-time (UTC, second precision)                 |
| `Foopgp-Tx-Witnesses`     | M    | —    | —    | comma-separated list of eids (at least one — mandatory, cf. § 4.1)  |
| `Foopgp-Tx-Refs`          | —    | M    | M    | git SHA-1 of the matching EMIT commit (40 hex chars)                |
| `Foopgp-Tx-Origin`        | M*   | —    | —    | for the **initial** emission from the foopgp association only: `contribution`/`dividend` and the underlying `EUR-input.log` line(s) |
| `Foopgp-Tx-Note`          | O    | O    | O    | free-text human note                                                |

M = mandatory, O = optional, M* = mandatory for the initial emission
case (§ 5), absent for peer-to-peer transactions.

`Foopgp-Tx-Sender` is the eid of the wallet that this commit modifies;
it MUST match the eid embedded in the path of the bare repository
under `by-id/u4/<…>/<u4>/DJI/`. `Foopgp-Tx-Recipient` is the
counterpart; the pair (Sender, Recipient) is interpreted with the
help of `Foopgp-Tx-Type`:

- in `EMIT`, value flows from Sender to Recipient;
- in `RECV`, value flows from Recipient to Sender (i.e. Sender is
  the receiver, gaining grains; Recipient is the original emitter);
- in `CANC`, the commit is in Sender's wallet (the original emitter),
  written by a witness or the emitter, restoring grains previously
  emitted toward Recipient.

The chained `Foopgp-Tx-Refs` link emissions, receipts, and
cancellations across repositories. A reader can reconstruct the
full transaction by following the SHAs in either direction.

### 7.3 Worked example: a 0.5 Ɉ transfer Alice → Bob

**1. Alice signs an emission commit in her own `DJI/`.**

```
EMIT Ɉ0.500000 → u4=NXZp8D5s

Offered to Didier Loyens for the cool electronic parts he sourced for
us at the last workshop. Thanks!

Foopgp-Tx-Type: EMIT
Foopgp-Tx-Sender: u4=sRyUhEbNU5OwyLEjfSwaXAe_42.17-002.76
Foopgp-Tx-Recipient: u4=NXZp8D5sqvFi3vO8_IMf5Qe_50.64_004.64
Foopgp-Tx-Amount-µɈ: 500000
Foopgp-Tx-Deadline: 2026-07-15T00:00:00+00:00
Foopgp-Tx-Witnesses: u4=pSJCt0kzwzx9LzvAY6GsXAe_42.17-002.76,
 u4=sC4bFh95b6h6sNxXiqU4uAe_42.17-002.76
```

The commit's diff retires from `DJI/default.w` the seven grain lines
that `bl-dji stripwallet "0.5" default.w` produced — `bl-dji` already
knows how to do this. The commit is signed by Alice's OpenPGP key.

**2. Alice transports the patch to Bob.**

A `git format-patch HEAD~1..HEAD` produces a `.patch` file; Alice
e-mails it to Bob (`mneme-send --attach …` would do, in
keeping with the rest of the foopgp tooling). The transport channel
is not normative — the trust comes from the signatures, not the
channel.

**3. Bob signs a receipt commit in his own `DJI/`.**

```
RECV Ɉ0.500000 ← u4=sRyUhEbN

Received Alice's gift, with thanks.

Foopgp-Tx-Type: RECV
Foopgp-Tx-Sender: u4=NXZp8D5sqvFi3vO8_IMf5Qe_50.64_004.64
Foopgp-Tx-Recipient: u4=sRyUhEbNU5OwyLEjfSwaXAe_42.17-002.76
Foopgp-Tx-Amount-µɈ: 500000
Foopgp-Tx-Refs: 9c2f8a1d3b7e4f5a6b8c9d0e1f2a3b4c5d6e7f8a
```

The commit's diff adds the same seven grain lines (which Bob copies
verbatim from Alice's patch) to **his** `DJI/default.w`. Bob's
commit is signed by Bob's OpenPGP key. The `Foopgp-Tx-Refs` SHA
points at Alice's commit on her side.

**4. Cancellation path, if Bob never commits.**

If Bob fails to commit RECV before the deadline 2026-07-15, either
of the listed witnesses (Isabelle `u4=pSJC…` or Katia `u4=sC4b…`)
MAY sign a cancellation commit in **Alice's** `DJI/`:

```
CANC Ɉ0.500000 ← u4=NXZp8D5s

Deadline 2026-07-15 passed, no RECV observed in Bob's DJI/. Restoring
balance to the emitter (Alice).

Foopgp-Tx-Type: CANC
Foopgp-Tx-Sender: u4=sRyUhEbNU5OwyLEjfSwaXAe_42.17-002.76
Foopgp-Tx-Recipient: u4=NXZp8D5sqvFi3vO8_IMf5Qe_50.64_004.64
Foopgp-Tx-Amount-µɈ: 500000
Foopgp-Tx-Deadline: 2026-07-15T00:00:00+00:00
Foopgp-Tx-Refs: 9c2f8a1d3b7e4f5a6b8c9d0e1f2a3b4c5d6e7f8a
```

The commit's diff re-adds the seven grain lines to Alice's
`default.w`. It is signed by the witness's OpenPGP key — a key
whose eid MUST appear in the `Foopgp-Tx-Witnesses` of the original
emission. The hook on Alice's bare verifies that:

- the original emission commit exists and is reachable;
- its `Foopgp-Tx-Deadline` is in the past;
- the witness signing this CANC is listed in the original emission's
  `Foopgp-Tx-Witnesses`;
- no `RECV` referencing the original emission has been observed yet
  in any known peer's `DJI/` (discovery mechanism to be specified —
  cf. § 8).

### 7.4 ABNF of trailer values (informative)

```
type-value     = "EMIT" / "RECV" / "CANC"
eid-value      = "u4=" 22(BASE64URL-CHAR) "_" lat "_" lng
                 ; cf. draft-foopgp-openpgp-id-00
microdjis      = 1*DIGIT
                 ; non-negative integer, no separator
iso-datetime   = date "T" time tz
                 ; RFC 3339 §5.6 date-time, UTC, second precision
witnesses-list = eid-value *("," LWSP eid-value)
                 ; one or more, comma-separated, continuation
                 ; lines start with one whitespace
sha1           = 40HEXDIG
ref-value      = sha1
origin-value   = ("contribution" / "dividend") SP source-locator
                 ; source-locator: path of the EUR-input.log line(s)
                 ; the emission consumes
```

### 7.5 What goes in the wallet diff

The grain lines themselves carry their own provenance (cf. § 6):
the date of the emission, the first owner, the origin. A receiver
adds the **same** grain lines (verbatim) to their wallet; nothing
is rewritten. The grain serial number `<X>` ensures uniqueness
even when several otherwise-identical grains are minted in the same
batch.

This has a useful consequence for audit: knowing a grain string is
enough to trace it through any number of transactions, because each
transfer is just `wallet1 - grain | wallet2 + grain`, both visible
in their respective `DJI/` git histories.

---

## 8. Open design questions (as of 2026-05-27)

1. **Exact on-disk shape of a transaction.** The wallet file
   stores grains; but an emission commit, a receipt commit, a
   cancellation commit each carry **structured metadata**
   (recipient eid, deadline, witnesses, references). What is the
   precise file shape — eg `tx/<iso8601-sec>_<sig>.asc` carrying
   a YAML-ish or JOSE-ish payload? An `EMISSION.md`/`RECEIPT.md`
   appended atomically? To be designed against the
   `bl_dji_stripwallet` interface.

2. **Granularity of submodules.** Should `<2c>/` and `<4c>/`
   already be submodules from day one, or only `<u4>/`? Easier to
   migrate to deeper splits later than the converse.

3. **Discovery / replication.** How does the holder of `<u4>/DJI/`
   announce its existence and pull its peers' `DJI/`s when needed
   to verify incoming transactions? A keyserver-style discovery,
   `.LINKS` files in `<u4>/`, or a simple federation script?
   To be specified.

4. **Late receipt window after cancellation.** Should a recipient
   who missed the deadline have a grace period to "request a
   re-emission" from the emitter? Cleanest semantics is: no, they
   ask the emitter to issue a new emission. To be confirmed.

5. **Multi-currency or sub-units.** Today everything is Ɉ. cɈ
   (centi-Ɉ) is just a display convention. Do we need an explicit
   smallest unit in the on-disk format, or do we keep arbitrary
   precision and let tools display? Likely the latter.

6. **History compaction.** A long-running `DJI/` will accumulate
   commits. Are we comfortable with unbounded growth, or do we
   want periodic balance-checkpoints (signed snapshots)? Probably
   not urgent until volumes show it.

These questions will be answered iteratively, in dialogue with the
prototypes JJB is recovering and with the operational experience of
the first few `DJI/` subrepositories.

---

## 9. What this design replaces

- The previous `djis.git` monolithic repository
  (codeberg.org/foopgp/djis) ceases to be an active registry.
  It is preserved as a historical archive of contributions up to
  May 2026, and as a reference for tooling that operated against
  it (`tools/gifts-stats.sh`, ancestor of `bl-foopgp contribs`).

- The transient `uetree-djis-by-id.git` repository pushed during
  the May 2026 refactor (containing flat fiches under
  `by-id/u4/`, computed `contributions.md`) is also to be
  regenerated — without intermediate `contributions.md`, since
  the per-entity ledger lives in `DJI/` from now on.

- The `bl-foopgp contribs` aggregator and `bl_uetree_promote`
  must both be rewritten to traverse the submodule tree and to
  initialize new `DJI/` subrepositories at first certification.

---

## 10. Why publish a draft this early

Two reasons:

- **Transparency** — anyone interested in foopgp's Ɉ ledger
  deserves to read the design before it is implemented, not after.
  Comments on this draft can still shape it.

- **Discipline** — putting the design on paper in a single document
  protects against accidental drift in the implementation. If a
  later commit contradicts a paragraph here, either the
  implementation is wrong, or the document is wrong, but the gap
  is visible.

---

## 11. References

- **uetree 1.1 specification** —
  [draft-foopgp-uetree-00.txt](./draft-foopgp-uetree-00.txt).

- **OpenPGP ID specification** —
  [draft-foopgp-openpgp-id-00.txt](./draft-foopgp-openpgp-id-00.txt).

- **foopgp Euro → djis upstream workflow** —
  [foopgp-djis-emission-workflow.md](./foopgp-djis-emission-workflow.md)
  (CSV ingestion, certification, `by-email/` staging).

- **foopgp contre-valeurs and white paper** —
  [foopgp.org/fr/about/](https://foopgp.org/fr/about/),
  [whitepaper part 1](/blog/2024-08-15-whitepaper-part1/),
  [whitepaper part 2](/blog/2024-09-01-whitepaper-part2/).

- **Historical critique of Bitcoin / Ethereum from the foopgp
  perspective** — JJB notes, available on request.
