---
Lastmod: 2024-07-05T12:10:02+02:00 # MANAGED BY update_lastmod.sh
title: "Signature"
#date: 2019-07-06T15:27:17+06:00
draft: false
# page title background image
bg_image: "images/backgrounds/puzzle.jpg"
author: [ "Deepl Translate" ]
# meta description
description: "Signature solutions."
# Research image
image: "images/solutions/signature.png"
tags: ["Signature", "pgpid"]
categories: ["solution"]
type: "post"
---

### OpenPGP (Pretty Good Privacy) Digital Signatures

OpenPGP digital signatures are a common method to ensure the authenticity of data.

---

### Advantages of OpenPGP Signatures

2. **Authenticity:**
   - Digital signatures verify the sender's identity.

3. **Integrity:**
   - Signatures ensure that the message has not been altered during transit.

---

### Using OpenPGP Signatures

1. **Installation and Configuration**
   - Users must install compatible OpenPGP software (such as [K9-Mail](/fr/solutions/theme-email/./#k9-mail), FairEmail, [Evolution](/fr/solutions/theme-email/./#evolution), Thunderbird, ...).
   - Generate private keys and a public certificate with **pgpid-gen**.
   - Share or publish the public certificate.
   - Import private keys into a security device (YubiKey, NitroKey, ...) with **pgpid-qrscan**.

2. **Sending Signed Data**
   - Add a digital signature using the sender's private key.

3. **Receiving and Verifying**
   - Verify the signature with the sender's public key.

---

### Email Signing

- When a user sends an email, they can add a digital signature using their private key.
- The digital signature proves that the message originates from the claimed sender and has not been modified in transit.
- The recipient can verify the signature using the sender's public key. If the signature is valid, it confirms the message's authenticity.

---

### Example of Signing with LibreOffice

Signatures with OpenPGP keys in LibreOffice ensure the authenticity and integrity of documents you create or receive. By using OpenPGP, you can digitally sign a document to prove it originates from you and has not been altered since signing. Here's how to use OpenPGP signatures in LibreOffice:

#### Signing a LibreOffice Document

1. **Access Digital Signatures:**
   - Go to **File**, then click **Digital Signatures**.
     ![Digital Signature 1](/images/solutions/signaturelibreoffice1.jpg)

2. **Connect Your security device:**
   - Connect your YubiKey or NitroKey to your computer and log in.
     ![Digital Signature 2](/images/solutions/signaturelibreoffice2.jpg)

3. **Signature Verification:**
   - A confirmation banner should appear at the top of your page, indicating the signature was successfully added.
     ![Digital Signature 3](/images/solutions/signaturelibreoffice3.jpg)

#### Verifying a Signature

- **Automatic Validation:**
  - When opening a signed document, LibreOffice will automatically check the signatures and inform you of their validity.

- **Access Signature Details:**
  - You can also go to **File** > **Digital Signatures** to see signature details.

Using OpenPGP to sign your documents in LibreOffice is an excellent way to add a layer of security and trust to your digital communications.

---

### Signing with Git

[Git](https://git-scm.com/) is a decentralized version control software. Since the early 2010s, it has become the most popular software in software and web development, allowing efficient collaboration on code or other shared texts. It is used by tens of millions of people.

Git uses OpenPGP to sign and verify that a change originates from a recognized person, ensuring that the code has not been modified by unauthorized, potentially incompetent or malicious individuals.

Although code signing is not yet systematic, it could effectively combat certain cyberattacks, such as the [SolarWinds attack in 2020](https://www.lemagit.fr/definition/Le-hack-de-SolarWinds-explique-Tout-ce-quil-faut-savoir).

All Git users should adopt the process recommended by the association:

* Generate public certificates and private keys with **pgpid-gen**.
* Import private keys into security devices (YubiKey, NitroKey, ...) with **pgpid-qrscan**.
* Configure Git to sign all changes in shared repositories:

```bash
$ git config --global commit.gpgsign true
```
---

### Conclusion

OpenPGP signatures are a powerful solution for ensuring the authenticity and integrity of communications and other digital data. By using pairs of public certificates and private keys, users can protect their sensitive information from unauthorized interception and ensure that messages come from reliable sources. Implementing OpenPGP may require initial setup, but it provides extremely robust security for digital communications.