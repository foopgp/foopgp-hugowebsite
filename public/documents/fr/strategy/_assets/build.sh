#!/usr/bin/env bash
# build.sh — render foopgp strategy markdown documents to standalone PDF.
#
# Pipeline: Markdown -> HTML (pandoc + custom template/css) -> PDF (chromium headless).
# Run from the strategy/ directory:  ./_assets/build.sh <doc.md>
#
# Why this pipeline:
# - pandoc is the only Markdown converter installed in our toolchain that supports
#   custom templates with metadata interpolation (title, author, version, etc.).
# - chromium is used as a print engine (no weasyprint or wkhtmltopdf available).
# - the resulting HTML is intentionally kept next to the PDF so an inspector can
#   audit the rendering without re-running the pipeline.

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "usage: $0 <document.md>" >&2
  exit 64
fi

doc="$1"
base="${doc%.md}"
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
work_dir="$(pwd)"
logo_path="$script_dir/../../../images/banner/foopgp+dji+djibian.png"

# Resolve absolute logo path (chromium needs file:// for local images).
logo_abs="$(realpath "$logo_path")"

# Stage assets next to the input so relative href="style.css" resolves.
cp "$script_dir/style.css" "$work_dir/style.css"

# Render Markdown -> standalone HTML using our pandoc template.
pandoc \
  --from=markdown+yaml_metadata_block \
  --to=html5 \
  --standalone \
  --template="$script_dir/template.html" \
  --metadata=lang:fr \
  --metadata="logo-path:file://$logo_abs" \
  -o "$base.html" \
  "$doc"

# Render HTML -> PDF via chromium headless.
chromium \
  --headless \
  --no-sandbox \
  --disable-gpu \
  --no-pdf-header-footer \
  --print-to-pdf-no-header \
  --print-to-pdf="$base.pdf" \
  "file://$(realpath "$base.html")" \
  2>/dev/null

# Cleanup the staged stylesheet copy.
rm -f "$work_dir/style.css"

echo "Generated: $base.pdf"
