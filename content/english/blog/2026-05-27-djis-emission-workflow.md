---
Title:   "From an incoming euro to a djis emission: the full chain, documented"
Date:    2026-05-27T11:00:00+02:00
Tags:    [ "djibian", "workflow", "documentation", "openpgp" ]
categories: [ "News", "Solution" ]
draft: false
author: [ "Mnème", "Jean-Jacques Brucker" ]
description: "Our first complete technical document of the accounting chain. How an incoming euro — bank transfer, cash, online payment processor — becomes a recorded contribution, and for contributors whose cryptographic identity is WoT-certified, a djis (Ɉ) emission. With actual numbers: 72 reconstructed contributions from our historical CSVs, 3 effective promotions, and zero regression against our previous registry."
lang: en
bg_image: "images/backgrounds/page-title.jpg"
image: "images/solutions/dji.png"
type: "post"
---

A self-respecting complementary currency does not issue itself by decree: it **issues itself by contribution**. When someone donates 50 € to foopgp, the system — the tool chain plus the human in the loop — produces in return a precise amount of djis (Ɉ) credited to the contributor's identity. That amount depends on the contributor's history, the timing of the donation, and a shared parameter called the *stingynalty*. It does not depend on a committee or on an opaque robot.

Today we are publishing the first complete technical document describing this chain:

**[foopgp-djis-emission-workflow.md](/documents/en/foopgp-djis-emission-workflow.md)**

## Several accounts, one pivot

The association does not have a single euro account: it has **several**, all tracked in the same private bookkeeping repository. As of today:

- our **bank account** at Crédit Mutuel — the SEPA account where direct transfers and HelloAsso settlements land;
- our **cash drawer** — coins and banknotes received in person;
- our **historical Stripe account** — very low usage, never fully integrated into the books, currently being retired in favour of HelloAsso.

Tomorrow there could be more: an alternative payment processor, a local currency, a new banking partner. The system is designed for that: one account = one stable label, one or several CSV files per account and per period (annual today, monthly or daily tomorrow). The rest of the pipeline is identical.

The heart of the process remains a **CSV file** per account. Not an API, not a database: a CSV signed by the treasurer, listing the operations received with their motif. That is where the **human reconciliation** happens between an operation line and the contributor's identifier (what appears in the "motif" or "libellé" column, typically `(u4=…) <email@…>`).

The CSV is the pivot between the euro world (the bank, the cash drawer, the payment processor) and the djis world (the uetree trees). Upstream of the CSV: accounting materiality. Downstream: cryptography.

## A six-step pipeline

1. **Payment** through one of the channels — IBAN transfer, HelloAsso card payment, cash handed to the treasurer, or (legacy) Stripe.
2. **CSV extraction** from the association's accounting spreadsheet, one file per account and per period. Pipe-separated UTF-8.
3. **`bl-foopgp update_input`** reads the CSV. Its first task is to **understand the format**: it reads the column headers and maps them onto three canonical keys — `date` (value date), `credit` (the euros credited), `motif` (the free-form field naming the beneficiary). The mapping is done through regular expressions, non-intersecting by construction, which makes the tool robust to format changes (Crédit Mutuel reworked its export between 2025 and 2026 without breaking anything for us). The beneficiary is then identified as **the first email address found in the motif** — not the u4, which remains purely informational until it is certified. The entry is created or updated in a private [`uetree-djis-by-email`](/blog/2026-05-27-uetree-spec/) instance, under `by-email/<tld>/<domain>/<email>/`.
4. **WoT certification in the foopgp web of trust**: an association certifier verifies the contributor's identity document and signs their OpenPGP UID. This step is strictly human and **mandatory**; nothing replaces it.
5. **`bl-uetree promote`** moves the certified contributor's entry from `by-email/` (private) to `by-id/u4/` (public) — the public branch of the djis registry. No entry migrates without effective certification.
6. **`bl-foopgp update_contribs`** computes, for each contribution, the djis amount emitted, using the logarithmic formula applying the *stingynalty* at the date of the transfer.

The public `by-id/u4/` tree is then visible: a visitor of [`/djis-viewer/`](/djis-viewer/) can see, for each u4 identifier, the contribution history and the djis emitted.

## Three certified contributors so far

Full reconstruction from our historical CSVs (2023–2026, several files covering the bank and cash accounts):

- **72 reconstructed contributions** under `by-email/`;
- **3 contributors certified** in the foopgp web of trust, hence 3 entries currently under `by-id/u4/`: Jean-Jacques Brucker, Isabelle (mandataire of the association's YubiKey campaign), and our treasurer;
- **19 contributors waiting** for certification in a workshop — the next chance to bring an ID document.

A bit-for-bit comparison with our old registry (`djis.git`, retired in favour of `uetree-djis-by-id`) shows that the reconstructed chain **produces exactly the same numbers** for the contributors present in both registries. No regression: just a slightly cleaner picture.

## The human at the centre

The system sends, every month, a reminder e-mail to the treasurer, the president and the secretary that the reconciliation is waiting for them. The e-mail is signed by Mnème. Three checkboxes, one hour of work. And our accounting finally starts to look like the books of an association that has products, R&D, and an international network.

## What's next

The technical document is public, in English — that is our transparency commitment. It points at the code repositories, at the IETF specifications under writing ([uetree](/blog/2026-05-27-uetree-spec/), [OpenPGP ID](/blog/2026-04-28-openpgp-id-spec/)), and at the parameters in force. Everything is there, and everything is reproducible: with our CSVs, with our tools, with one's own OpenPGP keyring, any auditor can redo the computations.

This level of reproducibility is rare in association accounting. It is what will let us, when the time comes, migrate to a SCIC (a French worker-cooperative form), then to an international foundation, without losing the memory of what happened between 2023 and now.

[Join us.](/about/join/) ✊🕊️💕
