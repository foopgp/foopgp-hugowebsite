---

title: "Internship Summary"
date: 2024-06-06T10:30:00+02:00
draft: false
bg_image: "/images/blog/2024/bg_stage.jpg"
description: "Internship Summary by Evyn Faure and Maël Lemoine"
lang: en
image: "/images/blog/2024/rds.avif"
author: ["Evyn Faure", "Maël Lemoine"]
categories: ["guide"]
tags: ["Internship", "SLAM"]
type: "post"
---

## Our Internship Experience at Foopgp Association

---

We are two first-year students in the BTS SIO (Information Technology Services for Organizations) program in Gap. As part of our training, an internship is mandatory to move on to the second year. We had the opportunity to complete this internship at the Foopgp association from May 27, 2024, to July 5, 2024. Here is a detailed and enriching account of our formative experience:

---

### Skills and Technologies Used

During our internship, we worked with various technologies and tools, which greatly enhanced our learning and practical experience:

* [GitHub](./#github)
* [Hugo](./#hugo)
* [Shell](./#shell)
* [Codeberg](./#codeberg)
* [Dolibarr](./#dolibarr)
* [OpenPGP](./#openpgp)
* [Pgpid](./#pgpid)
* [Evolution](./#evolution)
* [YubiKey](./#yubikey)
* [Nitrokey](./#nitrokey)
* [Summary](./#summary)
* [Personal Feedback](./#personal_feedback)

---

### GitHub
![GitHub logo](/images/blog/2024/github.png)

On [GitHub](https://github.com/), we hosted our portfolio and added our PGP and SSH keys. This allowed us to understand the importance of version control and key security. GitHub also helped us collaborate effectively on various projects.

Here is an example of our configuration:
![PGP and SSH Key Maël](/images/blog/2024/cle_pgp_ssh_mael.png)

---

### Hugo
![Hugo logo](/images/blog/2024/logohugo.png)

The association's website is developed with [Hugo](https://gohugo.io/), a static site generator in Go. We learned this language to modify, add, or delete various elements on the site. Hugo enabled us to create dynamic and fast web pages, while also introducing us to the basics of Go programming.

---

### Shell
![Shell logo](/images/blog/2024/logoshell.png)

The association primarily uses Linux, which led us to frequently use the shell. We strengthened our scripting skills acquired during our BTS courses. The shell proved to be a powerful tool for automating repetitive tasks and efficiently managing Linux systems.  
[Learn more about the shell](https://en.wikipedia.org/wiki/Shellcode)

---

### Codeberg
![Codeberg logo](/images/blog/2024/logocodeberg.png)

We used [Codeberg](https://codeberg.org/) preliminarily, as the association is migrating to this source code management system. We also added our PGP and SSH keys there. Codeberg, being an open-source alternative to GitHub, gave us an insight into different source code management platforms.

Here is an example of our configuration:
![PGP and SSH Key Codeberg Maël](/images/blog/2024/cle_pgp_ssh_codeberg_mael.jpg)

---

### Dolibarr
![Dolibarr logo](/images/blog/2024/logodolibarr.png)

[Dolibarr](https://www.dolibarr.org) is an open-source management software ideal for associations. It allows for the simple and efficient management of memberships, members, donations, events, and accounting. Working with Dolibarr gave us a valuable perspective on association management and the importance of integrated management tools.

---

### OpenPGP
![OpenPGP logo](/images/blog/2024/logopgp.png)

[OpenPGP](https://www.openpgp.org/) is a cryptography standard used for encrypting and authenticating email communications.

#### Public Key

- **Function**:
  - The public key is used to encrypt messages intended for a specific recipient.
  - It can also be used to verify the digital signature of the corresponding private key holder.

- **Distribution**:
  - The public key is freely shared with anyone who wants to send an encrypted message to the private key holder.
  - It can be published on public key servers or sent directly to correspondents.

- **Security**:
  - The public key does not allow decryption of messages; only the corresponding private key can perform this task.
  - Even if a third party accesses the public key, they cannot read the encrypted messages.

#### Private Key

- **Function**:
  - The private key is used to decrypt messages encrypted with the corresponding public key.
  - It is also used to digitally sign messages, proving the identity of the sender and the integrity of the message.

- **Confidentiality**:
  - The private key must be strictly protected and not shared.
  - It is often protected by a password for an additional layer of security.

- **Security**:
  - If the private key is compromised, an attacker could decrypt messages intended for the private key holder and sign messages impersonating them.
  - It is crucial to store the private key in a secure location and back it up appropriately.

---

### Pgpid
![Pgpid logo](/images/logos/foopgp_square.png)

The PGP ID is a unique identifier associated with a PGP (Pretty Good Privacy) key used for encrypting and decrypting communications.

Functioning of PGP ID

  - Creation: Automatically generated when a PGP key pair is created.
  - Lookup: Used to find and share public keys.
  - Key Servers: Registered on public servers to facilitate secure message exchange.

In summary, the PGP ID helps manage and use PGP keys for secure communications.

In the association, Jean-Jacques implemented an innovative system based on QR codes. This system works as follows: when you create your digital identity, it is converted into three distinct QR codes. These QR codes are then printed for practical use.

To access your digital identity, simply scan these three QR codes in the correct order. Once scanned in the appropriate sequence, they provide secure access to your digital identity.

Here is an example of the QR codes used:

| ![qrcode1](/images/blog/2024/qrcode/qrcode1.jpg) | ![qrcode2](/images/blog/2024/qrcode/qrcode2.jpg) | ![qrcode3](/images/blog/2024/qrcode/qrcode3.jpg) |
|---|---|---|

---

### Evolution
![Evolution logo](/images/blog/2024/logoevolution.jpeg)

Many of these applications and tools were unknown to us, such as [Evolution](https://help.gnome.org/users/evolution/stable/index.html.en). This internship allowed us to acquire new skills and expand our knowledge, particularly about PGP keys, which we found particularly interesting.

Below is an image of Evolution with the PGP signature and encryption options circled in red:
![Evolution](/images/blog/2024/Evolution_message.jpg)

You select them by opening the options and checking 'Sign with PGP' and 'Encrypt with PGP'.
![Evolution](/images/blog/2024/Evolution_message1.jpg)

---

### YubiKey
![YubiKey visual](/images/blog/2024/yubikey_image.jpeg)

The [YubiKey](https://www.yubico.com/la-cle-yubikey/?lang=en) is a hardware security device used to protect access to online accounts. We learned to use it to improve the security of our authentications. This tool showed us the importance of hardware security in protecting sensitive data.

![PGP key code Maël](/images/blog/2024/mdp_yubikey_mael.jpg)

This is a message from the K-9 Mail application asking for the token (YubiKey) to open the encrypted email.
![K-9 Mail](/images/blog/2024/K-9_mail.jpg)

---

### Nitrokey
![Nitrokey visual](/images/blog/2024/nitrokey_image.jpeg)

[NitroKeys](https://www.nitrokey.com/) offer a comprehensive and secure solution for protecting digital identities and sensitive data. Their use significantly enhances the security of systems and information while remaining practical and accessible to users. They are almost identical to the YubiKey.

---

### Summary
This early stage of the internship has been an extremely enriching experience for us. We have not only learned to use new tools and technologies, but we have also gained a better understanding of security practices and project management in a professional environment.

---

### Personal Feedback

[Maël](/en/author/mael-lemoine/): PGP keys, which were previously unknown to me, greatly interested me as they enhance security while simplifying it. The Go language also fascinated me with its power and simplicity. This internship provided valuable practical experience and motivated me to explore these technologies further.

[Evyn](/en/author/evyn-faure/): During this internship, I was involved in various tasks, such as modifying the website using programming languages that I was unfamiliar with before, and also familiarizing myself with PGP keys and related tasks, like encrypted emails, all while using Debian, an operating system I had rarely used before. This internship allowed me to develop essential skills and better understand the challenges of IT security.

---