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


def placed(path, x, y, side, ident):
    """Another drawing, put in a group that maps its viewBox into a box.

    A group with a transform rather than a nested `<svg>`: nesting is legal
    SVG and renders, but Inkscape leaves it out of the drawing it exports,
    which once cropped a poster's mark down to its name and lost the pug
    (2026-09-18). All the children come along, groups and their own
    transforms included -- taking the paths alone was the other way to lose
    the pug, ears first.
    """
    root = ET.parse(path).getroot()
    w, h = [float(v) for v in root.get("viewBox", "0 0 250 250").split()[2:]]
    scale = min(side / w, side / h)
    group = ET.Element("{%s}g" % SVG, {
        "transform": "translate(%.4f,%.4f) scale(%.6f)"
                     % (x + (side - w * scale) / 2, y + (side - h * scale) / 2, scale),
        "id": ident,
        # Clipped to the viewBox, because a viewBox clips and a group does
        # not: the application icon carries a purple rectangle and the word
        # "djibian" *outside* its box, invisible there and floating over the
        # stars here until this clip existed (2026-09-18).
        "clip-path": "url(#clip-%s)" % ident,
    })
    defs = ET.SubElement(group, "{%s}defs" % SVG)
    clip = ET.SubElement(defs, "{%s}clipPath" % SVG, {"id": "clip-%s" % ident})
    ET.SubElement(clip, "{%s}rect" % SVG, {
        "x": "0", "y": "0", "width": "%g" % w, "height": "%g" % h,
    })
    for child in list(root):
        group.append(child)
    return group


def pug(x, y, side):
    return placed(PUG, x, y, side, "pug")


def qr(x, y, side, link=LINK):
    """A code to the page that explains, not to a file that will move."""
    out = os.path.join(TMP, "qr.svg")
    subprocess.run(["qrencode", "-t", "SVG", "-m", "2", "-l", "M",
                    "-o", out, link], check=True)
    return placed(out, x, y, side, "qr")


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
            % (FONT, size, WHITE, anchor, -size * 0.055)
        ),
    })
    # Measured on the model (poster_french_foopgp.svg, the top mark exported
    # and looked at): the *first* o is the ordinary letter and the *second*
    # is the enlarged one -- not the other way round, which is how I drew it
    # first (JJB, 2026-09-18). And the tracking is tight enough that the
    # glyphs nearly touch.
    big = size * 1.28

    def span(text, **style):
        el = ET.SubElement(t, "{%s}tspan" % SVG)
        el.text = text
        if style:
            el.set("style", ";".join("%s:%s" % (k.replace("_", "-"), v)
                                     for k, v in style.items()))

    span("f")
    span("o", fill=ORANGE)
    # The big one hangs a little below the line, as a larger circle does when
    # it is centred on the letters rather than sat on the baseline.
    span("o", font_size="%gpx" % big, fill=ORANGE,
         baseline_shift="%gpx" % (-(big - size) * 0.30))
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

# --- 2. the name alone, on the house ground ------------------------------
# With the ground and not on nothing: white letters on a transparent square
# vanish the moment somebody drops them on a white page (JJB, 2026-09-18).
write("foodjis_logo_wordmark.svg", page(
    46, 13,
    "foodjis — the name alone, on the house purple",
    wordmark(23, 10.4, 10.6),
))

write("foodjis_logo_wordmark_ji.svg", page(
    46, 13,
    "foodjis — the variant: the two o's, and the ji of djibian, in orange",
    wordmark(23, 10.4, 10.6, ji=True),
))

# --- 3. the mark as the poster and the roll-up carry it ------------------
# Pug above, name below, on nothing: it is grafted onto the stars.
write("foodjis_logo_mark.svg", page(
    130, 112,
    "foodjis — the stacked mark: the pug, the name under it. To be grafted.",
    pug(19, 0, 92),
    wordmark(65, 109, 29),
    ground=None,
))

# --- 4. the slogan, alone, to be grafted the same way -------------------
write("foodjis_slogan_fr.svg", page(
    150, 22,
    "foodjis — the slogan, in French: l'appli de vous en vie",
    slogan(75, 16, 15),
    ground=None,
))

print("""
Ensuite, pour l'imprimeur : passer les lettres en courbes
    inkscape --export-type=svg --export-text-to-path \\
             --export-filename=X_paths.svg X.svg
puis greffer la marque et le slogan dans les gabarits de la maison
    python3 graft-foodjis.py
""")
