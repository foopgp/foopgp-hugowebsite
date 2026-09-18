"""Build the foodjis communication assets: wordmark, banner, poster, kakemono.

The house rules, read off the existing files rather than invented:
  purple  #31264b   the ground of the foopgp banner
  orange  #ff8012   the two o's, and the pug's eyes
  white   #ffffff   the letters
  type    URW Gothic, the same drawing as the TeX Gyre Adventor of the foopgp
          logo, slanted here by hand as that logo's italic is.

Every drawing is in millimetres: one user unit is one millimetre, and the
`width`/`height` say mm, so a printer is given a size and not a guess.

Run it from anywhere; it writes beside itself:

    python3 resources/svg/build-foodjis.py

Then, for a printer or a browser that has never heard of URW Gothic, turn the
letters into curves -- once per file, and commit both:

    inkscape --export-type=svg --export-text-to-path \\
             --export-filename=foodjis_affiche_A3_fr_paths.svg \\
             foodjis_affiche_A3_fr.svg

The pug here is a copy of the application's own icon
(foodjis-android/icons/foodjis_logo_pug.svg). Refresh it with a plain `cp`
when the icon changes; it is the icon that is the original.
"""
import os
import re
import subprocess
import tempfile
import xml.etree.ElementTree as ET

SVG = "http://www.w3.org/2000/svg"
ET.register_namespace("", SVG)

# Everything is written beside this script, and read from beside it too.
OUT = os.path.dirname(os.path.abspath(__file__))
PUG = os.path.join(OUT, "foodjis_logo_pug.svg")
TMP = tempfile.mkdtemp(prefix="foodjis-")

PURPLE = "#31264b"
ORANGE = "#ff8012"
WHITE = "#ffffff"
FADED = "#c9c3d8"
FONT = "URW Gothic"
SLANT = -11
LINK = "https://foopgp.org/fr/solutions/pgp-id/"

LICENCE = (
    "Copyright 2026 Jean-Jacques Brucker "
    "(u4sRyUhEbNU5OwyLEjfSwaXAe_42.17-002.76) <jjbrucker@foopgp.org>\n"
    "  Copyright 2026 Mnêmê (u5001777236237.945e_43.30_005.38 claude-opus-5) "
    "<mneme@foopgp.org>\n"
    "  SPDX-License-Identifier: GPL-3.0-only"
)


def nested(path, x, y, side, ident):
    """Another drawing, placed whole with its own viewBox.

    Nested rather than copied path by path: the icon's groups carry
    transforms, and taking the paths alone once drew a small pug with its
    ears cut off.
    """
    root = ET.parse(path).getroot()
    holder = ET.Element("{%s}svg" % SVG, {
        "x": "%g" % x, "y": "%g" % y,
        "width": "%g" % side, "height": "%g" % side,
        "viewBox": root.get("viewBox", "0 0 250 250"),
        "id": ident,
    })
    for child in list(root):
        holder.append(child)
    return holder


def pug(x, y, side):
    return nested(PUG, x, y, side, "pug")


def qr(x, y, side, link=LINK):
    """A code to the page that explains, not to a file that will move."""
    out = os.path.join(TMP, "qr.svg")
    subprocess.run(["qrencode", "-t", "SVG", "-m", "2", "-l", "M",
                    "-o", out, link], check=True)
    return nested(out, x, y, side, "qr")


def wordmark(cx, base, size, anchor="middle", ji=False):
    """`foodjis`, the two o's in orange and the first one larger.

    As the foopgp logo does it: the two o's picked out, the first bigger than
    the second. Here the tail is `djis` and not `pgp`, which is the whole
    difference between the two applications -- and with [ji] the `ji` of
    djibian is picked out too, which is the variant JJB asked to see.

    The slant lives on the group, so it pivots on the baseline: put on the
    text itself it would shift the whole line sideways by a fifth of its
    height, and every position above would have to know that.
    """
    group = ET.Element("{%s}g" % SVG, {
        "transform": "translate(%g,%g) skewX(%g)" % (cx, base, SLANT),
        "id": "wordmark",
    })
    t = ET.SubElement(group, "{%s}text" % SVG, {
        "x": "0", "y": "0",
        "style": (
            "font-family:'%s';font-weight:500;font-size:%gpx;fill:%s;"
            "text-anchor:%s;letter-spacing:%gpx"
            % (FONT, size, WHITE, anchor, -size * 0.014)
        ),
    })
    big, small = size * 1.16, size * 0.905

    def span(text, **style):
        el = ET.SubElement(t, "{%s}tspan" % SVG)
        el.text = text
        if style:
            el.set("style", ";".join("%s:%s" % (k.replace("_", "-"), v)
                                     for k, v in style.items()))

    span("f")
    # The big o hangs a little below the line, as a larger circle does when
    # it is centred on the smaller letters rather than sat on the baseline.
    span("o", font_size="%gpx" % big, fill=ORANGE,
         baseline_shift="%gpx" % (-(big - size) * 0.42))
    span("o", font_size="%gpx" % small, fill=ORANGE)
    for letter in "djis":
        span(letter, fill=ORANGE if (ji and letter in "ji") else WHITE)
    return group


def line(x, y, text, size, fill=WHITE, anchor="start", weight=500, slant=0,
         family=FONT, spacing=0.0):
    el = ET.Element("{%s}text" % SVG, {
        "x": "0", "y": "0",
        "transform": "translate(%g,%g)%s" % (x, y, " skewX(%g)" % slant if slant else ""),
        "style": ("font-family:'%s';font-weight:%d;font-size:%gpx;fill:%s;"
                  "text-anchor:%s;letter-spacing:%gpx"
                  % (family, weight, size, fill, anchor, spacing)),
    })
    el.text = text
    return el


