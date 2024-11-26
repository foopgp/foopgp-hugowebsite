---
Title:   "Use your OpenPGP keys with the OnlyKey security tocken"
Date:    2024-11-15T01:30:00+02:00
License: CC-BY-SA-4.0+
Tags:    [ "gnupg", "security tocken" ]
categories: [ "Guide" ]
draft: false
author: [ "Henri Geist" ]
description : "OnlyKey hardware token HowTo for
Debian like"
lang: en
bg_image: "images/backgrounds/library.jpg"
image: "images/blog/2024/onlykey.jpeg"
type: "post"
---

*This article should be revised in the light of recent developments within the organization, in particular:*

- *[**pgpid**](//foopgp.org/solutions/theme-identity/), which is a welcome replacement for [paperkey](//github.com/dmshaw/paperkey/).*

- *The **gen-passphrase** action of the bash-lib [**bl-security**](//codeberg.org/foopgp/bash-libs/src/branch/main/man/bl-security.1.md), which implements a method comparable to [those of dice](//www.eff.org/dice) and replaces most [diceware programs](//github.com/ulif/diceware).*

---

# Preamble {#_preamble}

This is a step by step procedure giving the ordered way to get an
*OnlyKey* configured and to use it:

-   From the out boxing;
-   Or to restart with an already configured *OnlyKey*;
-   Until it is ready for use with:
    -   The *OnlyKey* pseudo keyboard configure for your computer;
    -   The brightness of the LED matching your liking;
    -   The inactivity lockout delay as you like it;
    -   The ability to lock your screen as you like it;
    -   A *GPG* private key pair imported in your *OnlyKey* from
        *GnuPG*;
    -   The *gpg-agent* configured on your *Debian* like;
    -   An *SSH* private key imported in your *OnlyKey* form
        *ssh-keygen*;
    -   The *ssh-agent* configured on your *Debian* like;
    -   The *GPG* forwarding over *SSH* configured on client and server
        side.

The process detailed below is not the only way to go. Some strategic
choice have been done:

Importing keys

:   As for obvious security reasons it is not possible to export keys
    from the *OnlyKey*, I have chosen to only use imported keys and not
    any keys generated inside the *OnlyKey*. Because I think it is
    really important to have an offline and interoperable backup of all
    my keys in case I am deprived of my *OnlyKey*ses for any reasons
    (lost, steeled, failure, obsolete, ...​).

ed22519

:   I choose *ED22519* keys over *RSA* keys because 2048 bits RSA keys
    are obsolete and 4096 bits RSA keys are really slow and buggy on the
    *OnlyKey*.

FIDO2

:   Has I have never personally used it, I will not talk about the
    *FIDO2* functions of the *OnlyKey*. I prefer *SSH/GPG* instead.
    Because *FIDO2* secrets can not be imported. For me it is
    unpractical. Secured but not safe. You will sooner or later be
    locked out of some of your accounts. And anyway, their is nothing
    specific to the *OnlyKey* about it. It work exactly as any other
    *FIDO2* token in the wild.

Password manager

:   I do also not speak about the *password manager* functions. May be I
    will do it later. Anyway this is relatively straight forward with
    the graphical user interface. Just do not forget that as the
    *OnlyKey* is write only the GUI will never confirm you that what you
    do is done.

Command line

:   All instructions in this manual are for command line. This is easier
    for me. It will be easier and less ambiguous for you. You will be
    able to put together all individual settings instruction in one
    script to do everything in one go. And any way the graphical user
    interface only work on *amd64* architecture. This is more general.

Debian like

:   That is what I have and all my tests are done on a *Mobian Trixie*
    and a *Raspberry Pi OS Bookworm*. This should work the same on all
    other *Debian* like. Some very minor adaptations may be necessary
    for other *Linux* distributions. For the *Apple* and *Window\$*
    users I will be of no help.

# About this document {#_about_this_document}

**Copyright:** 2024 Henri GEIST \<<geist.henri@laposte.net>\>\
**Licence:** CC-BY-SA-4.0+

The last version of this document can always be found at:

<https://codeberg.org/Henri_GEIST/OnlyKey_hardware_token_HowTo/src/branch/master/OnlyKey_hardware_token_HowTo_for_Debian_like.adoc>

You can find the last prettier *PDF*, *HTML*, *DocBook* and *Markdown*
release at:

<https://codeberg.org/Henri_GEIST/OnlyKey_hardware_token_HowTo/releases>

And if you find any mistake or something unclear or missing do not
hesitate to fill an issue on :

<https://codeberg.org/Henri_GEIST/OnlyKey_hardware_token_HowTo/issues>

# Configure the *OnlyKey* itself {#_configure_the_onlykey_itself}

## Use an air-gap {#_use_an_air_gap}

You are going to setup an *OnlyKey*, an hardware token meant to protect
your private keys. And avoid to place them at risk on your desktop,
laptop or mobile phone.

It could be wise to not configure it, create, store and decipher your
private keys on a computer at risque to store them in your *OnlyKey*.
This will defeat part of the purpose.

Then I recommend you to make all the work to configure your *OnlyKey* on
an air-gap (<https://fr.wikipedia.org/wiki/Air_gap>).

A good solution for a very low price air-gap could be to use a
*Raspberry Pi Zero*. I mean the very first version without Wifi &
Bluetooth. But a lot of other solutions exists.

To do the trick:

1.  Setup an air-gap.

2.  Install the prerequisites from the next section below on it.

3.  Install anything else you think you will need.

4.  **Then never connect your air-gap directly or indirectly to the
    network again. What ever the reason.**

5.  Continue to the next step of this guide.

## Prerequisites {#_prerequisites}

First you need to get some real physical standard six faces dices to get
the best and cheapest source of entropy. A configured printer to print
offline passphrase protected copies of your keys as QR codes. And a
configured camera or scanner to test that what you will print can be
imported back.

Next for configuring your *OnlyKey* you first need to install some tools
then type:

``` shell
sudo apt install pipx gawk sed wget libusb-1.0-0-dev libudev-dev npm node-getpass
sudo apt install gnupg openssh-client paperkey ruby-asciidoctor-pdf qrencode zbar-tools
pipx install --system-site-packages onlykey
pipx install --system-site-packages keysec
npm install openpgp
. $HOME/.profile
wget https://codeberg.org/Henri_GEIST/OnlyKey_hardware_token_HowTo/raw/branch/master/extract_gpg_keys.js
chmod u+x extract_gpg_keys.js
mv extract_gpg_keys.js $HOME/.local/bin/extract_gpg_keys.js
```

> Note: Those install instruction are not exactly the same as the ones given in
the official *OnlyKey* documentation. *Debian* need `pipx` instead of
`pip` and some more `apt`, `pipx` and `npm` packages are needed to
follow this guide.

Then set some udev rules to make the *OnlyKey* device accessible to
normal users.

``` shell
[ -f /etc/udev/rules.d/49-onlykey.rules ] ||
wget https://raw.githubusercontent.com/trustcrypto/trustcrypto.github.io/pages/49-onlykey.rules &&
sudo mv 49-onlykey.rules /etc/udev/rules.d/
```

And optionally, if you want it, and only if you are working on an x86
architecture you can install the graphical interface by typing:

``` shell
wget https://github.com/trustcrypto/OnlyKey-App/releases/download/v5.5.0/OnlyKey_5.5.0_amd64.deb
sudo apt install ./OnlyKey_5.5.0_amd64.deb
```

## Prepare good passphrase and pin codes {#_prepare_good_passphrase_and_pin_codes}

You need to choose some damn fucking good passphrases and pin codes:

1.  Really hard to guess for someone knowing about you.

2.  Really hard to brute force by a powerful computer.

3.  Easy for you to remember because:

    -   If you loose them, everything protected by them is also lost.
    -   You should keep them in your head an never write them down.

### Create the *OnlyKey* pin codes. {#_create_the_onlykey_pin_codes}

The *OnlyKey* need three pin codes:

First account

:   Just roll ten times the dice to get a ten digit pin code. As you
    will type it everyday you will have no problem at all to remember it
    quickly . What ever you get.

Second account

:   As you risque to use it less often, to be sure to remember it, you
    can roll the dice just one more time and get the same pin code as
    the first account with just the first or last digit changed.

Self destruct code

:   You do not need the same level of secrecy as this one gives access
    to nothing. And you may not use it for years. So you better have to
    choose any seven digit you will easily remember. Just be sure it is
    really different from the accounts pin code for not typing it by
    mistake.

### Create a passphrase {#_create_a_passphrase}

A drawing is better than a speech. Look at the <https://xkcd.com/936/>
to understand why I am advocating to you the *diceware* process.

And then follow this process described at this address:
<https://www.eff.org/dice>

I recommend you to get at least height words from the long list. This
will produce a little more than one hundred bits of entropy.

For non native English speaker, you can just translate the individual
words you get in any language without security penalty. Or find some
lists in other languages on the net.

Then as one of the purpose of an *OnlyKey* is to prevent you from
needing to type your passphrase so often:

1.  Do not fear to have a long passphrase to type. You will rarely do
    it.

2.  To not forget it, take the habit to say your passphrase in your head
    like a mantra each time you type your pin code.

## Complete erasure {#_complete_erasure}

This enable to restart from zero.

> Note:
This is not needed. You can follow this guide and keeping what you
already have on your *OnlyKey*.

> WARNING:
Be sure to have a copy of all important data you will loose in this
operation.

Connect the *OnlyKey*:

-   Enter the auto erasure pin code;

-   Or enter ten time any invalid pin code.

## Initialise an empty *OnlyKey* {#_initialise_an_empty_onlykey}

> Note:
This will only work on an empty *OnlyKey*. If you have an already
initialized *OnlyKey* jump to the next section.

Connect an uninitialised *OnlyKey*, run the command command below and
follow the instructions.

``` shell
onlykey-cli init
```

Then unplug your *OnlyKey*.

## Switch to configuration mode {#_switch_to_configuration_mode}

Half of the *OnlyKey* configuration below request it to be in `config`
mode. In this mode you can change some configuration needing some
particular caution. They should not be accessible only because your
*OnlyKey* is connected and unlocked.

To enter in the `config` mode:

1.  Plug your *OnlyKey*.
2.  Unlock it with your pin code.
3.  Press the button `6` for more than five seconds.
4.  Release the button `6`.
5.  Check that the *OnlyKey* LED turned off.
6.  Type again your pin code.
7.  Check that the *OnlyKey* LED blink red.

The `config` mode will exit when the *OnlyKey* is unplugged.

## Set backup passphrase {#_set_backup_passphrase}

### Setup {#_setup}

If you want to be able to extract a backup of your *OnlyKey* you need to
setup a passphrase for it. But it may not be a good idea.

Reasons to set a backup passphrase

:   You will need the *FIDO2* functionnality and/or some keys generated
    inside your *OnlyKey* and you need to duplicate them in an other
    *OnlyKey*. But it is better to avoid beeing trap in this situation
    as you will be bind to your *OnlyKey* without possibility to escape.

Reasons to avoid setting a backup passphrase

:   Having an security token from witch noting can be extract in any
    way.

If you really want to do so, the current version of `onlykey-cli`,
(v1.2.10 while I am writing this line) miss what is needed to do so.
Then you first need to add after the line **403** of the file
`$HOME/.local/pipx/venvs/onlykey/lib/python3.11/site-packages/onlykey/cli.py`
those two lines:

                    elif sys.argv[2] == 'BACKUP':
                        slot_id = 131

Just after the lines:

                    elif sys.argv[2] == 'HMAC2':
                        slot_id = 129

> WARNING:
In *Python* the correct number of `spaces` at begin of lines **must** be
respected.

> Note:
Depending of your installed version of python the path to the file may
be a little different.

Then save the modified file and type:

``` shell
read -s -p "Enter Passphrase:" PASSPHRASE1
echo
read -s -p "Retype passphrase:" PASSPHRASE2
echo
if [ "$PASSPHRASE1" != "$PASSPHRASE2" ]
then
    echo "Error passphrases mismatch" > /dev/stderr
else
    onlykey-cli setkey BACKUP x b $(printf "%s" "$PASSPHRASE1" | sha256sum | grep -o '[0-9a-fA-F]*')
fi
PASSPHRASE1=""
PASSPHRASE2=""
```

### Lock {#_lock}

> WARNING:
You can not change your mind after this. This operation is definitive
until complete *OnlyKey* erasure.

If you want to prevent anyone which can have access to your unlocked
*OnlyKey* to dump and use for himself a backup of it. You should lock
the backup password editing functionality.

If you haven't already set a passphrase no backup will ever be possible.
If you have already set a passphrase then your adversary can not change
the passphrase and if he does not know it, he can still do a backup but
not use it.

``` shell
onlykey-cli backupkeymode 1
```

## Set *OnlyKey* internal keyboard emulation {#_set_onlykey_internal_keyboard_emulation}

Each time the *OnlyKey* has to type something, when you use the backup
function or the passoword manager function for example, the *OnlyKey*
work as it is a keyboard and an agent in the *OnlyKey* is typing on it.
For this to work this internal keyboard layout **must** match your
computer keyboard layout (QWERTY, AZERTY, DVORAK, BEPO, ...​). And the
internal agent **must** type at a speed your computer can handle.

### Layout {#_layout}

And select the `KEYBORD_LAYOUT` matching your system configuration in

| KEYBORD_LAYOUT | Description     | KEBORD_LAYOUT | Description      |
|--------------|-------------------|--------------|-------------------|
| 1            | USA_ENGLISH       | 15           | NORWEGIAN         |
| 2            | CANADIAN_FRENCH   | 16           | PORTUGUESE        |
| 3            | CANADIAN_MULTILINGUAL | 17       | PORTUGUESE_BRAZILIAN |
| 4            | DANISH            | 18           | SPANISH           |
| 5            | FINNISH           | 19           | SPANISH_LATIN_AMERICA |
| 6            | FRENCH            | 20           | SWEDISH           |
| 7            | FRENCH_BELGIAN    | 21           | TURKISH           |
| 8            | FRENCH_SWISS      | 22           | UNITED_KINGDOM    |
| 9            | GERMAN            | 23           | US_INTERNATIONAL  |
| 10           | GERMAN_MAC        | 24           | CZECH             |
| 11           | GERMAN_SWISS      | 25           | SERBIAN_LATIN_ONLY |
| 12           | ICELANDIC         | 26           | HUNGARIAN         |
| 13           | IRISH             | 27           | DANISH MAC        |
| 14           | ITALIAN           | 28           | US_DVORAK         |

Then type:

``` shell
onlykey-cli keylayout $KEYBOARD_LAYOUT
```

> Note:
If like me, your keyboard layout is not in the list and/or you use a non
standard layout in your environment and you still want to to also use
your *OnlyKey* on other computers nearby you. Then you will have to
follow the instruction at chapter [Adapt to keyboard
layout](#_adapt_to_onlykey_keyboard_layout).

### Speed {#_speed}

Then select a `KEYBOARD_SPEED` value between `1` and `10`:

| KEYBOARD_SPEED | Comment                                             |
|-------------|--------------------------------------------------------|
| 1           | Only to connect to extremely slow 8 bits microcontroller board. |
| 4           | Default value. (but damn slow)                         |
| 7           | Maximum speed supported by my *Raspberry PI Zero* board |
| 9           | Maximum speed supported by my *Intel I5* laptop.       |

Find your sweet spot and type:

``` shell
onlykey-cli keytypespeed $KEYBOARD_SPEED
```

## Set GPG/SSH challenge {#_set_gpgssh_challenge}

To use a unique button to valid a GPG or SSH challenge instead of three
random button select at each challenge, type:

``` shell
onlykey-cli storedkeymode  1
onlykey-cli derivedkeymode 1
```

> Note:
This is required if you want to use the SSH or GPG agent as daemons. As
in this case the random challenge will not be displayed to you. But in
this case you can not be absolutely certain on what request trigger the
challenge.

If you still prefer to type the three random key challenge, type:

``` shell
onlykey-cli storedkeymode  0
onlykey-cli derivedkeymode 0
```

## Import *GPG* keys {#_import_gpg_keys}

### Find *GPG* keys to import {#_find_gpg_keys_to_import}

First you need to have some *GPG* keys to import. Maybe you already have
some and can get the list of them with the command:

``` shell
gpg --list-secret-keys
```

If you do not have any, you can create some new ones with the command:

``` shell
gpg --expert --full-generate-key --pinentry-mode loopback
```

Then answer the questions:

| Subject                           | Answer                            |
|-----------------------------------|-----------------------------------|
| Kind of key                       | \(9\) ECC and ECC                 |
| Elliptic curve                    | \(1\) Curve 25519                 |
| Key expiration                    | As long as you want or even never |
| Name                              | First Names LAST NAMES            |
| E-mail                            | <your.email@address.com>          |
| Comment                           | Usually nothing but what ever you want |

If you already have some but they are not of `ed25519` type it may be
time to:

1.  Create some new keys;
2.  Sign them with your old keys;
3.  Publish the public part of them on a key server and/or to your
    peers;
4.  Revoke the old keys and stop using them.

### export your *GPG* keys {#_export_your_gpg_keys}

Choose the keyring you want to import in your private keyring list and
get its 40 characters hexadecimal fingerprint then type.

``` shell
GPG_FINGERPRINT="the fingerprint you have just selected"

gpg --export $GPG_FINGERPRINT > $GPG_FINGERPRINT.pub
gpg --export-secret-keys --pinentry-mode loopback $GPG_FINGERPRINT > $GPG_FINGERPRINT.priv
```

> Note:
The second command will ask your passphrase but its result is still
passphrase protected.

### Save your *GPG* keys offline {#_save_your_gpg_keys_offline}

If you are doing all this on an air-gap (see chapter [Use an
air-gap](#_use_an_air_gap)) and you will never connect it directly or
indirectly to the net again an store it safe, this air-gap count as an
offline copy.

But anyway it is always better to have also some copies on paper.
Printed paper is a surprisingly time resisting medium compared to disks
and memory cards. It rarely misbehave. Then to get a printable *PDF*
version, type:

``` shell
GPG_FINGERPRINT="The same finger print as in the previous section"

qrencode -l M --8bit --output $GPG_FINGERPRINT.pub.png < $GPG_FINGERPRINT.pub
paperkey --output-type=raw < $GPG_FINGERPRINT.priv | qrencode -l H --8bit --output $GPG_FINGERPRINT.priv.png
asciidoctor-pdf -o $GPG_FINGERPRINT.pdf - << EOF
== Human readable private part
GPG version: $(gpg --version | head -n 1) +
gpg --export-secret-keys $GPG_FINGERPRINT | paperkey
++++
$(paperkey < $GPG_FINGERPRINT.priv)
++++
<<<
== Computer readable public and private keys
image::$GPG_FINGERPRINT.pub.png[title=gpg --export $GPG_FINGERPRINT by: $(gpg --version | head -n 1)]
image::$GPG_FINGERPRINT.priv.png[title=gpg --export-secret-keys $GPG_FINGERPRINT | paperkey --output-type=raw]
EOF
```

Then print the result two-sided to have every thing on one paper sheet.
And keep it in a safe place. And for more safety, make some other
copies, and ask some relatives you trust to keep them safe for you. This
will ensure you do not lost everything in case of fire or robbery at
your home.

> Note:
Even the paper version is protected by your passphrase and need it to be
used. Then your relatives can not use it for themselves.

### Check recoverability of your printed *GPG* keys {#_check_recoverability_of_your_printed_gpg_keys}

Unchecked backups will always betray you at the worst possible time.
When you desperately need them.

First scan or take photos of your private and public keys QR codes. And
save them as `private_GPG_QR_code.jpg` and `public_GPG_QR_code.jpg`.

Then check that you can reconstruct the private key you have exported at
the section [export your keys](#_export_your_gpg_keys) by typing:

``` shell
zbarimg --raw -Sbinary public_GPG_QR_code.jpg > public.gpg
zbarimg --raw -Sbinary private_GPG_QR_code.jpg | paperkey --pubring public.gpg > private.gpg
diff private.gpg $GPG_FINGERPRINT.priv
```

### Flash *GPG* keys in the *OnlyKey* {#_flash_gpg_keys_in_the_onlykey}

Keep the `$GPG_FINGERPRINT` and choose some empty `$GPG_SIGN_SLOT` and
`GPG_DECIPHER_SLOT` of the \_OnlyKey in the range `ECC1` .. `ECC16` to
flash the keys in and some `$GPG_SIGN_LABEL` and `$GPG_DECIPHER_LABEL`
mnemonic to recall what is in each slot afterward.

> Note:
Every label can contain a maximum of 16 ASCII characters.

Then type:

``` shell
GPG_FINGERPRINT="The same fingerprint you use since the begin of this chapter"
GPG_SIGN_SLOT="Some thing in range ECC1 .. ECC16"
GPG_DECIPHER_SLOT="Some other thing in the same range"
GPG_SIGN_LABEL="GPG Singing"
GPG_DECIPHER_LABEL="GPG decipher"

extract_gpg_keys.js < $GPG_FINGERPRINT.priv |
awk -F ':' "/sign/ { system (\"onlykey-cli setkey $GPG_SIGN_SLOT x s\"\$2) };
        /decipher/ { system (\"onlykey-cli setkey $GPG_DECIPHER_SLOT x d\"\$2) }"

onlykey-cli setkey $GPG_SIGN_SLOT label "$GPG_SIGN_LABEL"
onlykey-cli setkey $GPG_DECIPHER_SLOT label "$GPG_DECIPHER_LABEL"
```

## Import *SSH* key {#_import_ssh_key}

> Note:
If you have already imported a *GPG* signing key in previous section you
can choose to use it also as an *SSH* key and jump directly to the next
section [Lock your screen and with a
button](#_lock_your_screen_and_onlykey_with_a_button). If you want to
import a dedicated key for *SSH* read this section.

### Find an *SSH* key to import {#_find_an_ssh_key_to_import}

First you need to have some *SSH* private keys to import. If you already
have some, it is usually stored in your `$HOME/.ssh/` directory. And
probably named `id_ed25519`.

If you do not have anyone, it is the right time to create one by typing:

``` shell
ssh-keygen -t ed25519
```

Then follow the instructions. If you chose the default values this will
create two key files `$HOME/.ssh/id_ed25519` for the private key and
`$HOME/.ssh/id_ed25519.pub` for the public part.

The choose the *SSH* private key file to import in your *OnlyKey* with
will be referred as `SSH_KEY_FILE` for the next scripts snippets.

### Save your *SSH* keys offline {#_save_your_ssh_keys_offline}

For the same reason as in the [Save your keys
offline](#_save_your_gpg_keys_offline) chapter, make some offline paper
version of your *SSH* keys. To do so type:

``` shell
SSH_KEY_FILE="The SSH private key file path you have just chosen."

qrencode -l H --8bit --output private_SSH_key.png < $SSH_KEY_FILE
asciidoctor-pdf -o private_SSH_key.pdf - << EOF
== Human readable _SSH_ private key
++++
$(cat $SSH_KEY_FILE)
++++
== Computer readable _SSH_ private key
image::private_SSH_key.png[title=$SSH_KEY_FILE]
EOF
```

Then print the newly created *PDF*, keep it in a safe place and make
some copy to gives to some people you trust to keep them safe for you.

### Check recoverability of your printed *SSH* keys {#_check_recoverability_of_your_printed_ssh_keys}

First scan or take a photo of your *SSH* keys QR code. And save it as
`SSH_keys_QR_code.jpg`. Then type:

``` shell
zbarimg --raw -Sbinary SSH_keys_QR_code.jpg > SSH_keys_from_QR_code.txt
diff SSH_keys_from_QR_code.txt $SSH_KEY_FILE
```

### Flash the *SSH* key in the *OnlyKey* {#_flash_the_ssh_key_in_the_onlykey}

Chose an `$SSH_SLOT` between `ECC1` and `ECC16` not already used for
something else, an `$SSH_KEY_FILE` name to load in this slot and an
`$SSH_KEY_LABEL` to name it. Then type:

> Note:
Every label can contain a maximum of 16 ASCII characters.

``` shell
SSH_KEY_FILE="the same private key file path as previously"
SSH_SLOT="The slot you have just chosen"
SSH_KEY_LABEL="SSH key"

onlykey-cli setkey $SSH_SLOT x s "$(keysec info < $SSH_KEY_FILE | sed -n '/priv:/{:a;n;/pub:/b;p;ba}' | tr -d ' :\n')"
onlykey-cli setkey $SSH_SLOT label "$SSH_KEY_LABEL"
```

## Lock your screen and *OnlyKey* with a button {#_lock_your_screen_and_onlykey_with_a_button}

Chose an *OnlyKey* button to be a `$LOCK_BUTTON` between `1` and `6` or
choose `0` for none and type:

``` shell
onlykey-cli lockbutton $LOCK_BUTTON
```

Now each time you will touch this button your *OnlyKey* and your screen
will lock.

> Note:
The chosen button will not be able to supply a password any more as long
as it is the lock button.

## Set inactivity lockout timer {#_set_inactivity_lockout_timer}

Choose a `$TIMEOUT` between `1` and `255` minutes or `0` to deactivate
the this function and type:

``` shell
onlykey-cli idletimeout $TIMEOUT
```

Now your *OnlyKey* will reboot itself an lock after this time of
inactivity.

## Setting LED brightness {#_setting_led_brightness}

Choose a `$BRIGHTNESS` between `1` and `10` from dimmer to brighter and
type:

``` shell
onlykey-cli ledbrightness $BRIGHTNESS
```

# Computer configuration {#_computer_configuration}

> Note:
This do not need to be done on the same computer you used to configure
Your *OnlyKey*. And more than this, I do recommend to configure your
*OnlyKey* on an air-gap different from the computer you will use your
*OnlyKey* on dayly. See the chapter [Use an air-gap](#_use_an_air_gap).

## Prerequisites {#_prerequisites_2}

First install the *OnlyKey* *SSH* and *GPG* agents, their dependencies
and some basic tools.

``` shell
sudo apt install pipx grep sed at wget libusb-1.0-0-dev libudev-dev openssh-client gnupg zbar-tools
pipx install --system-site-packages onlykey-agent
pipx install --system-site-packages onlykey
. $HOME/.profile
```

> Note:
Those install instruction are not exactly the same as the ones given in
the official *OnlyKey* documentation. *Debian* need `pipx` instead of
`pip`, one more `sudo` command is needed and some more `` apt` ``
packages are needed to follow this guide.

Then set some udev rules to make the OnlyKey device accessible to normal
users.

``` shell
[ -f /etc/udev/rules.d/49-onlykey.rules ] ||
wget https://raw.githubusercontent.com/trustcrypto/trustcrypto.github.io/pages/49-onlykey.rules &&
sudo mv 49-onlykey.rules /etc/udev/rules.d/
```

Optionally, if you want it, and only if you are working on an x86
architecture you can install the graphical interface by typing:

``` shell
wget https://github.com/trustcrypto/OnlyKey-App/releases/download/v5.5.0/OnlyKey_5.5.0_amd64.deb
sudo apt install ./OnlyKey_5.5.0_amd64.deb
```

## Lock screen on disconnection {#_lock_screen_on_disconnection}

If you want to lock your computer screen on each *OnlyKey* disconnection
you can add to the file `/etc/udev/rules.d/49-onlykey.rules` the line:

    ACTION=="remove", SUBSYSTEM=="input", ATTRS{idVendor}=="1d50", ATTRS{idProduct}=="60fc", RUN+="/bin/su USER_NAME -c '/usr/bin/xdg-screensaver lock'"

Where `USER_NAME` must be replaced by the user owning the graphical
session. If you want to configure this for multiple users your can add
one line per user.

> Note:
If you have initialised the inactivity lockout timer of your *OnlyKey*,
this will also lock your screen each time your *OnlyKey* lockout itself.

## *OnlyKey* *GPG* agent {#_onlykey_gpg_agent}

### Initialise *OnlyKey GPG* agent {#_initialise_onlykey_gpg_agent}

First get back the public part of the *GPG* key you have setted in your
*OnlyKey* at chapter [Find keys to import](#_find_gpg_keys_to_import).
You can get it back from any source:

1.  Your current computer if it is already in your keyring.

2.  The backup QR code you have printed when you generated the key.

3.  Anyone or any keyserver you already gives your public key.

If it is already in your keyring just type:

``` shell
gpg --export $GPG_FINGERPRINT > $GPG_FINGERPRINT.pub
```

If you have it on QR code scan it or take a picture of it and name it
`$GPG_FINGERPRINT.jpg` and type:

``` shell
zbarimg --raw -Sbinary $GPG_FINGERPRINT.jpg | gpg --enarmor |
sed 's/ARMORED FILE/PUBLIC KEY BLOCK/' > $GPG_FINGERPRINT.pub
```

Then choose a `$GNUPGHOME` directory to store the config. Usually
`$HOME/.gnupg/onlykey`. Then recall the `$GPG_DECIPHER_SLOT` and
`$GPG_SIGN_SLOT` where you put the private keys in your *OnlyKey*. If
you forget it but put some labels on them you can get back this
information by typing:

``` shell
onlykey-cli getkeylabels
```

Then type:

``` shell
GPG_FINGERPRINT="The finger print of the keys you want to use."
GPG_DECIPHER_SLOT="The slot ECC1 to ECC16 you put the deciphering key in"
GPG_SIGN_SLOT="The slot ECC1 to ECC16 you put the signing key in"
GNUPGHOME="something like $HOME/.gnupg/onlykey"

onlykey-gpg init "$(gpg --show-keys $GPG_FINGERPRINT.pub | grep uid | sed 's/^uid *//1')" \
              -e ed25519 \
             -dk $GPG_DECIPHER_SLOT \
             -sk $GPG_SIGN_SLOT \
              -i $GPG_FINGERPRINT.pub \
       --homedir $GNUPGHOME
```

> Note:
In case of failure if you want to retry you first need to delete the
`$GNUPGHOME` you have just created.

> WARNING:
But **BE CAREFUL DOUBLE CHECK WHAT YOU WILL DELETE.** If by mistake you
delete your `$HOME/.gnupg` depending on what it already contain it can
be a great loss.

### Using *OnlyKey* for *GPG* in the current terminal {#_using_onlykey_for_gpg_in_the_current_terminal}

If now you want *GPG* to look in your new `$GNUPGHOME` directory instead
of the default `$HOME/.gnupg` and then use the *OnlyKey* instead of the
on disk keyring you need to export the `$GNUPGHOME` variable as you have
just set it.

``` shell
export GNUPGHOME=The_path_you_have_just_chosen
```

From there the *OnlyKey* will be required and used for all your *GPG*
signing and deciphering activities. In the current terminal and its
children. The *OnlyKey* will blink purple or turquoise when a signing or
deciphering is request and wait on you to touch it.

### Making *OnlyKey* your default *GPG* agent {#_making_onlykey_your_default_gpg_agent}

If you want this configuration to be permanent for all context after
logout and new login just place this export line:

``` shell
export GNUPGHOME=The_path_you_have_just_chosen
```

At the end of your `$HOME/.profile` and restart your session.

## *OnlyKey* *SSH* agent {#_onlykey_ssh_agent}

First for the rest of this chapter, recall the `$SSH_SLOT` it could be
the slot where you put a dedicated *SSH* key at chapter [Flash the key
in the ](#_flash_the_ssh_key_in_the_onlykey), or the slot where you put
your signing *GPG* key at chapter [???](#Flash GPG keys in the OnlyKey)
if you chose to use your *GPG* singing key also for *SSH*.

If you have forgotten you can for a reminder type:

``` shell
onlykey-cli getkeylabels
```

### Get the *SSH* public key {#_get_the_ssh_public_key}

To get the public key to send to all servers you want to connect to,
just type:

``` shell
SSH_SLOT="The ECCx slot containing the key to use for SSH"

onlykey-agent -sk $SSH_SLOT some.user@some.domaine
```

> Note:
You can use what ever you want as `some.user@some.domaine`. It as no
impact. It is just like a comment when the `-sk $SSH_SLOT` is asserted.

### Using *OnlyKey* for *SSH* in the current terminal {#_using_onlykey_for_ssh_in_the_current_terminal}

For *SSH* to use your *OnlyKey* in the current shell and all its
children, type the command:

``` shell
SSH_SLOT="The ECCx slot containing the key to use for SSH"

onlykey-agent -sk $SSH_SLOT -s foo
```

Where `$SSH_SLOT` is the *OnlyKey* key slot you have imported the
private key you want to use for *SSH* authentification probably `ECC3`
or maybe `ECC2` if you have chosen to use the same private key for *SSH*
and *GPG*.

> Note:
The `foo` argument has no purpose with imported keys, it is only use as
a place holder required by the `onlykey-agent` executable.

### Making *OnlyKey* your default *SSH* agent {#_making_onlykey_your_default_ssh_agent}

> Note:
I have planed to add some explanations for non *Systemd* users like
*Devuan* users as soon as I find a solution.

If you want to make it permanent and session wide you need to configure
*Systemd* to run the *OnlyKey* *SSH* agent instead of the standard *SSH*
agent first create a new user `onlykey-ssh-agent` *Systemd* service:

`$HOME/.config/systemd/user/onlykey-ssh-agent.service` :
``` systemd
[Unit]
Description = onlykey-agent SSH agent
Requires = onlykey-ssh-agent.socket

[Service]
Type = simple
Restart = always
Environment = "PATH=/bin:/usr/bin:/usr/local/bin:%h/.local/bin"
ExecStart = %h/.local/bin/onlykey-agent --sock-path %t/onlykey-agent/S.ssh -f -sk $SSH_SLOT foo
```

> WARNING:
You need to replace `$SSH_SLOT` at the end of the last line by the real
`ECC1` to `ECC16` slot containing the key you want to use for *SSH*.
This will not be substitute automatically.

> Note:
You may need to first create the directory `$HOME/.config/systemd/user`
if id does not already exist.

Then create a new user `onlykey-ssh-agent` *Systemd* socket for this
service:

`$HOME/.config/systemd/user/onlykey-ssh-agent.socket` :
``` systemd
[Unit]
Description = onlykey-agent SSH agent socket

[Socket]
ListenStream = %t/onlykey-agent/S.ssh
FileDescriptorName = ssh
Service = onlykey-ssh-agent.service
SocketMode = 0600
DirectoryMode = 0700

[Install]
WantedBy = sockets.target
```

Next start them and make them restart after each reboot by typing:

``` shell
systemctl --user start onlykey-ssh-agent.service onlykey-ssh-agent.socket
systemctl --user enable onlykey-ssh-agent.service onlykey-ssh-agent.socket
```

And now add to your `$HOME/.profile` some code to set and export the
`$SSH_AUTH_SOCK` variable if not already done on each login. It should
not overwrite any existing value to enable agent forwarding.

``` shell
grep -q '^[^#]*SSH_AUTH_SOCK=.*/onlykey-agent/S.ssh' $HOME/.profile || cat << 'EOF' >> $HOME/.profile
if [ -z "$SSH_AUTH_SOCK" ]
then
    SSH_AUTH_SOCK=$(systemctl show --user --property=Listen onlykey-ssh-agent.socket | grep -o "/.*/onlykey-agent/S.ssh")
    export SSH_AUTH_SOCK
fi
EOF
```

Finally, if the *gnome_keyring* is installed on your system, deactivate
it for *SSH*:

``` shell
[ -f $HOME/.config/autostart/gnome-keyring-ssh.desktop ] ||
mkdir -p $HOME/.config/autostart/ &&
cp /etc/xdg/autostart/gnome-keyring-ssh.desktop $HOME/.config/autostart/ &&
grep -q '^Hidden\s*=\s*true\(\s\+\|$\)' $HOME/.config/autostart/gnome-keyring-ssh.desktop ||
echo 'Hidden=true' >> $HOME/.config/autostart/gnome-keyring-ssh.desktop
```

Now everything is in place and will be running on your next session
login.

## GPG agent forwarding over SSH {#_gpg_agent_forwarding_over_ssh}

### Uploading public keys on remote server {#_uploading_public_keys_on_remote_server}

First find the `$GPG_FINGERPRINT` of the *GPG* key you want to use for
this. To do so, connect and unlock your *OnlyKey* and type:

``` shell
gpg --list-secret-keys
```

Then import the public part of the key on the server you want to forward
*GPG* agent to by typing:

``` shell
GPG_FINGERPRINT="The finger print of the key you have just chosen"
SSH_LOGIN="your ssh login something like 'user@server'"

gpg --armor --export $GPG_FINGERPRINT | ssh $SSH_LOGIN "bash --login -c 'gpg --import'"
```

> Note:
You need to already have a working *SSH* account on the server.

### Configure the local machine {#_configure_the_local_machine}

Then you need to find the local *GPG* agent socket for your user with
the command:

    gpgconf --list-dir agent-socket

> Note:
On the classic *gpg-agent* we should look for the `agent-extra-socket`
to prevent private key leaks. But with *OnlyKey* the normal socket is
already like the extra socket and there is no extra socket.

Next, the remote server normal *GPG* agent socket for your user with the
command:

``` shell
GPG_FINGERPRINT="The finger print of the key you have just chosen"
SSH_LOGIN="your ssh login something like 'user@server'"

gpg --armor --export $GPG_FINGERPRINT | ssh $USER_AT_SERVER "bash --login -c 'gpgconf --list-dir agent-socket'"
```

Then, add to your `$HOME/.ssh/config` a forwarding rule for the remote
server, replacing `THE_REMOTE_HOSTNAME` by the remote hostname you want
to connect to, `THE_REMOTE_HOST_GPG_AGENT_NORMAL_SOCKET` and
`THE_LOCAL_GPG_AGENT_SOCKET` by the socket path you have just found
above:

`\$HOME/.ssh/config`:

``` conf
HOST THE_REMOTE_HOSTNAME
    StreamLocalBindUnlink yes
    RemoteForward THE_REMOTE_HOST_GPG_AGENT_NORMAL_SOCKET THE_LOCAL_GPG_AGENT_SOCKET
```

### Configure the remote server *SSH* deamon {#_configure_the_remote_server_ssh_deamon}

Finally, if you have access to the root privileges on the remote server
add the line `StreamLocalBindUnlink yes` to its `/etc/ssh/sshd_config`
and run on this remote server:

``` shell
sudo sshd -t && sudo systemctl restart sshd
```

If you do not have the required privileges ask the administrator to do
so. And if you can not. Then you will have to connect two time to your
ssh account each time you want to use *GPG* agent forwarding. The first
time just to run the command:

``` shell
rm $(gpgconf --list-dir agent-socket)
```

Then disconnect and reconnect a second time to use your *SSH* session as
you wish.

Now you can use *GPG* on the remote server while keeping your *OnlyKey*
at hand connected on your local machine.

## Adapt to *OnlyKey* keyboard layout {#_adapt_to_onlykey_keyboard_layout}

> Note:
If the keyboard layout configured in your *OnlyKey* match the keyboard
layout configured on your computer you can just jump to the next
section.

On *Xwindows* it is possible to set individually different keyboard for
each keyboard. Then even if you use keyboard layout different from the
one configured in your *OnlyKey* or one not in the list of the *OnlyKey*
suported ones you can configure your *X* session to adapt to the
situation.

### Manual method {#_manual_method}

To find the *X* id of your *OnlyKey* emulated keyboard. First connect
your *OnlyKey* and type:

``` shell
xinput
```

Then assign it the keyboard layout matching what is configured in your
*OnlyKey*:

-   \"us\" for standard English US QWERTY keyboard layout
-   \"fr\" for standard French AZERTY keyboard layout
-   and so on ...

By typing:

``` shell
ONLYKEY_ID="The ID you just find with the command xinput"
ONLYKEY_KEYBOARD_LAYOUT="The layout configured in your _OnlyKey"

setxkbmap -device $ONLYKEY_ID -layout $ONLYKEY_KEYBOARD_LAYOUT
```

### Plug & Play method {#_plug_play_method}

First create the script below to be called each time your *OnlyKey* is
plugged. Call it `.$HOME/.local/bin/onlykey_set_layout.sh` and adapt the
`ONLYKEY_KEYBOARD_LAYOUT` and `ONLYKEY_USER` to your need.

`\$HOME/.local/bin/onlykey_set_layout.sh`:

``` shell
#!/bin/sh

# This script assign all your connected OnlyKeys the keyboard layout of your
# choice. Without changing the layout of your others keyboards.
#
# Just set the ONLYKEY_KEYBOARD_LAYOUT just below to the same layout that is
# configured in your keys.
# And the ONLYKEY_USER which will use it.
ONLYKEY_KEYBOARD_LAYOUT='us'  # or 'fr' or whatever is configured in your OnlyKey
ONLYKEY_USER='Your UNIX login name'

# This look for the first local X display available on the host.
# Work in most usual case but can be improved for rare tricky situations.
DISPLAY=$(ls /tmp/.X11-unix | grep '^X[0-9][0-9]*$' | tr 'X' ':' | head -n 1)

# As this script may be trigger by the USB connection event,
# wait a little bit for initialisation to be done.
sleep 1

# Needed for those vars to be available in the 'heredoc' below.
export DISPLAY ONLYKEY_KEYBOARD_LAYOUT

# Needed to get access rights to the DISPLAY
/bin/su $ONLYKEY_USER << 'EOF'
   EXTRACT_XINPUT_DEVICE_ID='s/.*\sid=\([1-9][0-9]*\)\s.*/\1/1'

   ONLYKEY_ID_LIST=$(xinput | grep "ONLYKEY" | sed $EXTRACT_XINPUT_DEVICE_ID)

   for ONLYKEY_ID in $ONLYKEY_ID_LIST
   do
      setxkbmap -device $ONLYKEY_ID -layout $ONLYKEY_KEYBOARD_LAYOUT
   done
EOF
```

Then make it executable by typing:

``` shell
chmod u+x $HOME/.local/bin/onlykey_set_layout.sh
```

Finally, add the line below to your `/etc/udev/rules.d/49-onlykey.rules`
file to execute the script each time you plug your *OnlyKey*.

`/etc/udev/rules.d/49-onlykey.rules`:

``` conf
ACTION=="add", SUBSYSTEM=="input", ATTRS{idVendor}=="1d50", ATTRS{idProduct}=="60fc", RUN+="/usr/bin/at -M -f '/home/USER/.local/bin/onlykey_set_layout.sh' now"
```

And change the `USER` string by your *UNIX* user name. You can have
multiple lines like this for multiple users.

## Set *OnlyKey* internal time for *TOTP* {#_set_onlykey_internal_time_for_totp}

If you plane to use the *TOTP* second factor authentication
functionality of your *OnlyKey* you need to set its internal clock each
time you plug it in your *USB* port. To do so add those to lines below
to the `/etc/udev/rules.d/49-onlykey.rules` file.

``` conf
SUBSYSTEMS=="usb", ATTRS{idVendor}=="1d50", ATTRS{idProduct}=="60fc", RUN+="/usr/local/bin/onlykey-cli settime"
KERNEL=="ttyACM*", ATTRS{idVendor}=="1d50", ATTRS{idProduct}=="60fc", RUN+="/usr/local/bin/onlykey-cli settime"
```
