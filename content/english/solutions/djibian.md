---
title: "Djibian"
lang: en
draft: false
bg_image: "images/backgrounds/party-event.jpg"
description: "Djibian: the operating system you can trust — install and first steps."
image: "images/logos/djibian_square_logo.png"
tags: [ "djibian", "Debian", "Ubuntu", "OpenPGP ID" ]
categories: [ "solution" ]
type: "post"
---

**[Djibian](/blog/2025-09-12-welcome-djibian/) is for you.**

It is the operating system foopgp assembles on top of [Debian](https://www.debian.org/), to give you back the control of your digital life: an [OpenPGP identity](/solutions/openpgp-id/) carried by a [physical key](/solutions/offer-security-keys/) (YubiKey or NitroKey), [encrypted email](/solutions/theme-email/), an [authentication](/solutions/theme-authentication/) that depends on no one but you, and — for members — the ability to use the [djis](/solutions/theme-currency/) as a [means of exchange](/about/join/).

Djibian was also designed to run smoothly on both recent machines and *old dinosaurs* — it is also an excellent way to extend the life span of your computers.

{{< video
  src="/videos/2026/2026-02-06-djibian.mp4"
  type="video/mp4"
  sub_fr="/videos/2026/2026-02-06-djibian.fr.vtt"
  sub_en="/videos/2026/2026-02-06-djibian.en.vtt"
>}}

*Video walk-through (≈ 5 min). [Related post](/blog/2026-02-10-djibian-tour/).*

---

## Recommended path — install Djibian on a computer

### 1. Back up your existing data

⚠️ **The Djibian installer formats the whole disk** of the target machine. If it holds data you care about (photos, documents, contacts, bookmarks…), **copy them to an external drive before going further**.

If in doubt, take a full disk image (`Clonezilla` does this very well); you can extract anything you need from it later.

### 2. Download the Djibian ISO

> <http://iso.foopgp.org/djibian/latest>

Expect 3 to 5 GB.

### 3. Prepare a USB installer

Use your usual tool — **[Ventoy](https://www.ventoy.net/)**, **[balenaEtcher](https://etcher.balena.io/)**, **[Rufus](https://rufus.ie/)** (Windows) or the command line `dd` for the more seasoned — to burn the ISO onto a USB stick of at least 8 GB.

With Ventoy you can even keep several ISOs on the same stick (very handy to manage different versions).

### 4. Boot the stick, try it, install it

Plug the stick in, reboot, and at the vendor logo press the boot-menu key (usually `F2`, `F12` or `Esc`).

Pick **Djibian live**: the system starts up **without touching your disk at all**. You can try anything, open the browser, explore the desktop.

When you're ready, double-click **"Install Djibian"**: the installation runs on its own, it takes 15 to 45 minutes depending on the speed of the hard drive.

### 5. First boot: let yourself be guided

The default user is **`unknow`** and its password is **`foopgp`**.

On the first reboot into your new Djibian, the **`djibian-onboarding`** application starts on its own. It walks you through — **without a single command line to type** — to:

- generate your **[digital OpenPGP identity](/solutions/openpgp-id/)** (asymmetric-cryptography keys are then split and printed on 5 separate sheets);
- scan and load the corresponding secrets onto your **physical key** (YubiKey or NitroKey, [provided by the association for free past 6.42 Ɉ cumulated](/about/join/));
- add you as a real user of the system, with your home directory configured for your OpenPGP physical key (email decryption and signing, ssh authentication, git commit signing).

The video below follows a new user through exactly that experience:

{{< video
  src="/videos/2026/20260126-djibian-clepgp.mp4"
  type="video/mp4"
  sub_fr="/videos/2026/sous-titre-fr-cle-pgp.vtt"
  sub_en="/videos/2026/sous-titre-en-cle-pgp.vtt"
>}}

*Note: if a "Warning!" (⚠️) icon shows up at the bottom right of the panel, it means security updates are available. Click the ⚠️ icon right away to launch them.*

*Related article: ["Djibian goes live!"](/blog/2026-01-19-djibian-release/).*

---

## Alternative path — keep your current Linux, add our tools

You'd rather keep your Debian (≥ 13) or Ubuntu (≥ 24.04)? You can enable our repository and install only the packages that interest you.

### Enable the foopgp repository

```bash
gpg --keyserver keys.foopgp.org --recv-keys 2C364630A2436D7E FE1349E747CF1896
gpg --export 2C364630A2436D7E FE1349E747CF1896 | sudo tee /usr/local/share/foopgp-archive-keyring.pgp > /dev/null

cat <<EOF | sudo tee /etc/apt/sources.list.d/foopgp.sources
Types: deb
URIs: http://djibian.foopgp.org/debs/
Suites: ./
Components:
Signed-By: /usr/local/share/foopgp-archive-keyring.pgp
EOF

sudo apt update
```

### Three packages, and you're set

```bash
sudo apt install djibian-gpgconfig djibian-onboarding pgpid
```

- **`djibian-onboarding`** — the same graphical application as step 5 above. Launch it after install, follow along. The gentlest route in.
- **`djibian-gpgconfig`** — the OpenPGP settings that make daily use of a physical key smooth (sensible PIN cache, card parameters, keyserver choice).
- **`pgpid`** — the command-line version, for those who prefer. Just two commands, all-in:

  ```bash
  pgpid-gen      # generates your identity + N recovery shares (QR codes)
  pgpid-qrscan   # scans those QR codes and loads everything onto your physical key
  ```

  That simple.

---

## Going further

- 🎓 **[Djibian + OpenPGP workshop](/course/djibian-openpgp/)** — 4 hours in person, free. We start from a freshly-installed Djibian, generate your identity, configure your physical key, and verify together that everything signs / decrypts / authenticates. You walk away with a complete working chain. [Upcoming sessions.](/event/)

- 💬 **Demonstration: an encrypted email, end-to-end.**

{{< video
  src="/videos/2026/20260123-djibian-mail-chiffre.mp4"
  type="video/mp4"
  sub_fr="/videos/2026/sous-titre-fr-mail-chiffre.vtt"
  sub_en="/videos/2026/sous-titre-en-mail-chiffre.vtt"
>}}

*See also: [OpenPGP-secured email](/solutions/theme-email/).*

- 🔐 **[A single physical key for every machine on the Internet](/blog/2026-05-11-djibian-agentforwarding/)** — `sshwgpg`, shipped in our packages, lets you hop over ssh to any machine without copying a single private key.

- 📬 **[Write to us](/contact/)** — to join the mailing lists, ask a question, or come and meet us at a workshop.

***Welcome home: *our* new *world*!*** 🌍

---

If you have improvements or corrections to suggest, you can contribute directly on
[Codeberg](https://codeberg.org/foopgp/foopgp-hugowebsite/_edit/test/content/english/solutions/djibian.md).

