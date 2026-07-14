---
Title:   "Utilisez vos clés OpenPGP avec la clé de sécurité OnlyKey."
Date:    2024-11-15T01:30:00+02:00
License: CC-BY-SA-4.0+
Tags:    [ "gnupg", "security tocken" ]
categories: [ "Guide" ]
draft: false
author: [ "Henri Geist" ]
description : "HowTo pour clé matériel de sécurité OnlyKey sur Debian et dérivées."
lang: fr
bg_image: "images/backgrounds/library.jpg"
image: "images/blog/2024/onlykey.jpeg"
type: "post"
---

*Cet article devrait être révisé à la lumière des récents développements au sein de l'organisation, en particulier :*

- *[**pgpid**](//foopgp.org/fr/solutions/pgp-id/), qui remplace avantageusement [paperkey](//github.com/dmshaw/paperkey/).*

- *L'action **gen-passphrase** de la bash-lib [**bl-security**](//codeberg.org/foopgp/bash-libs/src/branch/main/man/bl-security.1.md),
qui implémente une méthode comparable à [celles des dés](//www.eff.org/dice) et
remplace la plupart des [programmes "diceware"](//github.com/ulif/diceware).*

*Traduction depuis l'anglais, parfois approximative. Vous pouvez contribuer à
cet version française [via codeberg](//codeberg.org/foopgp/foopgp-hugowebsite/src/branch/public/content/french/blog/2024-11-15-OnlyKey-HowTo.md).*

---

# Préambule {#_préambule}

Ceci est une procédure pas à pas montrant la voie dans l'ordre pour
configurer une *OnlyKey* et l'utiliser :

-   Depuis l'ouverture de la boite;
-   Ou en redémarrant avec une *OnlyKey* déjà configuré;
-   Jusqu'à ce qu'elle soi prête à l'usage avec :
    -   Le pseudo clavier configuré pour votre ordinateur;
    -   La luminosité de la LED au niveau que vous désirez;
    -   Le délais d'inactivité avant verrouillage a votre convenance;
    -   La capacité de verrouiller votre écran comme vous le voulez;
    -   Une paire de clef privée *GPG* importé dans votre *OnlyKey*
        depuis *GnuPG*;
    -   Le *gpg-agent* configuré sur votre *Debian* ou dérivée;
    -   Une clef privée *SSH* importée dans votre *OnlyKey* depuis
        *ssh-keygen*;
    -   Le *ssh-agent* configuré sur votre *Debian* ou dérivée;
    -   Le *GPG* forwarding over *SSH* configuré coté client et serveur;

Le processus décrit ici n'est pas le seul moyen de faire. Certains choix
stratégiques ont été faits:

Import de clefs

:   Comme il n'est pas possible d'exporter des clefs depuis la
    *OnlyKey*. J'ai choisi de n'utiliser que des clefs importées et donc
    aucune clef générée dans la *OnlyKey*. Car je pense très important
    d'avoir des copies interopérable et hors ligne de toute mes clefs au
    cas ou je ne pourrais plus utiliser mes *OnlyKey*s pour quelques
    raisons que ce soit (perdues, volées, en panne, obsolètes, ...​).

ed22519

:   J'ai choisi d'utiliser des clefs *ED22519* au lieu de *RSA* par ce
    que les clefs *RSA* 2048 bits sont obsolètes et les 4096 bits sont
    trop lentes et buggées sur la *OnlyKey*.

FIDO2

:   N'ayant jamais personnellement utiliser *FIDO2* je n'aborderais pas
    cette fonctionnalité. Je préfère utiliser *SSH/GPG* à la place. Car
    les données *FIDO2* ne peuvent pas être importées. À mes yeux c'est
    inutilisable. On se retrouvera tôt ou tard bloqué sans accès à l'un
    de nos comptes. Et de toute façon il n'y a rien de spécifique au
    *OnlyKey* dans cette fonction. Ça marche exactement comme n'importe
    quelle autre token *FIDO2*.

Gestionnaire de mot de passe

:   Je n'en parle pas non plus. Mais peut-être plus tard. De toute façon
    c'est assez simple depuis l'interface graphique. N'oubliez juste pas
    que la *OnlyKey* est en écriture seul et donc l'IHM ne vous
    confirmeras jamais son état actuel.

Ligne de commande

:   Tout ce manuel est pensé pour la ligne de commande. Ce sera aussi
    plus facile et moins ambigus pour vous. Vous pourrez mettre toute
    les instructions dans un seul script pour tout faire en un coup. Et
    de toute façon l'interface graphique ne marche que sur *amd64*. La
    ligne de commande marche partout.

Debian et dérivées

:   C'est tout ce que j'ai et tout mes tests sont fait sur *Mobian
    Trikie* et *Raspberry Pi OS Bookworm*. Ça devrais marcher pareil sur
    tout autre dérivé de *Debian*. Et sur la pluspart des autres
    distributions *Linux* avec des adaptations mineures. Pour les
    utilisateurs d\'*Apple* et *Window\$* je ne peut rien.

# A propos de ce document {#_a_propos_de_ce_document}

**Copyright:** © 2024 Henri GEIST \<<geist.henri@laposte.net>\>\
**Licence:** CC-BY-SA-4.0+

Ce document est une traduction. La dernière version en anglais est
toujours disponible sur [codeberg](https://codeberg.org/Henri_GEIST/OnlyKey_hardware_token_HowTo/src/branch/master/OnlyKey_hardware_token_HowTo_for_Debian_like.adoc).

Vous pouvez trouver les belles versions *PDF*, *HTML*, *DocBook* et
*Markdown* sur :

<https://codeberg.org/Henri_GEIST/OnlyKey_hardware_token_HowTo/releases>

Et si vous trouvez quoi que ce soit de faux, peu claire ou manquant
n'hésitez pas a poster un ticket sur :

<https://codeberg.org/Henri_GEIST/OnlyKey_hardware_token_HowTo/issues>

# Configuration de la *OnlyKey* elle-même {#_configuration_de_la_onlykey_elle_même}

## Utilisez un air-gap {#_utilisez_un_air_gap}

Vous êtes sur le point de configurer une *OnlyKey*, un token matériel en
vue de protéger vos clef privées et éviter de les mettre en danger sur
vos ordinateurs de bureau, portables et téléphones mobiles.

Il pourrait être sage de ne pas la configurer, créer et stocker vos clef
privées sur un ordinateur connecté au réseau pour les injecter dans
votre *OnlyKey*. Cela ruinerais une partie de l'objectif.

Donc je vous recommande de faire tout le travair de configuration de
votre *OnlyKey* sur un air-gap
(<https://fr.wikipedia.org/wiki/Air_gap>).

Une bonne solution pour un air-gap pas cher peut être une *Raspberry Pi
Zero*. La première version sans Wifi ni Bluetooth. Mais il existe des
tas d'autres solutions.

Pour procéder :

1.  Configurez un *air-gap*.
2.  Installez y les pré requis mentionner dans la section ci-dessous.
3.  Installez y tout ce que vous pensez qui pourrais vous être utiles.
4.  **Puis ne connectez plus jamais votre air-gap directement ou
    indirectement au reséau. Peut importe la raison.**
5.  Passez à la suite du tutoriel.

## Pré requis {#_pré_requis}

Pour commence il vous faut de véritable dès à six faces standard pour
disposer la meilleur et la moins chère des source d'entropie. Une
imprimante configuré et en état de marche pour imprimer les copies
offline de vos clefs sous forme de QR codes. Et un appareil photo ou un
scanner configurer pour tester l'import des QR codes que vous
imprimerez.

Ensuite pour configurer votre *OnlyKey* vous aurez besoins d'installer
les outils suivant et tapant :

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

> Note :
Ces instructions d'installation ne sont pas identiques à celles de la
Documentation officielle d\'*OnlyKey*. Sous *Debian* il faut utiliser
*pipx* au lieu de *pip* et des packages `apt`, `pipx` et `npm`
supplémentaires sont nécessaire pour se tutoriel.

Puis configurer quelques règles `udev` pour rendre voter *OnlyKey*
accessible aux utilisateurs normaux.

``` shell
[ -f /etc/udev/rules.d/49-onlykey.rules ] ||
wget https://raw.githubusercontent.com/trustcrypto/trustcrypto.github.io/pages/49-onlykey.rules &&
sudo mv 49-onlykey.rules /etc/udev/rules.d/
```

En option, si vous le désiré et seulement si vous êtes sur une
architecture *amd64*, vous pouvez installer l'interface graphique en
tapant :

``` shell
wget https://github.com/trustcrypto/OnlyKey-App/releases/download/v5.5.0/OnlyKey_5.5.0_amd64.deb
sudo apt install ./OnlyKey_5.5.0_amd64.deb
```

## Préparez de bons passphrase et codes pin {#_préparez_de_bons_passphrase_et_codes_pin}

Il vous faut choisir des codes pin et passphrase extrêmement forts :

1.  Très dur à deviner pour quelqu'un qui en sait long sur vous.
2.  Très dur à attaquer par force brute par des ordinateurs puissants.
3.  Facile à mémoriser pour vous car :
    -   Si vous les perdez, vous perdez avec tout ce qu'ils protègent.
    -   Vous aurez besoin de les garder dans vos tête sans jamais les
        écrire.

### Créez vos codes pin {#_créez_vos_codes_pin}

Les *OnlyKey* ont besoin de trois codes pin :

Premier compte

:   Jetez simplement dix fois votre dé pour avoir un code à dix
    chiffres. Comme vous le taperez tous les jours vous n'aurez pas de
    problème à le mémoriser rapidement. Quoi que vous obteniez.

Deuxième compte

:   Comme vous risquez de l'utiliser moins souvent, afin de vous en
    souvenir, ne jetez le dé qu'une fois de plus et reprenez le code pin
    de votre premier compte en changeant juste un des chiffre.

Code d'auto destruction

:   Pas besoin du même niveau de sécurité pour celui là. Il ne donne
    accès à rien. Et vous ne l'utiliserez peut être jamais. Choisissez
    juste sept chiffres que vous mémoriserez facilement. Assurez vous
    seulement qu'ils soient suffisamment différent des deux autres code
    pour ne pas le taper par erreur.

### Créez une passephrase {#_créez_une_passephrase}

Un petit dessin vaut mieux qu'un long discours. Regardez ceci
<https://xkcd.com/936/> pour comprendre pourquoi je vous recommande la
méthode ci-dessous.

Vous trouverez une liste de mots indexé par les résultats de cinq jets
de dès à six faces ici :
<https://github.com/mbelivo/diceware-wordlists-fr/blob/master/wordlist_fr_5d.txt>

Pour les non francophones il existe sur le net des listes dans d'autres
langues.

Jetez les dès pour sélectionner le premier mot de votre passeprrase.
Puis recommencer pour le mot suivant. Je vous recommande de choisir au
moins huit mots de cette façon. Cela représente un peu plus de 103 bits
d'entropie. Si vous êtes vraiment paranoïaque vous pouvez prendre dix
mots pour 129 bits d'entropie. L'entropie maximal possible en utilisant
l'algorithme SHA-256 est de 256 bits donc il ne peut servir à rien de
choisir plus de vingts mots.

Maintenant, comme l'un des intérêt d'une *OnlyKey* est de vous éviter de
devoir taper souvent votre passephrase :

1.  N'ayez pas peur d'avoir une passephrase long à taper. Vous ne le
    ferez presque jamais.

2.  Pour ne pas l'oublier, prenez l'habitude de la répéter dans votre
    tête comme un mantra à chaque fois que vous tapez votre code pin.

## Effacement complet {#_effacement_complet}

Cela permet de repartir de zéro.

> Note :
Ce n'est pas nécessaire. Vous pouvez suivre ce tutoriel tout en gardant
ce qui se trouve déjà dans votre *OnlyKey*.

> ATTENTION :
Assurez vous d'avoir une copie de toute donné importante que vous allez
effacer par cette opération.

Branchez la *OnlyKey* :

-   Entrez le code d'auto destruction;

-   Ou entres dix fois de suite n'importe quel code invalide.

## Initialisation d'une *OnlyKey* vide {#_initialisation_dune_onlykey_vide}

> Note :
Cela ne marche et n'est utile que si la *OnlyKey* est bien vide. Si ce
n'est pas le cas passez directement à l'étape suivante.

Branchez votre *OnlyKey* vide, lancez la commande ci-dessous et suivez
les instructions.

``` shell
onlykey-cli init
```

Puis débranchez votre *OnlyKey*.

## Passage en mode configuration {#_passage_en_mode_configuration}

La moitié des configurations ci dessous nécessite d'être en mode
`config`. Dans ce mode vous pouvez changer des paramètre nécessitant des
précautions particulières. Ils ne devrait pas êtres accessibles
uniquement par ce que votre *OnlyKey* est branché et déverrouillé.

Pour entrer en mode `config` :

1.  Branchez votre *OnlyKey*.
2.  Déverrouiller la via votre code pin.
3.  Pressez le boutton `6` pendant au moins cinq secondes.
4.  Relâchez le button `6`.
5.  Vérifiez que la LED de la *OnlyKey* c'est éteinte.
6.  Retapez votre code pin.
7.  Vérifiez que la LED de la *OnlyKey* clignote en rouge.

La sortie du mode `config` à lieu lorsque la *OnlyKey* est débranchée.

## Configuration de la passphrase de backup {#_configuration_de_la_passphrase_de_backup}

### Configuration {#_configuration}

Si vous voulez pouvoir extraire un backup de votre *OnlyKey* il vous
faut définir une passphrase de backup. Mais ce n'est pas forcément une
bonne idée.

Raisons de configurer une passphrase de backup

:   Vous voulez utiliser les fonctionnalités *FIDO2* et/ou des clefs
    généré en interne de votre *OnlyKey* et pouvoir les dupliquer dans
    une autre *OnlyKey*. Mais il vaut mieux éviter de ce retrouver
    coincé à avoir besoin de cela. Vous seriez prisonnier de la solution
    *OnlyKey* sans échappatoires.

Raison de ne pas configurer de passphrase de backup

:   Avoir un token hardware dont rien ne peut être exfiltrer d'aucune
    façon.

Si vous voulez vraiment faire ça, la version actuelle du `onlykey-cli`,
(v1.2.10 pendant que j'écris ces lignes) ne dispose pas de cette
fonction. Donc il faut d'abords ajouter après la ligne **403** du
fichier
`$HOME/.local/pipx/venvs/onlykey/lib/python3.11/site-packages/onlykey/cli.py`
ces deux lignes :

                    elif sys.argv[2] == 'BACKUP':
                        slot_id = 131

Juste après les lignes :

                    elif sys.argv[2] == 'HMAC2':
                        slot_id = 129

> ATTENTION :
En *Python* le nombre d'espace en début de lignes **doit** être
resppecté.

> Note :
En fonction de la version de *Python* le chemin du fichier peut varier.

Puis sauvegarder la modification et tapez :

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

### Verrouillage {#_verrouillage}

> ATTENTION :
Vous ne pourrez plus changez d'avis après coup. Cette opération est
définitive jusqu'au prochaine effacement complet de la *OnlyKey*.

Si vous voulez empêcher que qui que ce soit pouvant accéder à votre
*OnlyKey* lorsqu'elle est déverrouiller puisse en faire un backup pour
lui même. Vous devez verrouiller la passphrase de backup.

Si vous n'avez pas encore configurer de passpharse aucun backup ne sera
plus possible. Si vous en avez déjà configuré une votre opposant ne
pourra plus la changer et s'il ne la connais pas il ne pourra faire un
backup mais pas s'en servir.

``` shell
onlykey-cli backupkeymode 1
```

## Emulation clavier interne à l\'*OnlyKey* {#_emulation_clavier_interne_à_lonlykey}

Chaque fois que votre *OnlyKey* doit taper quelque chose, quand vous
utilisez la fonction de backup ou le manager de mots de passe par
exemple, votre *OnlyKey* ce comporte comme un clavier avec un agent
interne qui tape dessus. Pour que cela marche la disposition de ce
clavier virtuel **doit** correspondre à la configuration clavier de
votre *OS* (QWERTY, AZERTY, DVORAK, BEPO, ...​). Et l'agent interne doit
taper a une vitesse que votre ordinateur peu suivre.

### Disposition {#_disposition}

Selectionné le `KEYBOARD_LAYOUT` correspondant à votre système
ci-dessous :

| KEYBOARD_LAYOUT | Description     |
|--------------|-------------------|
| 1            | USA_ENGLISH       |
| 2            | CANADIAN_FRENCH   |
| 3            | CANADIAN_MULTILINGUAL |
| 4            | DANISH            |
| 5            | FINNISH           |
| 6            | FRENCH            |
| 7            | FRENCH_BELGIAN    |
| 8            | FRENCH_SWISS      |
| 9            | GERMAN            |
| 10           | GERMAN_MAC        |
| 11           | GERMAN_SWISS      |
| 12           | ICELANDIC         |
| 13           | IRISH             |
| 14           | ITALIAN           |
| 15           | NORWEGIAN         |
| 16           | PORTUGUESE        |
| 17           | PORTUGUESE_BRAZILIAN |
| 18           | SPANISH           |
| 19           | SPANISH_LATIN_AMERICA |
| 20           | SWEDISH           |
| 21           | TURKISH           |
| 22           | UNITED_KINGDOM    |
| 23           | US_INTERNATIONAL  |
| 24           | CZECH             |
| 25           | SERBIAN_LATIN_ONLY |
| 26           | HUNGARIAN         |
| 27           | DANISH MAC        |
| 28           | US_DVORAK         |

Puis tapez :

``` shell
onlykey-cli keylayout $KEYBOARD_LAYOUT
```

> Note :
Si comme pour moi, votre disposition de clavier n'est pas dans la liste
et/ou n'est pas fréquente au tour de vous et que vous voulez utiliser
votre *OnlyKey* sur d'autres ordinateurs autours de vous. Alors vous
devrez aussi suivre les instruction du chapitre [Adaptation a la
disposition clavier de
l'OnlyKey](#_adaptation_a_la_disposition_clavier_de_lonlykey).

### Vitesse {#_vitesse}

Enfin sélectionnez une valeur de `KEYBOARD_SPEED` entre `1` et `10` :

| KEYBOARD_SPEED | Comment                                             |
|-------------|--------------------------------------------------------|
| 1           | Seulement pour utiliser sur de lente carte uC 8 bits.  |
| 4           | Valeur par défaut. (mais terriblement lente)           |
| 7           | Maximum supporté par ma carte *Raspberry PI Zero*.     |
| 9           | Maximum supporté par mon portable *Intel I5*.          |

Trouvez la valeur qui vous convient :

``` shell
onlykey-cli keytypespeed $KEYBOARD_SPEED
```

## Configurez le challenge GPG/SSH {#_configurez_le_challenge_gpgssh}

Pour acquitter les challenge *GPG* ou *SSH* en n'utilisant qu'un unique
bouton au lieu de trois boutons aléatoires à chaque fois, tapez :

``` shell
onlykey-cli storedkeymode  1
onlykey-cli derivedkeymode 1
```

> Note :
Ceci est nécessaire si vous voulez utiliser les agent *SSH* et *GPG* en
tant que *daemons*. Mais dans ce cas vous ne pouvez être certain de la
requête qui déclanche le challenge.

Si vous préférez malgré tout les challenges avec trois bouton aléatoire,
tapez :

``` shell
onlykey-cli storedkeymode  0
onlykey-cli derivedkeymode 0
```

## Import de clefs *GPG* {#_import_de_clefs_gpg}

### Trouvez les clefs *GPG* à importer {#_trouvez_les_clefs_gpg_à_importer}

D'abord vous avez besoin de clefs *GPG* à importer. Vous en avez
peut-être déjà et pouvez en obtenir la liste avec la commande :

``` shell
gpg --list-secret-keys
```

Si vous n'en avez pas, vous pouvez en créer avec la commande :

``` shell
gpg --expert --full-generate-key --pinentry-mode loopback
```

Puis répondes aux questions :

| Sujet                             | Réponse                           |
|-----------------------------------|-----------------------------------|
| Kind of key                       | \(9\) ECC and ECC                 |
| Elliptic curve                    | \(1\) Curve 25519                 |
| Key expiration                    | Aussi longtemps que vous voulez ou jamais |
| Name                              | Prénom NOM                        |
| E-mail                            | <votre.addresse@email.com>        |
| Comment                           | D'habitude rien, mais ce que vous voulez |

Si vous avez déjà des clefs mais elle ne sont pas au formet `ed25519` il
est temps de :

1.  Créer de nouvelles clefs;
2.  Les signer avec vos anciennes clefs;
3.  Publier leur parties publiques sur un serveur de clefs et/ou vers
    vos correspondants;
4.  Révoquer les anciennes clefs et arrêter de les utiliser.

### Export des clefs *GPG* {#_export_des_clefs_gpg}

Choisissez le jeux de clefs que vous voulez utiliser dans la liste de
vos clefs privées et récupérez les 40 caractères hexadécimal de son
fingerprint et tapez :

``` shell
GPG_FINGERPRINT="le figerprint que vous venez de selectionner"

gpg --export $GPG_FINGERPRINT > $GPG_FINGERPRINT.pub
gpg --export-secret-keys --pinentry-mode loopback $GPG_FINGERPRINT > $GPG_FINGERPRINT.priv
```

> Note :
La deuxième commande va demander votre passphrase mais le résultat
restera quand même protégé par la passphrase.

### Sauvegardez vos clefs *GPG* offline {#_sauvegardez_vos_clefs_gpg_offline}

Si vous faites tout cela sur un air-gap (voir le chapitre [Utilisez un
air-gap](#_utilisez_un_air_gap)), que vous ne le connecterez plus ni
directement ni indirectement au réseau et que vous le stockez en
sécurité, cet air-gap compte comme une copie offline.

Mais de toute façon c'est toujours mieux d'avoir des copies papier.
Étonnamment le papier est un média très résistant au temps comparé aux
technologies numériques modernes. Il tombe rarement en panne. Donc pour
obtenir une version *PDF* imprimable tapez :

``` shell
GPG_FINGERPRINT="Le même firgerprint que juste au dessus"

qrencode -l M --8bit --output $GPG_FINGERPRINT.pub.png < $GPG_FINGERPRINT.pub
paperkey --output-type=raw < $GPG_FINGERPRINT.priv | qrencode -l H --8bit --output $GPG_FINGERPRINT.priv.png
asciidoctor-pdf -o $GPG_FINGERPRINT.pdf - << EOF
== Partie lisible par un humain
GPG version: $(gpg --version | head -n 1) +
gpg --export-secret-keys $GPG_FINGERPRINT | paperkey
++++
$(paperkey < $GPG_FINGERPRINT.priv)
++++
<<<
== Clefs publiques et privées lisible par ordinateur
image::$GPG_FINGERPRINT.pub.png[title=gpg --export $GPG_FINGERPRINT by: $(gpg --version | head -n 1)]
image::$GPG_FINGERPRINT.priv.png[title=gpg --export-secret-keys $GPG_FINGERPRINT | paperkey --output-type=raw]
EOF
```

Puis imprimez le résultat recto-verso pour avoir le tout sur une seule
page. Et gardez le en lieu sûr. Et pour plus de sûreté, faites d'autres
copies que vous confirez à des proches en qui vous avez confiance pour
les conserver longtemps. Cela vous évitera de tout prendre s'il y a le
feu ou un vol chez vous.

> Note :
Même la version papier reste protégée par votre passphrase. Vos proches
ne pourrons donc pas l'utiliser eux mêmes.

### Vérifier que vos sauvegarde *GPG* imprimé sont bonnes {#_vérifier_que_vos_sauvegarde_gpg_imprimé_sont_bonnes}

Les backup non vérifié vous trahissent toujours au pire moment. Quand
vous en avez absolument besoin.

Commences par scanner ou prendre des photos des QR codes de vos clef
publiques et privées. Puis enregistrez les sous les noms
`private_GPG_QR_code.jpg` et `public_GPG_QR_code.jpg`.

Ensuite vérifiez que vous pouvez reconstruire vos clefs privées à la
section [Export des clefs ](#_export_des_clefs_gpg) en tapant :

``` shell
zbarimg --raw -Sbinary public_GPG_QR_code.jpg > public.gpg
zbarimg --raw -Sbinary private_GPG_QR_code.jpg | paperkey --pubring public.gpg > private.gpg
diff private.gpg $GPG_FINGERPRINT.priv
```

## Flashez les clefs *GPG* dans votre *OnlyKey* {#_flashez_les_clefs_gpg_dans_votre_onlykey}

Conservez le `$GPG_FINGERPRINT`, choisissez deux slots vide pour
`$GPG_SIGN_SLOT` et `GPG_DECIPHER_SLOT` dans la plage `ECC1` .. `ECC16`
de la *OnlyKey* pour y flasher vos clefs et des `$GPG_SIGN_LABEL` des
`$GPG_DECIPHER_LABEL` pour vous souvenir de ce que vous avez mis où plus
tard.

> Note :
Chaque label peut contenir un maximum de 16 caractères ASCII.

Puis tapez :

``` shell
GPG_FINGERPRINT="Le même fingerprint que vous utilsez depuis le début."
GPG_SIGN_SLOT="Quelque chose dans la plage ECC1 .. ECC16"
GPG_DECIPHER_SLOT="Quelque chose d'autre dans la même plage"
GPG_SIGN_LABEL="GPG Singing"
GPG_DECIPHER_LABEL="GPG decipher"

extract_gpg_keys.js < $GPG_FINGERPRINT.priv |
awk -F ':' "/sign/ { system (\"onlykey-cli setkey $GPG_SIGN_SLOT x s\"\$2) };
        /decipher/ { system (\"onlykey-cli setkey $GPG_DECIPHER_SLOT x d\"\$2) }"

onlykey-cli setkey $GPG_SIGN_SLOT label "$GPG_SIGN_LABEL"
onlykey-cli setkey $GPG_DECIPHER_SLOT label "$GPG_DECIPHER_LABEL"
```

## Import de clefs *SSH* {#_import_de_clefs_ssh}

> Note :
Si vous avez déjà importé une clef de signature *GPG* à l'étape
précédent, vous pouvez choisir de l'utiliser aussi pour *SSH* et passer
directement à la section suivante : Vermouler vos écran et *OnlyKey*
avec un bouton. Si vous voulez importez une clef *SSH* dédié lisez cette
section.

### Trouvez une clef *SSH* à importer {#_trouvez_une_clef_ssh_à_importer}

Pour commencer il vous faut une clef privé *SSH* à importer. Si vous en
avez déjà, elles se trouvent habituellement dans votre dossier
`$HOME/.ssh/`. Et vous en avez peut-être déjà une nommée `id_ed25519`.

Si vous n'en avez pas, c'est le moment d'en créer une en tapant :

``` shell
ssh-keygen -t ed25519
```

Puis suivez les instructions. Si vous choisissez les valeurs par défaut
cela créera deux fichier de clefs, `$HOME/.ssh/id_ed25519` pour la
partie privée et `$HOME/.ssh/id_ed25519.pub` pour la partie publique.

Maintenant sélectionnez le fichier de clef privé au quel on se réfèrera
dans les commandes a venir par `SSH_KEY_FILE`.

### Sauvegeradez vous clefs *SSH* offline {#_sauvegeradez_vous_clefs_ssh_offline}

Pour les même raison qu'au chapitre [Sauvegardez vos clefs
offline](#_sauvegardez_vos_clefs_gpg_offline), faite des copies papier
de vos clefs *SSH*. Pour cela tapez :

``` shell
SSH_KEY_FILE="Le chemin du fichier contenant votre clef privée."

qrencode -l H --8bit --output private_SSH_key.png < $SSH_KEY_FILE
asciidoctor-pdf -o private_SSH_key.pdf - << EOF
== Clef _SSH_ privée lisible par un humain
++++
$(cat $SSH_KEY_FILE)
++++
== Clef _SSH_ privée lisible par un ordinateur
image::private_SSH_key.png[title=$SSH_KEY_FILE]
EOF
```

Puis imprimez le *PDF* que vous venez de créer, gardez le en lieu sûr et
faites en des copies a donner à des gens en qui vous avez confiance pour
les garder en lieu sûr pour vous.

### Vérifiez que vos backup sont récupérables {#_vérifiez_que_vos_backup_sont_récupérables}

D'abord scannez ou prenez une photo du QR code de votre clef *SSH*. Et
sauvegardes la en tant que `SSH_keys_QR_code.jpg`. Puis tapez :

``` shell
zbarimg --raw -Sbinary SSH_keys_QR_code.jpg > SSH_keys_from_QR_code.txt
diff SSH_keys_from_QR_code.txt $SSH_KEY_FILE
```

### Flashez la clef *SSH* dans votre *OnlyKey* {#_flashez_la_clef_ssh_dans_votre_onlykey}

Choisissez un `$SSH_SLOT` entre `ECC1` et `ECC2` encore libre, un
fichier `$SSH_KEY_FILE` à charger dans ce slot et un `$SSH_KEY_LABEL`
pour le nommer. Puis tapez :

> Note :
Chaque label contient au maximum 16 caractères *ASCII*.

``` shell
SSH_KEY_FILE="Le même fichier de clef privé que précédemment."
SSH_SLOT="Le slot que vous venez de choisir"
SSH_KEY_LABEL="SSH key"

onlykey-cli setkey $SSH_SLOT x s "$(keysec info < $SSH_KEY_FILE | sed -n '/priv:/{:a;n;/pub:/b;p;ba}' | tr -d ' :\n')"
onlykey-cli setkey $SSH_SLOT label "$SSH_KEY_LABEL"
```

## Verrouiller vos écran et *OnlyKey* avec un bouton {#_verrouiller_vos_écran_et_onlykey_avec_un_bouton}

Choisissez un bouton entre `1` et `6` de votre *OnlyKey* pour devenir le
`$LOCK_BUTTON`. Ou choisissez `0` pour ne pas avoir de `$LOCK_BUTTON`.
Et tapez :

``` shell
onlykey-cli lockbutton $LOCK_BUTTON
```

Maintenant à chaque fois que vous touchez ce bouton, votre *OnlyKey* et
votre écran ce verrouillerons.

> Note :
Le bouton choisi ne sera plus capable de servir des logins et mot de
passe tant qu'il aura cette fonction.

## Réglez le timeout avant verrouillage {#_réglez_le_timeout_avant_verrouillage}

Choisissez un `$TIMEOUT` entre `1` et `255` minutes ou `0` pour
désactiver la fonction et tapez :

``` shell
onlykey-cli idletimeout $TIMEOUT
```

Maintenant, votre *OnlyKey* rebootera d'elle même et se verrouillera
après ce temps d'inactivité.

## Réglez la luminosité de la LED {#_réglez_la_luminosité_de_la_led}

Choisissez un `$BRIGHTNESS` entre `1` et `10` du plus sombre au plus
brillant et tapez :

``` shell
onlykey-cli ledbrightness $BRIGHTNESS
```

# Configuration de l'ordinateur {#_configuration_de_lordinateur}

> Note :
Ceci n'a pas besoin d'être fait sur le même ordinateur que celui que
vous avez utiliser pour configurer votre *OnlyKey*. De plus, je vous
recommande de configurer votre *OnlyKey* sur un air-gap différent de
l'ordinateur sur lequel vous allez utiliser votre *OnlyKey*. Voir le
chapitre [Utilisez un air-gap](#_utilisez_un_air_gap).

## Pré requis {#_pré_requis_2}

Commencez par installer les agents *OnlyKey* *SSH* et *GPG*, leurs
dépendances et des outils de base.

``` shell
sudo apt install pipx grep sed at wget libusb-1.0-0-dev libudev-dev openssh-client gnupg zbar-tools
pipx install --system-site-packages onlykey-agent
pipx install --system-site-packages onlykey
. $HOME/.profile
```

> Note :
Ceci diffèrent légèrement des instructions de la documentation officiel.
Sous *Debian* il faut `pipx` au lieu de `pip` et plus de packages sont
nécessaire pour suivre ce tutoriel.

Puis configurez des règles *udev* pour rendre votre *OnlyKey* accessible
aux utilisateurs normaux.

``` shell
[ -f /etc/udev/rules.d/49-onlykey.rules ] ||
wget https://raw.githubusercontent.com/trustcrypto/trustcrypto.github.io/pages/49-onlykey.rules &&
sudo mv 49-onlykey.rules /etc/udev/rules.d/
```

En option, si vous le désiré et seulement si vous êtes sur une
architecture *amd64*, vous pouvez installer l'interface graphique en
tapant :

``` shell
wget https://github.com/trustcrypto/OnlyKey-App/releases/download/v5.5.0/OnlyKey_5.5.0_amd64.deb
sudo apt install ./OnlyKey_5.5.0_amd64.deb
```

## Verrouillage d'écran à la déconnexion {#_verrouillage_décran_à_la_déconnexion}

Si vous voulez verrouiller votre écran à chaque fois que vous débranchez
votre *OnlyKey*, vous pouvez ajouter la ligne suivante à votre fichier
`/etc/udev/rules.d/49-onlykey.rules` :

    ACTION=="remove", SUBSYSTEM=="input", ATTRS{idVendor}=="1d50", ATTRS{idProduct}=="60fc", RUN+="/bin/su USER_NAME -c '/usr/bin/xdg-screensaver lock'"

En replaçant `USER_NAME` par le nom de l'utilisateur de votre session
*X*. Si vous voulez configurer cela pour plusieurs utilisateurs, ajoutez
une ligne par utilisateur.

> Note :
Si vous avez initialiser le timeout après inactivité de votre *OnlyKey*,
Votre écran sera aussi verrouiller lorsque votre *OnlyKey* se
verrouillera d'elle même.

## agent *GPG* *OnlyKey* {#_agent_gpg_onlykey}

### Initialisez l'agent *GPG OnlyKey* {#_initialisez_lagent_gpg_onlykey}

Commencez par récupérer la partie publique des clefs *GPG* que vous avez
chargé dans votre *OnlyKey* au chapitre [Trouvez les clefs à
importer](#_trouvez_les_clefs_gpg_à_importer).

Vous pouvez les retrouver depuis n'importe quelle source :

1.  Votre ordinateur si elles sont déjà dans votre trousseau de clefs.
2.  Le QR code de backup que vous avez fait lors de la générations de
    vos clefs.
3.  N'importe qui ou n'importe quel serveur de clefs à qui vous les avez
    transmises.

Si elle sont déjà dans votre trousseau de clefs tapez simplement :

``` shell
gpg --export $GPG_FINGERPRINT > $GPG_FINGERPRINT.pub
```

Si vous les avez sur QR code scannez le ou prenez le en photo et nommer
le fichier image `$GPG_FINGERPRINT.jpg` puis tapez :

``` shell
zbarimg --raw -Sbinary $GPG_FINGERPRINT.jpg | gpg --enarmor |
sed 's/ARMORED FILE/PUBLIC KEY BLOCK/' > $GPG_FINGERPRINT.pub
```

Puis choisissez un dossier comme `$GNUPGHOME` pour y stocker la
configuration. Habituellement `$HOME/.gnupg/onlykey`. Ensuite souvenez
vous des `$GPG_DECIPHER_SLOT` et `$GPG_SIGN_SLOT` où vous avez placé
vous clef privèes dans votre *OnlyKey*. Si vous avez oublier mais que
vous y avez mis des labels vous pouvez les retrouver en tapant :

``` shell
onlykey-cli getkeylabels
```

Puis tapez :

``` shell
GPG_FINGERPRINT="Le finger print des clefs que vous voulez utiliser"
GPG_DECIPHER_SLOT="Le slot entre ECC1 et ECC16 de la clef de déchiffrement"
GPG_SIGN_SLOT="Le slot entre ECC1 et ECC16 de la clef de signature"
GNUPGHOME="quelque chose comme $HOME/.gnupg/onlykey"

onlykey-gpg init "$(gpg --show-keys $GPG_FINGERPRINT.pub | grep uid | sed 's/^uid *//1')" \
              -e ed25519 \
             -dk $GPG_DECIPHER_SLOT \
             -sk $GPG_SIGN_SLOT \
              -i $GPG_FINGERPRINT.pub \
       --homedir $GNUPGHOME
```

> Note :
En cas d'échec, pour réessayer il faut d'abord effacer le dossier
`$GNUPGHOME` que vous venez de créer.

> ATTENTION :
Mais **VÉRIFIEZ SOIGNEUSEMENT CE QUE VOUS ÊTES SUR LE POINT D'EFFACER.**
Si vous effacez par erreur `$HOME/.gnupg` en fonction de ce qu'il
contient déjà ça peut devenir une très grosse perte.

### Utiliser de *GPG* via *OnlyKey* dans le *shell* courrant {#_utiliser_de_gpg_via_onlykey_dans_le_shell_courrant}

Si vous voulez que *GPG* cherche dans votre nouveau dossier `$GNUPGHOME`
au lieu du `$HOME/.gnupg` et donc utilise votre *OnlyKey* plutôt que vos
trousseaux de clef sur disque vous devez exporter la variable
`$GNUPGHOME` tel que vous venez de la définir.

``` shell
export GNUPGHOME="le chemin que que vous venez juste de choisir"
```

À partir de là, votre *OnlyKey* sera requise et utilisée pour toute vos
activités de signature et déchiffrement dans le terminal courant et ces
descendants. Votre *OnlyKey* clignotera en violet ou turquoise lors des
requêtes de signature et déchiffrement et attendra que vous touchiez
l'un de ces bouton pour agir.

### Utiliser l'agent *GPG* *OnlyKey* par défaut {#_utiliser_lagent_gpg_onlykey_par_défaut}

Si vous voulez que votre configuration devienne permanant dans tout les
contextes dès votre prochain login placez simplement cette ligne
d'export :

``` shell
export GNUPGHOME="Le chemin que vous avez choisi"
```

À la fin de votre fichier `$HOME/.profile` puis redémarre votre session.

## *OnlyKey* *SSH* agent {#_onlykey_ssh_agent}

D'abord, pour le reste de ce chapitre, rappelez vous le le `$SSH_SLOT`
que vous avez choisi. Cela peut être le slot où vous avez mis votre clef
*SSH* dédiée au chapitre [Flashez la clef dans votre
](#_flashez_la_clef_ssh_dans_votre_onlykey), ou le slot où vous avez mis
votre clef *GPG* de signature au chapitre [Flashez les clefs dans votre
](#_flashez_les_clefs_gpg_dans_votre_onlykey) si vous avez choisi
d'utiliser votre clef de signature *GPG* pour vous authentifier en
*SSH*.

Si vous avez oublier vous pouvez retrouver l'info en tapant :

``` shell
onlykey-cli getkeylabels
```

### Obtenir la clef publique *SSH* {#_obtenir_la_clef_publique_ssh}

Pour obtenir votre clef publique *SSH* a transmettre à tout les serveurs
auxquels vous souhaitez vous connecter tapez simplement :

``` shell
SSH_SLOT="Le slot ECCx contenant le clef à utiliser pour SSH"

onlykey-agent -sk $SSH_SLOT some.user@some.domaine
```

> Note :
Vous pouvez utiliser tout ce qui vous passe par la tête en lieu de
`some.user@some.domaine`. Cela n'a pas d'effet. C'est juste comme un
commentaire lorsque l'option `-sk $SSH_SLOT` est utilisée.

### Utiliser *SSH* via l\'*OnlyKey* dans le *shell* courrant {#_utiliser_ssh_via_lonlykey_dans_le_shell_courrant}

Pour que *SSH* utilise votre *OnlyKey* dans le *shell* courant et tout
ces sous-shell, tapez :

``` shell
SSH_SLOT="Le slot ECCx contenant votre clef SSH"

onlykey-agent -sk $SSH_SLOT -s foo
```

> Note :
L'argument `foo` n'a pas d'importance lorsqu'on utilise une clef
importée. Il est juste nécessaire qu'il existe.

### Utiliser votre *OnlyKey* par défaut pour *SSH* {#_utiliser_votre_onlykey_par_défaut_pour_ssh}

> Note :
J'ai prévu d'ajouter des explication pour les distribution sans
*Systemd* comme *Devuan* dès que je trouve comment faire.

Si vous voulez que votre *OnlyKey* soit utiliser par défaut dans tout
les contextes, vous devez configurer *Systemd* pour démarre l'agent *SSH
OnlyKey* au lieu de l'agent *SSH* standard. Commence par créer un
nouveau service utilisateur *Systemd* appelé `onlykey-ssh-agent`.

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

> ATTENTION :
Vous devez remplacer `$SSH_SLOT` à la fin de a dernière ligne par le
véritable nom du slot entre `ECC1` et `ECC16` contenant votre clef
*SSH*. La substitution n'est pas automatique ici.

> Note :
Vous devrez d'abord créer le dossier `$HOME/.config/systemd/user` si il
n'existe pas déjà.

Puis créez un nouvelle socket utilisateur *Systemd* `onlykey-ssh-agent`
pour ce service :

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

Ensuite démarrez les et faites les redémarrer à chaque reboot en tapant
:

``` shell
systemctl --user start onlykey-ssh-agent.service onlykey-ssh-agent.socket
systemctl --user enable onlykey-ssh-agent.service onlykey-ssh-agent.socket
```

Et maintenant ajoutes à votre `$HOME/.profile` du code pour configurer
et exporter la variable `$SSH_AUTH_SOCK` si ce n'est pas déjà fait à
chaque login. Cela ne doit pas écraser une valeur préexistante pour
permettre le forwarding d'agent.

``` shell
grep -q '^[^#]*SSH_AUTH_SOCK=.*/onlykey-agent/S.ssh' $HOME/.profile || cat << 'EOF' >> $HOME/.profile
if [ -z "$SSH_AUTH_SOCK" ]
then
    SSH_AUTH_SOCK=$(systemctl show --user --property=Listen onlykey-ssh-agent.socket | grep -o "/.*/onlykey-agent/S.ssh")
    export SSH_AUTH_SOCK
fi
EOF
```

Enfin, si le *gnome_keyring* est installer sur votre système, désactiver
le au moins pour *SSH* :

``` shell
[ -f $HOME/.config/autostart/gnome-keyring-ssh.desktop ] ||
mkdir -p $HOME/.config/autostart/ &&
cp /etc/xdg/autostart/gnome-keyring-ssh.desktop $HOME/.config/autostart/ &&
grep -q '^Hidden\s*=\s*true\(\s\+\|$\)' $HOME/.config/autostart/gnome-keyring-ssh.desktop ||
echo 'Hidden=true' >> $HOME/.config/autostart/gnome-keyring-ssh.desktop
```

Voilà tout est en place et va fonctionner dès votre prochain login.

## Forwarding de l'agent *GPG* à travers *SSH* {#_forwarding_de_lagent_gpg_à_travers_ssh}

### Chargement de la clef public sur le serveur {#_chargement_de_la_clef_public_sur_le_serveur}

Commencez par trouver le `$GPG_FINGERPRINT` de la clef *GPG* que vous
voulez utiliser pour cela. Pour ce faire, branchez votre *OnlyKey*
déverrouillez là, et tapez :

``` shell
gpg --list-secret-keys
```

puis importez sa partie publique sur le serveur sur le quel vous voulez
forwarder votre agent *GPG* en tapant :

``` shell
GPG_FINGERPRINT="Le fingerprint de la clef que vous avez choisi"
SSH_LOGIN="votre login ssh du genre 'user@server'"

gpg --armor --export $GPG_FINGERPRINT | ssh $SSH_LOGIN "bash --login -c 'gpg --import'"
```

> Note :
Il vous faut déjà avoir un compte *SSH* fonctionnel sur le serveur.

### Configuration de la machine locale {#_configuration_de_la_machine_locale}

Ensuite vous devez trouver le socket local de votre agent *GPG* de votre
utilisateur avec la commande :

    gpgconf --list-dir agent-socket

> Note :
Sur l'agent *GPG* classique on aurait du chercher
l\'\`agent-extra-socket\` pour éviter que la clef privé fuite. Mais avec
l\'*OnlyKey* la socket normal est déjà comme la socket `extra` et il n'y
a pas de socket `extra`

Puis, trouver la socket du serveur distant pour votre utilisateur avec
la commande :

``` shell
GPG_FINGERPRINT="Le fingerprint de la clef que vous avez choisi"
SSH_LOGIN="votre login SSH du genre 'user@server'"

gpg --armor --export $GPG_FINGERPRINT | ssh $USER_AT_SERVER "bash --login -c 'gpgconf --list-dir agent-socket'"
```

Enfin, ajoutez à votre `$HOME/.ssh/config` une règle de forwarding pour
votre serveur distant, en remplacent `THE_REMOTE_HOSTNAME` par le
hostname du serveur auquel vous voulez vous connecter,
`THE_REMOTE_HOST_GPG_AGENT_NORMAL_SOCKET` et
`THE_LOCAL_GPG_AGENT_SOCKET` par les chemin des socket que vous venez
juste de trouver ci-dessus :

`\$HOME/.ssh/config` :
``` conf
HOST THE_REMOTE_HOSTNAME
    StreamLocalBindUnlink yes
    RemoteForward THE_REMOTE_HOST_GPG_AGENT_NORMAL_SOCKET THE_LOCAL_GPG_AGENT_SOCKET
```

### Configure the remote server *SSH* deamon {#_configure_the_remote_server_ssh_deamon}

Pour finir, si vous disposez des privilèges administrateur sur le
serveur distant, ajoutez la ligne `StreamLocalBindUnlink yes` à son
`/etc/ssh/sshd_config` et lancez sur le serveur la commande :

``` shell
sudo sshd -t && sudo systemctl restart sshd
```

Si vous ne disposez pas des privilèges nécessaires, demander à
l'administrateur de le faire. Et si vous ne pouvez pas, alors vous serez
obliger à chaque foi de vous connecter deux fois à votre compte *SSH*
pour utiliser le forwarding d'agent *GPG*. La première foie juste pour
lancer la commande :

``` shell
rm $(gpgconf --list-dir agent-socket)
```

Puis déconnectez vous et reconnectez vous une seconde foie pour disposer
de forwarding d'agent *GPG*.

Maintenant vous pouvez utiliser *GPG* sur votre serveur distant tout en
gardant votre *OnlyKey* connecté sur votre machine locale.

## Adaptation a la disposition clavier de l\'*OnlyKey* {#_adaptation_a_la_disposition_clavier_de_lonlykey}

> Note :
Si la disposition clavier configuré dans votre *OnlyKey* correspond à la
disposition clavier configuré sur votre ordinateur vous pouvez passer
directement à la section suivante.

Sur *Xwindows* il est possible de configurer une disposition de clavier
différente pour chaque clavier. Alors même si vous utilisez une
disposition clavier différente de celle configuré dans votre *OnlyKey*
ou même une qui n'est pas disponible pour votre *OnlyKey* vous pouvez
configurer votre session *X* pour qu'elle s'y adapte.

### Méthode manuelle {#_méthode_manuelle}

Pour trouver l'id de votre clavier virtuel *OnlyKey*. Commencez par
connecter votre *OnlyKey* et tapez :

``` shell
xinput
```

Puis assignez y la disposition clavier correspondant à ce que vous avez
configurer dans votre *OnlyKey* :

-   \"us\" pour une disposition anglais US QWERTY standard
-   \"fr\" pour une disposition français AZERTY standard
-   et ainsi de suite ...​

En tapant :

``` shell
ONLYKEY_ID="L'id que vous venez juste de trouver avec la commande xinput"
ONLYKEY_KEYBOARD_LAYOUT="La disposition clavier configure dans votre OnlyKey"

setxkbmap -device $ONLYKEY_ID -layout $ONLYKEY_KEYBOARD_LAYOUT
```

### Méthod Plug & Play {#_méthod_plug_play}

Commencez par créer le script ci-dessous qui sera appelé à chaque
connexion de votre *OnlyKey*. Nommez le
`.$HOME/.local/bin/onlykey_set_layout.sh` et adaptez les variables
`ONLYKEY_KEYBOARD_LAYOUT` et `ONLYKEY_USER` a vos besoins.

`\$HOME/.local/bin/onlykey_set_layout.sh` :
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

Puis rendes le exécutable en tapant :

``` shell
chmod u+x $HOME/.local/bin/onlykey_set_layout.sh
```

Enfin, ajoutez la ligne ci-dessous à votre fichier
`/etc/udev/rules.d/49-onlykey.rules` pour exécuter le script à chaque
connexion de votre *OnlyKey*.

`/etc/udev/rules.d/49-onlykey.rules` :
``` conf
ACTION=="add", SUBSYSTEM=="input", ATTRS{idVendor}=="1d50", ATTRS{idProduct}=="60fc", RUN+="/usr/bin/at -M -f '/home/USER/.local/bin/onlykey_set_layout.sh' now"
```

Et remplacez la chaine `USER` par votre nom d'utilisateur *UNIX*. Vous
pouvez avoir plusieurs lignes de ce type pour chaque utilisateurs.

## Régler l'horloge interne de l\'*OnylKey* pour le *TOTP* {#_régler_lhorloge_interne_de_lonylkey_pour_le_totp}

Si vous envisagez d'utiliser la méthode *TOTP* comme deuxième facteur
avec votre *OnlyKey* vous devez mettre son horloge interne à l'heure à
chaque connexion. Pour cela ajoutez la ligne ci-dessous au fichier
`/etc/udev/rules.d/49-onlykey.rules` :

``` conf
SUBSYSTEMS=="usb", ATTRS{idVendor}=="1d50", ATTRS{idProduct}=="60fc", RUN+="/usr/local/bin/onlykey-cli settime"
KERNEL=="ttyACM*", ATTRS{idVendor}=="1d50", ATTRS{idProduct}=="60fc", RUN+="/usr/local/bin/onlykey-cli settime"
```
