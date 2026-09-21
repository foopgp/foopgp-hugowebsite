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

## The applications

What precedes is about the website. Here is what holds for the applications the
association publishes — today **foodjis**, on Android.

They create no account, show no advertising and measure no audience: there is
nothing to collect, and nothing reaches us merely because you use them.

What leaves your device, and only when you ask for it, is an **OpenPGP
certificate** — a public document by nature — sent to the **keyservers listed
in the settings**. The application offers one by default, the association's,
and you may replace it with whichever you prefer. A certificate carries what
you put in it: one or more email addresses, the name or pseudonym you give
yourself, possibly a portrait, and, if your PGP ID identifier holds one, a
place rounded to two decimals — about a kilometre. The application also reads
**public** certificates from those same servers, to show you the one you are
looking for. These exchanges go over HTTPS; like any web server, a keyserver
keeps access logs.

To know before publishing: **a published certificate cannot be taken back.**
Keyservers copy each other and delete nothing — that is the nature of OpenPGP,
not a decision of the application. What can be done, and what the application
does, is to **revoke** it: sign the statement saying that this identity no
longer holds, and publish that in turn.

The rest does not leave the device. Your secret key is never even on it: it
stays inside your security key, which signs without ever handing it over. The
PIN is held in memory only, and for the time you set. The session journal goes
with the session.

These applications are free software, under GPL-3.0-only: the source is given
to whoever holds one and asks for it. A question, a request:
[info@foopgp.org](mailto:info@foopgp.org).

## Intellectual property

Combining these two terms [is nonsense](https://www.gnu.org/philosophy/not-ipr.en.html). That said, unless otherwise stated, all content is under the [CC BY SA 4.0 License](https://creativecommons.org/licenses/by-sa/4.0/).
