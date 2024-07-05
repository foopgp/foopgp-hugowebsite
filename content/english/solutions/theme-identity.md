---
Lastmod: 2024-07-02T07:30:59+00:00 # MANAGED BY update_lastmod.sh
title: "Identity"
#date: 2019-07-06T15:27:17+06:00
draft: false
# page title background image
bg_image: "images/backgrounds/puzzle.jpg"
# meta description
description : "Solutions for digital identity."
# Research image
image: "images/solutions/identity.png"
categories: ["solution"]
type: "post"
---

### Digital Identity

A digital identity is a set of data that allows for the identification of a person or entity on the Internet and in computer systems. It consists of various elements that can include personal information, verification attributes, and security certificates.

OpenPGP is an open format designed to create and manage digital identities. Moreover, its scalability allows it to consistently use the best cryptographic algorithms available, providing an unparalleled level of security.

### What can a digital identity be used for?

* **Identifying on online shopping sites.**

* **Identifying on social networks.**

* **Identifying with services such as:**
  * health insurance
  * unemployment insurance
  * private insurance
  * municipal services
  * ...

* **Preventing identity theft.**

* **Recording qualifications, for example:**
  * driver's license
  * diplomas
  * ...

* **[Combating misleading information](/fr/blog/2023-04-03-lutter-contre-la-polution-informationelle/).**

* **[Fighting against the misuse of artificial intelligence](/fr/blog/2023-04-03-lutter-contre-la-polution-informationelle/).**

### pgpid

To better manage these identities and the associated private keys, the foopgp association developed [pgpid](https://codeberg.org/foopgp/pgpid). This tool allows you to:

* Create a unique OpenPGP digital identity:
  * from scratch
  * or from an international passport (according to [ICAO standards](https://en.wikipedia.org/wiki/International_Civil_Aviation_Organization))
* Generate private keys for the associated OpenPGP certificates.
* Encrypt and distribute these private keys across at least three printed documents (QR codes).
* Securely store these private keys: [secret sharing](https://en.wikipedia.org/wiki/Secret_sharing) and entirely offline.
* Decrypt these backups to transfer the private keys into physical security devices like [YubiKey](https://www.yubico.com/) or [Nitrokey](https://www.nitrokey.com/products/nitrokeys).

Here is an example of a paper backup of a pgpid digital identity:

| ![qrcode1](/images/blog/2024/qrcode/qrcode1.jpg) | ![qrcode2](/images/blog/2024/qrcode/qrcode2.jpg) | ![qrcode3](/images/blog/2024/qrcode/qrcode3.jpg) |
|---|---|---|

### In short,

Digital identity allows for secure online transactions, access to various digital services, and reliable user identity verification. It plays a crucial role in cybersecurity and the protection of personal data.

**While others sell you technologies that enslave you, foopgp enables everyone to embrace technologies that serve us.** Safer and entirely sovereign technologies.

---