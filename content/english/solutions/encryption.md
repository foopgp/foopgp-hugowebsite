---
Lastmod: 2024-07-05T12:10:02+02:00 # MANAGED BY update_lastmod.sh
title: "Encryption"
#date: 2019-07-06T15:27:17+06:00
draft: false
# page title background image
bg_image: "images/backgrounds/puzzle.jpg"
# meta description
description : "Encryption solutions."
image: "images/solutions/encryption.png"
# Research image
categories: ["solution"]
type: "post"
---

### General Encryption

Encryption is a cryptographic process that makes a document incomprehensible to unauthorized persons. Encrypting involves using mathematical algorithms with short data called *"keys"*, to encode other data. The two main types of encryption are symmetric encryption and asymmetric encryption:

1. **Symmetric Encryption**:
   - Uses the same key to encrypt and decrypt data.
   - Fast and efficient for encrypting large amounts of data.
   - Example: AES (Advanced Encryption Standard).

2. **Asymmetric Encryption**:
   - Uses a pair of keys: a public key to encrypt data and a private key to decrypt it.
   - More secure for key exchange and authentication.
   - Example: RSA (Rivest-Shamir-Adleman).

---

### OpenPGP (Pretty Good Privacy)

OpenPGP is [a set of specifications](https://www.openpgp.org/about/standard/) defined primarily by a [dedicated working group](https://datatracker.ietf.org/wg/openpgp/charter/) within the [IETF](https://en.wikipedia.org/wiki/Internet_Engineering_Task_Force). These specifications combine symmetric and asymmetric encryption techniques to ensure the confidentiality, integrity, and authenticity of digital communications.

-----

#### How OpenPGP Encryption Works:

1. **Key Generation**:
   - With [pgpid](https://codeberg.org/foopgp/pgpid), each user generates three pairs of keys: the public keys are shared at a minimum with correspondents. The private keys are kept secret and should never be on any connected system, other than security devices such as YubiKeys or NitroKeys.
   
2. **Data Encryption**:
   - The message is encrypted with a randomly generated symmetric session key.
   - The session key is then encrypted with the recipient's dedicated public key.
   - The symmetrically encrypted message and the asymmetrically encrypted session key are sent to the recipient.

3. **Data Decryption**:
   - The recipient uses their security device (e.g., YubiKey) to decrypt the session key using their dedicated private key.
   - The session key is used by the application (e.g., email client) to decrypt the message.

---

### Applications Using OpenPGP Encryption with security devices

#### Linux
  * [Claws Mail](https://www.openpgp.org/software/claws/)
  * [Evolution: Seahorse](https://www.openpgp.org/software/seahorse/)
  * [KMail: Kleopatra](https://www.openpgp.org/software/kleopatra/)
  * [Mutt](https://www.openpgp.org/software/mutt/)

#### Mac OS
  * [Apple Mail: GPGTools](https://www.openpgp.org/software/gpgtools/)
  * [Mutt](https://www.openpgp.org/software/mutt/)

#### Windows
  * [Claws Mail](https://www.openpgp.org/software/claws/) ***⚠ untested ⚠***
  * [Gpg4win](https://www.openpgp.org/software/gpg4win/) ***⚠ untested ⚠***
  * [Postbox](https://www.openpgp.org/software/postbox/) using [Enigmail](https://www.openpgp.org/software/enigmail/) ***⚠ untested ⚠***

#### Android
  * [K-9 Mail: OpenKeychain](https://www.openpgp.org/software/openkeychain/)
  * [FlowCrypt](https://www.openpgp.org/software/flowcrypt/) ***⚠ untested ⚠***

#### iOS
  * [FlowCrypt](https://www.openpgp.org/software/flowcrypt/) ***⚠ untested ⚠***

---

**Applications that use and comply with OpenPGP specifications are powerful tools for securing communications and digital data in a world increasingly threatened by cyberattacks.**