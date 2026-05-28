---
Title:   "uetree: a filesystem layout for mapping people without a central server"
Date:    2026-05-27T10:00:00+02:00
Tags:    [ "uetree", "specification", "identity", "decentralized", "ietf" ]
categories: [ "News", "Solution" ]
draft: true
author: [ "Mnème", "Jean-Jacques Brucker" ]
description: "A multi-rooted, self-describing directory format — navigable with 'find' and 'grep' alone — to maintain registries of entities that scale to international-foundation size without depending on a database. The foundational brick of the djibian system."
lang: en
bg_image: "images/backgrounds/page-title.jpg"
image: "images/solutions/identity.png"
type: "post"
---

How do you maintain a registry of **ten thousand entities** — people, organisations, software services — without a database, without a dedicated server, without anyone in the middle? The question sounds odd in 2026 ("there are databases for that"). But a database is a dependency: on a piece of software, on an operator, on a migration policy. An international foundation meant to outlive its own staff should not depend on PostgreSQL nor on any product.

We are publishing today the first formal specification of **`uetree` 1.1** — *Universal Entities Tree* — a filesystem layout that answers this need. In IETF Internet-Draft format:

**[draft-foopgp-uetree-00.txt](/documents/en/draft-foopgp-uetree-00.txt)**

## The idea

A git repository. Folders. Plain text files. That's it. At every level of the directory tree, a small `.FORMAT` file says *"I am at such-and-such a path in such-and-such a uetree instance"* — the tree is self-describing. You can extract a subtree, copy it to a USB stick, serve it over plain HTTPS: it remains intelligible.

The tree is **multi-rooted**. The same entity can be indexed under several identifiers: its [OpenPGP cryptographic identifier](/blog/2026-04-28-openpgp-id-spec/) (`by-id/u4/`), its e-mail address (`by-email/`), its phone number (`by-phone/`), its name (`by-name/`). When an entity gains a strong cryptographic identifier, its non-canonical entries become **aliases** (an `.ALIASES` file pointing to the canonical entry under `by-id/`) rather than duplicates.

## Why now

`uetree` is the structural brick that makes several foopgp workstreams possible:

- The **private registry of protagonists** — who is who, who plays which role.
- The **public registry of djis contributions** — which u4 contributed, and how much — without exposing the e-mail addresses of contributors whose identifier is not yet certified. See [the djis emission workflow](/blog/2026-05-27-djis-emission-workflow/), published alongside this article.
- Eventually, a **federated registry across organisations** — each body maintains its own uetree, and bridges between uetrees are expressed as typed `.ALIASES` files.

`uetree` is **dumb**: no service, no daemon, no network protocol. That dumbness is what gives it portability — any POSIX machine can read a uetree with `find` and `grep`. Twenty years from now, when PostgreSQL has been replaced three times, the files will still be there.

## Privacy

The format distinguishes **public-by-nature branches** (cryptographic identifiers) from **private-by-nature branches** (names, phone numbers). A public deployment only ships the former; the latter do not exist in the public repository. No filtering, no leak by oversight.

## Next

The specification is an *Internet-Draft* — a document the IETF reviews and the community can comment on. We co-authored it on top of an implementation already in production at foopgp: the format is not theoretical, it runs on real repositories.

Next step: submit to the IETF, and begin a "1.2" revision absorbing the lessons of the coming months — in particular a normative catalogue of merge rules to make entity promotion even more robust.

A sibling format, **[uftree](/documents/en/draft-foopgp-uftree-00.txt)**, sketches the same idea applied to **files** identified by their cryptographic hash — the immutable counterpart to mutable identity.

[Join us.](/about/join/) ✊🕊️💕
