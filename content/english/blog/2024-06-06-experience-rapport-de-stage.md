---
#Lastmod: 2024-07-03T10:36:30+02:00 # MANAGED by --enableGitInfo
title: "Internship Summary"
date: 2024-06-06T10:30:00+02:00
draft: false
bg_image: "/images/blog/2024/bg_stage.jpg"
description: "Internship summary of Evyn Faure and Maël Lemoine"
lang: en
image: "/images/blog/2024/rds.avif"
author: ["Evyn Faure", "Maël Lemoine"]
categories: ["study"]
tags: ["Internship", "Experience"]
type: "post"
---


## Our Internship Experience at the Foopgp Association

---

We are two first-year BTS SIO (Computer Services for Organizations) students in Gap. As part of our training, an internship is mandatory to advance to the second year. We were fortunate to complete this internship at the Foopgp association, from May 27, 2024, to July 5, 2024. Here is a detailed and enriching account of our formative experience:

---

### Skills and Technologies Used

During our internship, we worked with various technologies and tools, greatly enriching our learning and practical experience:

* [**OpenPGP**](./#openpgp)
* [**Pgpid**](./#pgpid)
* [**Security Key**](./#clé-de-sécurité)
  * [YubiKey](./#YubiKey)
  * [Nitrokey](./#nitrokey)
* [**Email**](./#couriel)
  * [Evolution](./#evolution)
  * [K9mail](./#k9mail)
* [**GitHub**](./#github)
* [**Hugo**](./#hugo)
* [**Codeberg**](./#codeberg)
* [**Dolibarr**](./#dolibarr)
* [**Summary**](./#resume)
* [**Personal Opinion**](./#avis_personnel)

---

### OpenPGP
![logoopenpgp](/images/blog/2024/logopgp.png)

[OpenPGP](https://www.openpgp.org/) is a cryptographic standard used, for example, for encryption, authentication, and email signature.

#### Public Key

- **Function**:
  - The public key is used to encrypt messages intended for a specific recipient.
  - It can also be used to verify the digital signature made by the holder of the corresponding private key.

- **Distribution**:
  - The public key is freely shared with anyone who wishes to send an encrypted message to the private key holder.
  - It can be published on public key servers or sent directly to correspondents.

- **Security**:
  - The public key cannot decrypt messages; only the corresponding private key can do that.
  - It allows for nearly unforgeable digital signatures and avoids using passwords for authentication.

#### Private Key

- **Function**:
  - The private key is used to decrypt messages encrypted with the corresponding public key.
  - It is also used to digitally sign messages, proving the sender's identity and the message's integrity.

- **Confidentiality**:
  - The private key must be strictly protected and not shared.
  - It is often password-protected for an added layer of security.

- **Security**:
  - If the private key is compromised, an attacker could decrypt messages intended for the private key holder and sign messages pretending to be them.
  - It is crucial to store the private key in a secure place and back it up appropriately.

To learn more about [OpenPGP](/fr/about/openpgp/)

---

### Pgpid
![logopgpid](/images/logos/foopgp_square.png)

[PgpId](https://codeberg.org/foopgp/pgpid) is a software suite that allows creating, saving on physical media, and retrieving unique digital identities based on the OpenPGP (Pretty Good Privacy) standard, which can be used to:

* [Sign](/fr/solutions/signature) your digital data.
* [Encrypt and decrypt](/fr/solutions/encryption) your data and digital communications.
* [Authenticate](/fr/solutions/theme-authentication) yourself with digital services.
* And soon [vote](/fr/solutions/theme-vote) and [pay](/fr/solutions/theme-currency) (features currently being developed by some free software communities, including the Foopgp association).

**In summary, [pgpid](https://codeberg.org/foopgp/pgpid) helps manage and use PGP keys for secure digital usage.**

Within the association, [Jean-Jacques](/fr/author/jean-jacques-brucker/) implemented this innovative system. It works as follows: when you create your [digital identity](/fr/solutions/theme-identity), it is [split](https://fr.wikipedia.org/wiki/Secret_r%C3%A9parti) into three separate QR codes. These QR codes are then printed for practical use.

To access your digital identity, simply scan these three QR codes. Once scanned, the main private keys associated with your [OpenPGP](/fr/about/openpgp/) certificate are reconstructed. They can then be uploaded to security keys like [YubiKey](./#YubiKey) or [Nitrokey](./#nitrokey).

These security keys allow the use of the private keys of your [digital identity](/fr/solutions/theme-identity) without allowing any direct access to them. Each use may require a PIN code. After three consecutive incorrect PIN attempts, the key locks. It can be unlocked with another code (PUK); otherwise, it erases its data. You will then need to reset it to restart the QR code scanning.

Here is an example of the QR codes used:

| ![qrcode1](/images/blog/2024/qrcode/qrcode1.jpg) | ![qrcode2](/images/blog/2024/qrcode/qrcode2.jpg) | ![qrcode3](/images/blog/2024/qrcode/qrcode3.jpg) |
|---|---|---|

---

### YubiKey
![visuelyubikey](/images/blog/2024/yubikey_image.jpeg)

The [YubiKey](https://www.yubico.com/la-cle-yubikey/?lang=fr) is a hardware security device used to protect access to online accounts. We learned to use it to enhance the security of our [authentications](/fr/solutions/theme-authentication). This tool showed us the importance of hardware security in protecting sensitive data.

![code_clepgp_mael](/images/blog/2024/mdp_yubikey_mael.jpg)

---

### Nitrokey
![visuelnitrokey](/images/blog/2024/nitrokey_image.jpeg)

[NitroKeys](https://www.nitrokey.com/) offer a comprehensive and secure solution to protect [digital identities](/fr/solutions/theme-identity) and sensitive data. Their use significantly enhances the security of systems and information while remaining practical and accessible to users. They are almost identical to the [YubiKey](./#YubiKey).

---

### Evolution
![logoevolution](/images/blog/2024/logoevolution.jpeg)

Many of these applications and tools were unknown to us, such as [Evolution](https://help.gnome.org/users/evolution/stable/index.html.fr). This internship allowed us to acquire new skills and enrich our knowledge, particularly about PGP keys, which we found particularly interesting.

Below is an image of Evolution with the PGP signature and encryption highlighted in red:
![Evolution](/images/blog/2024/Evolution_message.jpg)

You select them by opening the options and checking 'Sign with PGP' and 'Encrypt with PGP'.
![Evolution](/images/blog/2024/Evolution_message1.jpg)

---

### K9 Mail
![logok9mail](/images/blog/2024/logok9mail.jpeg)

[K-9 Mail](https://k9mail.app/) is an open-source email client for Android, recognized for its advanced features and user privacy. Created by Jesse Vincent, the application was integrated into the Thunderbird family in 2022. This collaboration aims to enhance [K9mail](/fr/solutions/theme-email) with features like better account setup, folder management, and synchronization with Thunderbird on the desktop. [K9mail](/fr/solutions/theme-email) will gradually be renamed Thunderbird on Android (K-9 Mail) (The Thunderbird Blog) (K-9 Mail).

For more details, visit the official [K-9 Mail website](https://k9mail.app/about.html) and the [Thunderbird blog](https://blog.thunderbird.net/fr/).

In the application, we will use a YubiKey in this example. First, you need to click on "Use a security token." Then, when the key is scanned, it will be verified.

| ![k9mail](/images/blog/2024/K-9_Mail_1.jpg) | ![k9mail](/images/blog/2024/K-9_Mail_2.jpg) |
|---|---|

To send an [encrypted](/fr/solutions/encryption) email, just click on the padlock at the top right.

![k9mail](/images/blog/2024/K-9_Mail_cadena.jpg)

And to read [encrypted](/fr/solutions/encryption) emails via [OpenKeychain](https://www.openkeychain.org), a message will appear:

![k9mail](/images/blog/2024/K-9_Mail_3.jpg)

---

### GitHub
![logogithub](/images/blog/2024/github.png)

On [GitHub](https://github.com/), we hosted our portfolios ([Mael's portfolio](https://maelbts.github.io/PortfolioSIO/), [Evyn's portfolio](https://hankloche.github.io/PORTFOLIO/)) and added our PGP and SSH keys. This allowed us to understand the importance of version control and key security. GitHub also helped us collaborate effectively on various projects.

---

### Codeberg
![logocodeberg](/images/blog/2024/logocodeberg.png)

We used [Codeberg](https://codeberg.org/) preliminarily,

 as the association is migrating to this source code management system. We also added our PGP and SSH keys there. Codeberg, an open-source alternative to GitHub, gave us insight into different source code management platforms.

Here is an example of our configuration:
![Clé PGP et SSH Codeberg Maël](/images/blog/2024/cle_pgp_ssh_codeberg_mael.jpg)

---

### Hugo
![logohugo](/images/blog/2024/logohugo.png)

The association's website is developed with [Hugo](https://gohugo.io/), a static site generator in Go. We learned this language to modify, add, or remove various elements on the site. Hugo allowed us to create static web pages while introducing us to the basics of programming in Go.

---

### Shell
![logoshell](/images/blog/2024/logoshell.png)

The association primarily uses GNU/Linux, which led us to frequently use the shell. We [enhanced our scripting skills](https://github.com/phyver/GameShell), acquired during our BTS courses. The shell proved to be a powerful tool for automating repetitive tasks and efficiently managing Linux systems.

[Learn more about the shell](https://fr.wikipedia.org/wiki/Shell_Unix).

---

### Dolibarr
![logodolibarr](/images/blog/2024/logodolibarr.png)

[Dolibarr](https://www.dolibarr.org) is an open-source management software ideal for associations and SMEs. It allows for managing memberships, members, donations, events, and accounting simply and efficiently. Working with Dolibarr gave us valuable insights into business management and the importance of integrated management tools.

---

### Summary

This early stage of our internship has been an extremely enriching experience for us. We not only learned to use new tools and technologies but also gained a better understanding of security practices and project management in a professional environment.

---

### Personal Opinion

[Maël](/fr/author/mael-lemoine/): PGP keys, which were unknown to me before, greatly impressed me as they enhance security while simplifying it. The Go language also fascinated me with its power and simplicity. This internship offered me valuable practical experience and motivated me to explore these technologies further.

[Evyn](/fr/author/evyn-faure/): During this internship, I was involved in various tasks, such as modifying the website using programming languages I was unfamiliar with, and getting acquainted with PGP keys and related aspects like encrypted emails, all while using Debian, an operating system I had barely used before. This internship allowed me to develop essential skills and better understand the challenges of computer security.

---