def slogan(cx, y, size):
    """« l'appli de vous en vie » — the pun wants the ear, not an explanation.

    `en vie` in orange says what it means (alive) while the ear hears `envie`.
    Colour rather than a bigger word: pointing at a joke is not telling it.
    """
    group = ET.Element("{%s}g" % SVG, {"id": "slogan"})
    t = ET.SubElement(group, "{%s}text" % SVG, {
        "x": "0", "y": "0",
        "transform": "translate(%g,%g) skewX(%g)" % (cx, y, SLANT),
        "style": ("font-family:'%s';font-weight:500;font-size:%gpx;fill:%s;"
                  "text-anchor:middle" % (FONT, size, WHITE)),
        # Or the renderer eats the space before the orange half and the pun
        # reads "vousen vie".
        "{http://www.w3.org/XML/1998/namespace}space": "preserve",
    })
    for text, colour in (("l'appli de vous ", WHITE), ("en vie", ORANGE)):
        el = ET.SubElement(t, "{%s}tspan" % SVG)
        el.text = text
        el.set("style", "fill:%s" % colour)
    return group


def page(width, height, comment, *children, ground=PURPLE):
    root = ET.Element("{%s}svg" % SVG, {
        "width": "%gmm" % width, "height": "%gmm" % height,
        "viewBox": "0 0 %g %g" % (width, height),
        "version": "1.1",
    })
    root.append(ET.Comment(" %s\n\n  %s " % (comment, LICENCE)))
    if ground:
        ET.SubElement(root, "{%s}rect" % SVG, {
            "x": "0", "y": "0", "width": "%g" % width, "height": "%g" % height,
            "style": "fill:%s" % ground, "id": "ground",
        })
    for c in children:
        if c is not None:
            root.append(c)
    return root


def write(name, root):
    xml = re.sub(r"><", ">\n<", ET.tostring(root, encoding="unicode"))
    open(os.path.join(OUT, name), "w", encoding="utf-8").write(
        '<?xml version="1.0" encoding="UTF-8"?>\n' + xml + "\n")
    print("écrit %s" % name)


# What the application gives the person holding the phone. Their side of it,
# not ours: no step numbers, no vocabulary they have not met yet.
PROMISES = [
    "Votre identité tient sur une clé, dans votre poche.",
    "Sans compte, sans serveur qui vous garde.",
    "La clé privée ne quitte jamais la carte.",
    "Vos proches vous certifient, personne d'autre.",
    "Sur papier, en QR : le secret survit au téléphone.",
]

os.makedirs(OUT, exist_ok=True)

# --- 1. the banner, the size of the foopgp one ----------------------------
write("foodjis_logo_banner.svg", page(
    61.9125, 15.875,
    "foodjis — the banner: the pug of the application, and its name",
    pug(0.8, 0.8, 14.2),
    wordmark(17.0, 11.6, 10.6, anchor="start"),
))

# --- 2. the name alone, for a page that brings its own ground ------------
write("foodjis_logo_wordmark.svg", page(
    46, 13,
    "foodjis — the name alone, no ground",
    wordmark(23, 10.4, 10.6),
    ground=None,
))

write("foodjis_logo_wordmark_ji.svg", page(
    46, 13,
    "foodjis — the variant: the two o's, and the ji of djibian, in orange",
    wordmark(23, 10.4, 10.6, ji=True),
    ground=None,
))

# --- 3. the poster, A3 upright -------------------------------------------
poster = [
    pug(98.5, 26, 100),
    wordmark(148.5, 176, 46),
    slogan(148.5, 210, 18),
]
for i, text in enumerate(PROMISES):
    poster.append(line(28, 262 + i * 17, "Ɉ", 12, fill=ORANGE, slant=SLANT))
    poster.append(line(41, 262 + i * 17, text, 9.2, fill=WHITE))
poster += [
    qr(30, 352, 44),
    line(84, 368, "foopgp.org", 13, fill=WHITE, slant=SLANT),
    line(84, 380, "l'identité numérique qui vous appartient", 8, fill=FADED),
    line(84, 391, "logiciel libre, GPL-3.0-only — association foopgp", 7, fill=FADED),
]
write("foodjis_affiche_A3_fr.svg", page(
    297, 420, "foodjis — the poster, A3 upright, in French", *poster))

# --- 4. the kakemono, 85 by 200 cm ---------------------------------------
# Read standing, from two or three metres: the top third carries the mark,
# the middle the sentence and the promises, the foot the code. Widths are
# counted rather than hoped for -- URW Gothic averages about half its size
# per character, and the longest promise is 51 of them.
kake = [
    pug(255, 130, 340),
    wordmark(425, 700, 150),
    slogan(425, 810, 56),
]
for i, text in enumerate(PROMISES):
    kake.append(line(105, 1010 + i * 88, "Ɉ", 44, fill=ORANGE, slant=SLANT))
    kake.append(line(160, 1010 + i * 88, text, 26, fill=WHITE))
kake += [
    qr(300, 1520, 250),
    line(425, 1830, "foopgp.org", 62, fill=WHITE, anchor="middle", slant=SLANT),
    line(425, 1880, "l'identité numérique qui vous appartient", 28,
         fill=FADED, anchor="middle"),
    line(425, 1950, "logiciel libre, GPL-3.0-only — association foopgp", 24,
         fill=FADED, anchor="middle"),
]
write("foodjis_kakemono_85x200_fr.svg", page(
    850, 2000, "foodjis — the roll-up, 85 by 200 cm, in French", *kake))
