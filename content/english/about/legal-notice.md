---
#Lastmod: 2024-06-28T12:22:10+02:00 # MANAGED by --enableGitInfo
title: "Terms"
lang: en
#date: 2019-07-06T15:27:17+06:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Legal Notice"
image: "images/logos/logo-black-pgp.png"
categories: ["about"]
#tags: [""]
type: "post"
---

## Editor

"Friends of OpenPGP" (foOpgp) is [born in France](/documents/JOAFE_PDF_Unitaire_20230015_00088.pdf) under the status of association. RNA Number: W052008166.

[Its statutes](/fr/about/status/) stipulate its object:

> to bring together all individuals or legal entities that use or develop technological solutions based on OpenPGP standards, according to the values carried by the association which are transparency, benevolence, cooperation and proximity; to promote and facilitate the adoption of these technologies and to support their growth and use.

Headquarters:

> 75, impasse Serre des Isnards - 05000 Pelleautier. FRANCE.

## Privacy

The foopgp.org website does not use any cookie or database.

You can check and even host this website yourself: all the code and its content is open and accessible on [a git repository](https://codeberg.org/foopgp/foopgp-hugowebsite).

In order to adapt the site to the demands of our visitors, however, we analyze the traffic with [GoAccess](https://goaccess.io/). The
data collected (IP address, User-Agent…) are [accessible to all](/goaccess/last2w.html). If so much transparency
bothers you, we advise you to use [TOR](https://en.wikipedia.org/wiki/Tor_%28anonymity_network%29) or to modify your [User-Agent](https://www.howtogeek.com/113439/how-to-change-your-browsers-user-agent-without-installing-any-extensions/).

## The foodjis application

Foodjis is the application for everybody, the one that brings together most of
our work:
- EID
- PGP ID kept on paper fragments (Shamir's secret sharing)
- PGP ID on an OpenPGP security key (YubiKey, NitroKey, …)
- Exporting a PGP certificate to a vCard
- Strong certification
- A web of trust easy to build and to share
- …

### Privacy policy

The foodjis application shows no advertising, measures no audience, and
collects no data behind its users' backs.

The only data the foodjis application exchanges over the network, Internet
included, are **PGP certificates** — public documents by nature.

A certificate carries what its holder put in it, at the least:
- an email address
- a unique, decentralised identifier (EID)
- a name or a pseudonym

Those certificates are sent to the **keyservers listed in the settings**. The
application offers one by default, the association's, and users may replace it
as they please.

The application also finds and brings in, from those same servers, the
**public** certificates other people provide. These exchanges go over HTTPS;
like any web server, a keyserver may keep access logs.

To know: **a published certificate cannot be erased.** Keyservers copy each
other and delete nothing — that is the nature of PGP itself. What can be done,
and what a user can do through foodjis, is to **revoke**: to declare publicly
that an identity or a certificate no longer holds.

No other personal data is seen by the application. The secret keys of
cryptography are not even handled by it: they are handled by the OpenPGP
security keys, which use them without ever giving them up. The PIN of those
security keys can be held in memory only, and for the time the user chooses.
The session journal goes with the session.

### Licence

Every version of foodjis is free software, under GPL-3.0-only: the source is
given on simple request, addressed to
[info@foopgp.org](mailto:info@foopgp.org).

## Intellectual property

Combining these two terms [is nonsense](https://www.gnu.org/philosophy/not-ipr.en.html). That said, unless otherwise stated, all content is under the [CC BY SA 4.0 License](https://creativecommons.org/licenses/by-sa/4.0/).
