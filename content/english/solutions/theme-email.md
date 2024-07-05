---
Lastmod: 2024-07-05T12:10:02+02:00 # MANAGED BY update_lastmod.sh
title: "Email"
#date: 2019-07-06T15:27:17+06:00
draft: false
# page title background image
bg_image: "images/backgrounds/puzzle.jpg"
# meta description
description : "Email solutions."
# Research image
image: "images/solutions/mail-scryptmail-logo_large.png"
tags: ["email"]
categories: ["solution"]
type: "post"
---

If you have any changes to suggest [-> Codeberg](https://codeberg.org/foopgp/foopgp-hugowebsite/_edit/test/content/french/solutions/theme-email.md).

---

### OpenPGP Compatible Email Clients

Our suggestions for email clients supporting OpenPGP:

- For computers (GNU/Linux...):
  - [Evolution](https://help.gnome.org/users/evolution/stable/intro-main-window.html.fr) + [GnuPG](https://gnupg.org/)

- On Android:
  - [K9 Mail](https://k9mail.github.io/) + [OpenKeychain](https://www.openkeychain.org/)

Many other email clients are compatible with OpenPGP. You can find them here:

- https://www.openpgp.org/software/
- [on Framalibre](https://framalibre.org/recherche-par-crit-res?keys=pgp+OR+gpg) (the search query is not limited to email clients).

---

### Evolution

[**Evolution**](https://help.gnome.org/users/evolution/stable/index.html.fr) allows you to manage your emails, contacts, tasks, and calendars. Through GnuPG, it supports OpenPGP security devices to secure emails.

#### Evolution PGP Features

1. **Email Encryption**:
   - Evolution allows you to encrypt emails using the recipient's certificate. This ensures that only authorized recipients can read the message's content.
   - To encrypt an email, you must have imported the recipient's certificate into your keyring.

2. **Email Decryption**:
   - When receiving an encrypted email, Evolution uses your private key to decrypt the message so you can read it.

3. **Digital Signature**:
   - Evolution allows you to digitally sign emails using your private key. This enables the recipient to verify the authenticity and integrity of the message using your public key.
   - The digital signature ensures that the message has not been altered in transit and that it indeed came from you.

4. **Signature Verification**:
   - When receiving a digitally signed email, Evolution verifies the signature using the sender's certificate to confirm the authenticity of the message.

5. **Key Management**:
   - Evolution integrates with key managers like GnuPG for managing OpenPGP certificates and keys. You can import, export, and manage certificates and keys directly from the application.

### K-9 Mail

[**K-9 Mail**](https://k9mail.app/) is an open-source email client for Android that uses security devices via OpenKeychain, an OpenPGP key management application for Android.

#### K-9 Mail PGP Features

1. **Email Encryption**:
   - K-9 Mail, in combination with OpenKeychain, allows you to encrypt emails using the recipient's certificate. Encrypted emails ensure that only intended recipients can read the message.

2. **Email Decryption**:
   - When receiving an encrypted email, K-9 Mail uses OpenKeychain to prompt your security device (YubiKey, Nitrokey, etc.) to decrypt the message, allowing you to read its content.

3. **Digital Signature**:
   - You can digitally sign your emails with K-9 Mail and OpenKeychain. By using your security device (YubiKey, Nitrokey, etc.), you can add a digital signature to your messages, ensuring their authenticity and integrity.

4. **Signature Verification**:
   - K-9 Mail, with the help of OpenKeychain, verifies the digital signatures of received emails using the sender's certificate. This confirms that the message is authentic and has not been altered.

5. **Key Management**:
   - OpenKeychain manages OpenPGP for K-9 Mail. You can import, export, and manage OpenPGP certificates and your security devices from the OpenKeychain application.

### Comparison between Evolution and K-9 Mail

#### Platform

- **Evolution**: Intended for desktop computers running Linux/Unix with OpenPGP integration via GnuPG.
- **K-9 Mail**: Designed for Android devices, requiring the OpenKeychain app for managing OpenPGP certificates and keys.

#### Use

- **Evolution**: Ideal for professional or personal use on desktops, offering comprehensive email, calendar, and contact management features.
- **K-9 Mail**: Perfect for mobile use, allowing users to securely manage their emails on the go.

### Conclusion

**Evolution** and **K-9 Mail** both offer robust support for OpenPGP to secure email communications. Evolution uses GnuPG, while K-9 Mail uses OpenKeychain to provide similar features on Android devices. Both email clients allow users to encrypt, decrypt, sign, and verify emails, ensuring the confidentiality and authenticity of electronic communications.