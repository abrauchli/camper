#!/usr/bin/bash
set -euo pipefail

SCRIPT_DIR=$(dirname $0)
FULL_DIR="${SCRIPT_DIR}/../assets/assets/pics/thumbs/
full"
THUMB_DIR="${SCRIPT_DIR}/../assets/assets/pics/thumbs/
thumbs"
MAX_WIDTH=800
QUALITY=70

mkdir -p "$THUMB_DIR"

for f in "$FULL_DIR"/*.jpg; do
  [ -e "$f" ] || continue

  base="$(basename "$f")"
  thumb="$THUMB_DIR/$base"

  if [ ! -f "$thumb" ]; then
    convert "$f" \
      -resize "${MAX_WIDTH}x" \
      -strip \
      -interlace Plane \
      -quality "$QUALITY" \
      "$thumb"
    echo -n .
  fi
done
echo Thumbnails generated

