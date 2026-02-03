---
title: "Email"
lang: en
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
author: [ "Maël Lemoine", "Evyn Faure" ]
description: "Solutions for securing email communications with OpenPGP."
image: "images/solutions/mail-scryptmail-logo_large.png"
tags: ["email"]
categories: ["solution"]
type: "post"
---

If you have improvements or corrections to suggest, you can contribute directly on  
[Codeberg](https://codeberg.org/foopgp/foopgp-hugowebsite/_edit/test/content/french/solutions/theme-email.md).

---

## OpenPGP-compatible email clients

Here is a selection of email clients that support OpenPGP, depending on your platform.

### Computers (GNU/Linux, Windows, macOS)

- [Evolution](https://help.gnome.org/users/evolution/stable/intro-main-window.html.en) + [GnuPG](https://gnupg.org/) (on Linux)
- [Thunderbird](https://www.thunderbird.net/en/) + [GnuPG](https://gnupg.org/) (on macOS or Windows)

[**Evolution**](https://help.gnome.org/users/evolution/stable/index.html.en) and  
[**Thunderbird**](https://www.thunderbird.net/en/) are full-featured email clients that allow you to manage emails, contacts, calendars, and tasks.

Thanks to **GnuPG**, they support OpenPGP encryption to secure communications.

### OpenPGP features

- **Email encryption**  
  Messages can be encrypted using the recipient’s public key, ensuring that only the intended recipient can read them.

- **Decryption**  
  Received messages are automatically decrypted using your private key.

- **Digital signatures**  
  Emails can be digitally signed to prove the sender’s identity and ensure message integrity.

- **Signature verification**  
  Signatures on received messages are verified using the sender’s public key.

- **Key management**  
  OpenPGP keys can be imported, exported, and managed directly via GnuPG.

---

## Smartphones

[**K-9 Mail**](https://k9mail.app/) is an open-source email client for Android.  
It relies on **OpenKeychain** for OpenPGP key management and hardware security keys.

---

## Demonstration: Securing an Email with OpenPGP

This demonstration presents the basics of securing emails with OpenPGP:

- encrypting a message to ensure confidentiality,
- decrypting a received email,
- signing a message to prove its authenticity,
- verifying an email signature.

The demonstration is carried out using  
[**Evolution**](https://help.gnome.org/users/evolution/stable/intro-main-window.html.en) and [**GnuPG**](/en/about/openpgp/) for key management.

{{< video
  src="/videos/2026/20260123-djibian-mail-chiffre.mp4"
  type="video/mp4"
  sub_fr="/videos/2026/sous-titre-fr-mail-chiffre.vtt"
  sub_en="/videos/2026/sous-titre-en-mail-chiffre.vtt"
>}}

---

## Supported platforms

- **Evolution**: Linux/Unix computers.
- **Thunderbird**: Linux/Unix, Windows, and macOS.
- **K-9 Mail**: Android smartphones.

---

## Use cases

- **Evolution / Thunderbird**: personal or professional use on desktop computers, with full-featured email management.
- **K-9 Mail**: secure mobile usage, ideal for working on the go.

---

## Conclusion

**Evolution**, **Thunderbird**, and **K-9 Mail** provide reliable OpenPGP support to secure email communications.  
Depending on the platform used, **GnuPG** or **OpenKeychain** enables encryption, decryption, signing, and verification of messages, ensuring both confidentiality and authenticity of exchanges.
