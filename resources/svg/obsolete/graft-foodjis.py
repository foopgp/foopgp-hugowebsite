#!/usr/bin/env python3
"""Graft foodjis onto the house poster and roll-up.

The posters and roll-ups of the house are not built here: they already exist
(`poster_french_foopgp.svg`, `rollup_french_foopgp.svg`), with their purple
gradient, the star field that sends the top half into the sky, and the row of
marks at the foot. Drawing a new one beside them would be a second design,
which is the opposite of what a family of supports is for (JJB, 2026-09-18).

So a copy is taken and exactly two things are exchanged:

  g24740-3   the mark at the top -- the pug and the name in the stars
  text18-3   the slogan

Both are exchanged for the flattened foodjis pieces, fitted into the very
boxes the originals occupied, which are measured from the file rather than
written down here: Inkscape is asked where they are.

Run after `build-foodjis.py` and after flattening the pieces to curves:

    python3 graft-foodjis.py
"""
import os
import subprocess
import xml.etree.ElementTree as ET

SVG = "http://www.w3.org/2000/svg"
ET.register_namespace("", SVG)
HERE = os.path.dirname(os.path.abspath(__file__))

# Inkscape answers in pixels at 96 per inch; these files count millimetres.
PER_MM = 96.0 / 25.4


def box(svg_file, ident):
    """Where an object sits, in the file's own units."""
    out = []
    for what in ("--query-x", "--query-y", "--query-width", "--query-height"):
        answer = subprocess.run(
            ["inkscape", "--query-id=%s" % ident, what, svg_file],
            capture_output=True, text=True).stdout.strip().splitlines()
        out.append(float(answer[-1]) / PER_MM)
    return out


def piece(name, x, y, width, height, ident):
    """One of our drawings, fitted into a box and centred in it.

    A group with a transform rather than a nested `<svg>`, for the reason
    given in build-foodjis.py: Inkscape does not see into a nested svg when
    it exports a drawing, and a poster that loses its pug on the way to the
    printer is worse than no poster.
    """
    root = ET.parse(os.path.join(HERE, name)).getroot()
    w, h = [float(v) for v in root.get("viewBox").split()[2:]]
    scale = min(width / w, height / h)
    group = ET.Element("{%s}g" % SVG, {
        "transform": "translate(%.4f,%.4f) scale(%.6f)"
                     % (x + (width - w * scale) / 2, y + (height - h * scale) / 2, scale),
        "id": ident,
    })
    for child in list(root):
        group.append(child)
    return group


def graft(template, out_name):
    tree = ET.parse(os.path.join(HERE, template))
    root = tree.getroot()
    layer = root.find("{%s}g" % SVG)

    mark = box(os.path.join(HERE, template), "g24740-3")
    text = box(os.path.join(HERE, template), "text18-3")
    print("%s: marque %s, slogan %s" % (template,
          ["%.1f" % v for v in mark], ["%.1f" % v for v in text]))

    for ident in ("g24740-3", "text18-3"):
        gone = layer.find(".//*[@id='%s']" % ident)
        if gone is None:
            raise SystemExit("%s: pas de %s à remplacer" % (template, ident))
        # Its parent may be the layer or a group inside it.
        for parent in layer.iter():
            if gone in list(parent):
                parent.remove(gone)
                break

    layer.append(piece("foodjis_logo_mark_paths.svg",
                       mark[0], mark[1], mark[2], mark[3], "foodjis-mark"))
    # One line where the house slogan takes two, so the box is halved and
    # kept in the middle of the room the original had.
    x, y, w, h = text
    layer.append(piece("foodjis_slogan_fr_paths.svg",
                       x, y + h * 0.22, w, h * 0.56, "foodjis-slogan"))

    tree.write(os.path.join(HERE, out_name), encoding="unicode",
               xml_declaration=True)
    print("écrit %s" % out_name)


graft("poster_french_foopgp.svg", "poster_french_foodjis.svg")
graft("rollup_french_foopgp.svg", "rollup_french_foodjis.svg")
