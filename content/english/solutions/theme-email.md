---
Lastmod: 2024-07-02T07:30:59+00:00 # MANAGED BY update_lastmod.sh
title: "Email"
#date: 2019-07-06T15:27:17+06:00
draft: false
# page title background image
bg_image: "images/backgrounds/puzzle.jpg"
# meta description
description : "Email solutions."
# Research image
image: "images/solutions/mail-scryptmail-logo_large.png"
categories: ["solution"]
type: "post"
---


### OpenPGP Compatible Email Clients

Our suggestions for email clients that support OpenPGP:

- For desktop (Mac, Windows, or GNU/Linux…):
  - [Thunderbird](https://www.thunderbird.net/en-US/): Starting from version 78, OpenPGP support is integrated. It works on all major systems.
  - [Claws Mail](https://claws-mail.org/) (Windows, GNU/Linux)

- On Android:
  - [FairEmail](https://email.faircode.eu/) + [OpenKeychain](https://www.openkeychain.org/)
  - [K9 Mail](https://k9mail.github.io/) + [OpenKeychain](https://www.openkeychain.org/)

Many other email clients are compatible with OpenPGP, you can find them here:

- https://www.openpgp.org/software/
- [on Framalibre](https://framalibre.org/recherche-par-crit-res?keys=pgp+OR+gpg) (the search query includes more than just email clients).

---

This page is still under construction, you can help us [by contributing on Codeberg](https://codeberg.org/foopgp/foopgp-hugowebsite/_edit/test/content/french/solutions/theme-email.md).

### Evolution

[**Evolution**](https://help.gnome.org/users/evolution/stable/index.html.en) is a personal information manager for Unix systems that offers integrated support for PGP (Pretty Good Privacy) cryptography to secure emails.

#### PGP Features in Evolution

1. **Email Encryption:**
   - Evolution allows you to encrypt emails using the recipient's public key. This ensures that only authorized recipients can read the message content.
   - To encrypt an email, you need to have imported the recipient's public key into your keyring.

2. **Email Decryption:**
   - Upon receiving an encrypted email, Evolution uses your private key to decrypt the message so you can read it.

3. **Digital Signature:**
   - Evolution allows you to digitally sign emails using your private key. This allows the recipient to verify the authenticity and integrity of the message using your public key.
   - The digital signature ensures that the message has not been altered in transit and that it comes from you.

4. **Signature Verification:**
   - When receiving a digitally signed email, Evolution verifies the signature using the sender's public key to confirm the authenticity of the message.

5. **Key Management:**
   - Evolution integrates with key managers like GnuPG for managing PGP keys. You can import, export, and manage your keys directly from the application.

### K9-Mail

[**K-9 Mail**](https://k9mail.app/) is an open-source email client for Android that offers PGP cryptography support through integration with OpenKeychain, an Android application for managing PGP keys.

#### PGP Features in K-9 Mail

1. **Email Encryption:**
   - K-9 Mail, in combination with OpenKeychain, allows you to encrypt emails using the recipient's public key. Encrypted emails ensure that only the intended recipients can read the message.

2. **Email Decryption:**
   - Upon receiving an encrypted email, K-9 Mail uses OpenKeychain to access your private key and decrypt the message, allowing you to read the content.

3. **Digital Signature:**
   - You can digitally sign your emails with K-9 Mail and OpenKeychain. By using your private key, you can add a digital signature to your messages, ensuring their authenticity and integrity.

4. **Signature Verification:**
   - K-9 Mail, with the help of OpenKeychain, can verify the digital signatures of received emails using the sender's public key. This confirms that the message is authentic and has not been modified.

5. **Key Management:**
   - OpenKeychain manages the PGP keys for K-9 Mail. You can create, import, export, and manage your PGP keys from the OpenKeychain application.

### Comparison Between Evolution and K-9 Mail for PGP

#### Platform

- **Evolution:** Intended for desktop computers running Linux/Unix with direct PGP integration via GnuPG.
- **K-9 Mail:** Designed for Android devices, requiring the OpenKeychain application for PGP key management.

#### PGP Integration

- **Evolution:** Native PGP integration, allowing encryption, decryption, signing, and verification of emails directly within the application.
- **K-9 Mail:** Utilizes OpenKeychain to manage PGP keys and perform encryption, decryption, signing, and verification operations.

#### Usage

- **Evolution:** Ideal for professional or personal use on desktop computers, with comprehensive email and PGP management features.
- **K-9 Mail:** Perfect for mobile use, enabling users to securely manage their emails on the go.

### Conclusion

Both **Evolution** and **K-9 Mail** offer robust PGP support to secure email communications. Evolution integrates PGP directly into its desktop application, while K-9 Mail uses OpenKeychain to provide similar functionalities on Android devices. These email clients allow users to encrypt, decrypt, sign, and verify emails, ensuring the confidentiality and authenticity of electronic communications.

---