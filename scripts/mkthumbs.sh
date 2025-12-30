#!/usr/bin/bash
set -euo pipefail

SCRIPT_DIR=$(dirname $0)
PICS_DIR="${SCRIPT_DIR}/../assets/pics/"
ORIG_DIR="${PICS_DIR}/orig/"
FULL_DIR="${PICS_DIR}/full/"
THUMB_DIR="${PICS_DIR}/thumbs/"
MAX_WIDTH_FULL=1600
MAX_WIDTH_THUMB=800
QUALITY_FULL=80
QUALITY_THUMB=70

mkdir -p "$THUMB_DIR" "$FULL_DIR"

for f in "$ORIG_DIR"/*.jpg; do
  [ -e "$f" ] || continue

  base="$(basename $f)"
  full="${FULL_DIR}/${base}"
  thumb="${THUMB_DIR}/${base}"

  if [ ! -f "$full" ]; then
    convert "$f" \
      -resize "${MAX_WIDTH_FULL}x" \
      -strip \
      -interlace Plane \
      -quality "$QUALITY_FULL" \
      "$full"
  fi
  if [ ! -f "$thumb" ]; then
    convert "$f" \
      -resize "${MAX_WIDTH_THUMB}x" \
      -strip \
      -interlace Plane \
      -quality "$QUALITY_THUMB" \
      "$thumb"
    echo -n .
  fi
done

echo
echo "Pics generated"
