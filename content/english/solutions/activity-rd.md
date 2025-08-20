---
title: "R&D Projects"
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Our Research and Development activities"
---

*The page guide you through our main Projects and their open-source
developments on [our git repositories](https://codeberg.org/foopgp).*

---

### bash-libs

[**bash-libs**](https://codeberg.org/foopgp/bash-libs) is a set of tools which may also be sourced as bash libraries.

This set contains:

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

This was the first project, launched even before the creation of the foopgp
association. The two tools at the heart of [**pgpid**](https://codeberg.org/foopgp/pgpid) are:

- **pgpid-gen**: Generate OpenPGP certifcates and secrets on multiple QR codes (physical secret sharing scheme).

- **pgpid-qrscan**: Transfers OpenPGP secrets from pgpid QR codes to OpenPGP smartcard (eg: yubikey, nitrokey, ...).

*Note: Now that the proof of concept stage has been validated, we should rewrite
pgpid with more robust and maintainable code and with a little more user-friendly interface.*

### foopgp-hugotheme

[**foopgp-foopgp-hugotheme**](https://codeberg.org/foopgp/foopgp-hugotheme) contain
the hugo theme of our website. You may use it for your own hugo websites. If you
add some fixes or improvements to this hugo theme, please share theme with us.

*Note: unless otherwise stated, all foopgp-hugotheme content is under the [MIT License](https://en.wikipedia.org/wiki/MIT_License).*

### foopgp-hugowebsite

[**foopgp-hugowebsite**](https://codeberg.org/foopgp/foopgp-hugowebsite) contain
the website you are actually watching. You may use it to improve, add or share new public informations.

*Note: unless otherwise stated, all foopgp-hugowebsite content is under the [CC BY SA 4.0
License](https://creativecommons.org/licenses/by-sa/4.0/).*

---
