---
title: "R&D Projects"
lang: en
draft: false
bg_image: "images/backgrounds/Cartographie.jpg"
description : "Our Research and Development activities"
type: "post"
categories: ["solution"]
---

*The page guide you through our main Projects and their open-source
developments on [our git repositories](https://codeberg.org/foopgp).*

---

### bash-libs

[**bashlibs**](https://codeberg.org/foopgp/bash-libs) is a set of tools which may also be sourced as bash libraries.

This set contains:

- **bl-pgpid**: Generate foopgp identifiers, like *u4* to identify world-wide humans, or a fixed Unix User ID for each of them.

- **bl-qrkey**: Backup or restore OpenPGP keys using printed QR codes and Shamir's secret sharing.
Also facilitate changing passphrase protecting OpenPGP keys, or (PIN or Admin) codes of OpenPGP security tokens (YubiKey, ...).

- **bl-djibian**: System tools for Djibian GNU/Linux. Mainly to manage users.

- **bl-dji**: Manage djis (Ɉ), also known as foopgp tokens.

- **bl-foopgp**: Calculate how many foopgp token (Ɉ) may be created for each cotisations to the the foopgp association.

- **bl-json**: Use jq (Command-line JSON processor) to convert json data to bash variables or arrays, and vice-versa.

- **bl-interactive**: Help managing interactive choices, while supporting multiple frontends: NONE, whiptail or dialog.

- **bl-markdown**: Manipulate [markdown](https://en.wikipedia.org/wiki/Markdown). Today, only converts: markdown arrays <> bash arrays.

- **bl-security**: Provide some cybersecurity features.

- **bl-log**: Wrapper for logger command, which also print pretty logs on stderr.

*Note: unless otherwise stated, all bash-libs are under the [LGPL-3.0-only
License](https://spdx.org/licenses/LGPL-3.0-only.html).*

### pgpid

[**pgpid**](https://codeberg.org/foopgp/pgpid) marks the beginning of [**foopgp**](/about/). The two tools at the heart of [**pgpid**](https://codeberg.org/foopgp/pgpid) are:

- **pgpid-gen**: Generate OpenPGP certifcates and secrets on multiple QR codes (physical secret sharing scheme).

- **pgpid-qrscan**: Transfers OpenPGP secrets from pgpid QR codes to OpenPGP smartcard (eg: yubikey, nitrokey, ...).

*Note: Now that the proof of concept stage has been validated, we are rewriting
pgpid with more robust and maintainable code and with a little more user-friendly interface.*

### djibian.foopgp.org

[This](http://djibian.foopgp.org/) is our own [Debian package repository](https://wiki.debian.org/DebianRepository/Setup), to distribute our latest software releases.

Then, to install our software products on your Debian computers ("/test/" contains preproduction versions):

```bash
curl -s "https://keys.foopgp.org/pks/lookup?op=get&search=0x2C364630A2436D7E" \
| awk "/-----BEGIN PGP PUBLIC KEY BLOCK-----/,/-----END PGP PUBLIC KEY BLOCK-----/" \
| sudo gpg --dearmor --yes --output /usr/local/share/foopgp-archive-keyring.pgp

cat <<EOF | sudo tee /etc/apt/sources.list.d/foopgp.sources
Types: deb
URIs: http://djibian.foopgp.org/test/
Suites: ./
Components: 
Signed-By: /usr/local/share/foopgp-archive-keyring.pgp
EOF

sudo apt update

sudo apt install bashlibs-all
sudo apt install pgpid
```

*Note:* ***bashlibs*** *has few dependencies and should be compatible with all Debian-like systems, eg: Ubuntu, Mint, etc..*

### keys.foopgp.org

This is [our OpenPGP key server](https://keys.foopgp.org/), compliant with [the draft-gallagher-openpgp-hkp-00 protocol](https://www.ietf.org/archive/id/draft-gallagher-openpgp-hkp-00.html).

It runs [an enhanced version of Onak](https://codeberg.org/foopgp/onak), and we regularly send our contributions to [the lead developer](https://www.earth.li/~noodles/) of [the original version](https://github.com/u1f35c/onak).

### foopgp-hugotheme

[**foopgp-hugotheme**](https://codeberg.org/foopgp/foopgp-hugotheme) contain
the hugo theme of our website. You may use it for your own hugo websites. If you
add some fixes or improvements to this hugo theme, please share theme with us.

*Note: unless otherwise stated, all foopgp-hugotheme content is under the [MIT License](https://en.wikipedia.org/wiki/MIT_License).*

### foopgp-hugowebsite

[**foopgp-hugowebsite**](https://codeberg.org/foopgp/foopgp-hugowebsite) contain
the website you are actually watching. You may use it to improve, add or share new public informations.

*Note: unless otherwise stated, all foopgp-hugowebsite content is under the [CC BY SA 4.0
License](https://creativecommons.org/licenses/by-sa/4.0/).*

---
