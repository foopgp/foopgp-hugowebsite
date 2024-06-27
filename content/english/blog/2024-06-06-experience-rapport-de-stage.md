---
title: "Internship Summary"
date: 2024-06-06T10:30:00+02:00
draft: false
bg_image: "/images/blog/2024/bg_stage.jpg"
description: "Internship summary of Evyn Faure and Maël Lemoine"
lang: en
image: "/images/blog/2024/rds.avif"
author: ["Evyn Faure", "Maël Lemoine"]
categories: ["guide"]
tags: ["Internship", "SLAM"]
type: "post"
---

## Our Internship Experience at the Foopgp Association

---

We are two first-year students in BTS SIO (IT Services for Organizations) in Gap. As part of our training, an internship is mandatory to advance to the second year. We had the opportunity to complete this internship at the Foopgp association from May 27, 2024, to July 5, 2024. Here is a detailed and enriching account of our formative experience:

---

### Skills and Technologies Utilized

During our internship, we worked with various technologies and tools, which greatly enhanced our learning and practical experience:

* [**OpenPGP**](./#openpgp)
* [**Pgpid**](./#pgpid)
* [**Security Key**](./#security-key)
  * [YubiKey](./#YubiKey)
  * [Nitrokey](./#nitrokey)
* [**Email**](./#email)
  * [Evolution](./#evolution)
  * [K9mail](./#k9mail)
* [**GitHub**](./#github)
* [**Hugo**](./#hugo)
* [**Codeberg**](./#codeberg)
* [**Dolibarr**](./#dolibarr)
* [**Summary**](./#summary)
* [**Personal Opinion**](./#personal_opinion)

---

### OpenPGP
![logoopenpgp](/images/blog/2024/logopgp.png)

[OpenPGP](https://www.openpgp.org/) is a cryptography standard used for encryption, authentication, and email signing.

#### Public Key

- **Function**:
  - The public key is used to encrypt messages intended for a specific recipient.
  - It can also be used to verify the digital signature of the holder of the corresponding private key.

- **Distribution**:
  - The public key is freely shared with anyone wishing to send an encrypted message to the private key holder.
  - It can be published on public key servers or sent directly to correspondents.

- **Security**:
  - The public key cannot decrypt messages. Only the corresponding private key can perform this task.
  - It allows the creation of almost tamper-proof signatures and eliminates the need for passwords.

#### Private Key

- **Function**:
  - The private key is used to decrypt messages encrypted with the corresponding public key.
  - It is also used to digitally sign messages, thus proving the sender's identity and the message's integrity.

- **Confidentiality**:
  - The private key must be strictly protected and not shared.
  - It is often protected by a password to add an extra layer of security.

- **Security**:
  - If the private key is compromised, an attacker could decrypt messages intended for the private key holder and sign messages impersonating them.
  - It is crucial to store the private key in a secure location and back it up appropriately.

Learn more about [OpenPGP](/about/openpgp/).

---

### Pgpid
![logopgpid](/images/logos/foopgp_square.png)

[PgpId](https://codeberg.org/foopgp/pgpid) is a software suite that allows creating, saving on physical media, and recovering unique digital identities based on the OpenPGP (Pretty Good Privacy) standard. These can be used to:

* [Sign](/solutions/signature) your digital data.
* [Encrypt and decrypt](/solutions/encryption) your digital data and communications.
* [Authenticate](/solutions/theme-authentication) yourself with digital services.
* And soon to [vote](/solutions/theme-vote) and [pay](/solutions/theme-currency) (features under development by some free software communities, including the Foopgp association).

**In summary, [pgpid](https://codeberg.org/foopgp/pgpid) helps manage and use PGP keys for secure digital uses.**

Within the association, [Jean-Jacques](/author/jean-jacques-brucker/) implemented this innovative system. It works as follows: when you create your [digital identity](/solutions/theme-identity), it is split into three distinct QR codes. These QR codes are then printed for practical use.

To access your digital identity, you just need to scan these three QR codes. Once scanned, the main private keys associated with your [OpenPGP](/about/openpgp/) certificate are reconstructed. They can then be loaded into security keys like the [YubiKey](./#YubiKey) or the [Nitrokey](./#nitrokey).

These security keys allow the use of the private keys of your [digital identity](/solutions/theme-identity) without direct access to them. A PIN code may be required for each use. After three successive incorrect PIN attempts, the key locks. It can be unlocked with another code (PUK), otherwise it erases its data. You would then need to reinitialize it to restart the QR code scan.

Here is an example of the QR codes used:

| ![qrcode1](/images/blog/2024/qrcode/qrcode1.jpg) | ![qrcode2](/images/blog/2024/qrcode/qrcode2.jpg) | ![qrcode3](/images/blog/2024/qrcode/qrcode3.jpg) |
|---|---|---|

---

### YubiKey
![visuelyubikey](/images/blog/2024/yubikey_image.jpeg)

The [YubiKey](https://www.yubico.com/la-cle-yubikey/?lang=fr) is a hardware security device used to protect access to online accounts. We learned to use it to enhance the security of our [authentications](/solutions/theme-authentication). This tool demonstrated the importance of hardware security in protecting sensitive data.

![code_clepgp_mael](/images/blog/2024/mdp_yubikey_mael.jpg)

---

### Nitrokey
![visuelnitrokey](/images/blog/2024/nitrokey_image.jpeg)

[NitroKeys](https://www.nitrokey.com/) offer a complete and secure solution for protecting [digital identities](/solutions/theme-identity) and sensitive data. Their use significantly enhances the security of systems and information while remaining practical and accessible for users. They are almost identical to the [YubiKey](./#YubiKey).

---

### Evolution
![logoevolution](/images/blog/2024/logoevolution.jpeg)

Many of these applications and tools were new to us, such as [Evolution](https://help.gnome.org/users/evolution/stable/index.html.fr). This internship allowed us to acquire new skills and expand our knowledge, particularly on PGP keys, which we found particularly interesting.

Below is an image of Evolution with PGP signing and encryption circled in red:
![Evolution](/images/blog/2024/Evolution_message.jpg)

We select them by opening the options and checking 'Sign with PGP' and 'Encrypt with PGP'.
![Evolution](/images/blog/2024/Evolution_message1.jpg)

---

### K9 Mail
![logok9mail](/images/blog/2024/logok9mail.jpeg)

[K-9 Mail](https://k9mail.app/) is an open-source email client for Android, known for its advanced features and user privacy. Created by Jesse Vincent, the application was integrated into the Thunderbird family in 2022. This collaboration aims to enhance [K9mail](/solutions/theme-email) with features like better account setup, folder management, and synchronization with Thunderbird on the desktop. [K9mail](/solutions/theme-email) will gradually be renamed Thunderbird on Android​ (K-9 Mail)​​ (The Thunderbird Blog)​​ (K-9 Mail)​.

For more details, visit the official [K-9 Mail](https://k9mail.app/about.html) site and the [Thunderbird blog](https://blog.thunderbird.net/fr/).

In the application, we use a YubiKey in this example. First, click "Use a security token," then when the key is scanned, it verifies it.

| ![k9mail](/images/blog/2024/K-9_Mail_1.jpg) | ![k9mail](/images/blog/2024/K-9_Mail_2.jpg) |
|---|---|

To send an [encrypted](/solutions/encryption) email, simply click on the padlock icon in the top right corner.

![k9mail](/images/blog/2024/K-9_Mail_cadena.jpg)

And to read [encrypted](/solutions/encryption) emails via [openkeychain](https://www.openkeychain.org), use a message that appears:

![k9mail](/images/blog/2024/K-9_Mail_3.jpg)

---

### GitHub
![logogithub](/images/blog/2024/github.png)

On [GitHub](https://github.com/), we hosted our portfolio ([Mael's portfolio](https://maelbts.github.io/PortfolioSIO/), [

Evyn's portfolio](https://evynfaure.github.io/SIO/)) and a [Foopgp website](https://foopgp.github.io/). We created them using [Hugo](https://gohugo.io/), a static site generator. By hosting the sites on GitHub, we applied versioning techniques and learned to collaborate efficiently on code.

---

### Hugo
![logohugo](/images/blog/2024/logohugo.png)

We used the [Hugo](https://gohugo.io/) static site generator to create our portfolios ([Mael's portfolio](https://maelbts.github.io/PortfolioSIO/), [Evyn's portfolio](https://evynfaure.github.io/SIO/)) and the [Foopgp website](https://foopgp.github.io/). We appreciated the flexibility of Hugo in managing content and themes, which allowed us to quickly create professional-looking sites.

For example, here is Mael's GitHub Pages on [Mael's portfolio](https://maelbts.github.io/PortfolioSIO/).

---

### Codeberg
![logocodeberg](/images/blog/2024/logocodeberg.png)

On [Codeberg](https://codeberg.org/), we hosted the association's website. We collaborated on the code using Git versioning tools. This experience enhanced our skills in code management and collaborative work on large-scale projects.

---

### Dolibarr
![logodolibarr](/images/blog/2024/logodolibarr.png)

[Dolibarr](https://www.dolibarr.org/) is an open-source ERP and CRM suite used to manage various aspects of an organization. We learned to use Dolibarr for managing the association's resources and operations, which gave us valuable insight into the workings of an ERP system.

---

### Summary
Our internship was a rich and formative experience that allowed us to:

1. Acquire new technical skills.
2. Learn to use various IT tools and technologies.
3. Collaborate on real-world projects.
4. Understand the importance of digital security.
5. Apply our classroom knowledge in a professional setting.

We are grateful for the opportunity to intern at the Foopgp association and look forward to applying what we've learned in our future endeavors.

---

### Personal Opinion
[Evyn](/author/evyn-faure/) This internship was an incredible experience. I learned so much about digital security and the practical applications of my studies.

[Maël](/author/mael-lemoine/)  I am grateful for the opportunity to intern at the Foopgp association. This experience has been invaluable in expanding my technical skills and understanding of digital security.

---
