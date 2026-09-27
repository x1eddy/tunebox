#!/bin/bash
# Wraps the release bundle, the installer and an icon into the tarball that
# ships on the Releases page. Run it after: flutter build linux --release
set -e
cd "$(dirname "$0")/.."

V=$(grep -m1 '^version:' pubspec.yaml | sed 's/version: *//; s/+.*//')
BUNDLE=build/linux/x64/release/bundle
[ -d "$BUNDLE" ] || { echo "no release bundle — run: flutter build linux --release"; exit 1; }

NAME="TuneBox-$V-linux-x64"
OUT="dist/$NAME"
rm -rf "$OUT"; mkdir -p "$OUT"

cp -r "$BUNDLE" "$OUT/bundle"
cp packaging/linux/install.sh "$OUT/install.sh"
chmod +x "$OUT/install.sh"
sed "s/@VERSION@/$V/" packaging/linux/README.txt.in > "$OUT/README.txt"
cp assets/icon/icon.png "$OUT/icon.png"

tar -C dist -czf "dist/linux-TuneBox-$V.tar.gz" "$NAME"
rm -rf "$OUT"
ls -lh "dist/linux-TuneBox-$V.tar.gz"
