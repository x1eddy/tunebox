#!/bin/bash
# Installs TuneBox for the current user. No root, nothing outside $HOME.
# Uninstall with:  ~/.local/share/tunebox/uninstall.sh
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
BUNDLE="$HERE/bundle"
APPDIR="$HOME/.local/share/tunebox"

[ -d "$BUNDLE" ] || { echo "bundle/ is missing — extract the whole archive first."; exit 1; }

echo "→ installing to $APPDIR"
rm -rf "$APPDIR"; mkdir -p "$APPDIR"
cp -r "$BUNDLE/." "$APPDIR/"

mkdir -p "$HOME/.local/bin"
printf '#!/bin/bash\nexec "%s/tunebox" "$@"\n' "$APPDIR" > "$HOME/.local/bin/tunebox"
chmod +x "$HOME/.local/bin/tunebox"

if [ -f "$HERE/icon.png" ]; then
  for px in 512 256 128 64 48; do
    d="$HOME/.local/share/icons/hicolor/${px}x${px}/apps"
    mkdir -p "$d"
    if command -v convert >/dev/null; then
      convert "$HERE/icon.png" -resize ${px}x${px} "$d/com.brito.tunebox.png"
    else
      cp "$HERE/icon.png" "$d/com.brito.tunebox.png"
    fi
  done
fi

mkdir -p "$HOME/.local/share/applications"
cat > "$HOME/.local/share/applications/com.brito.tunebox.desktop" <<DESKTOP
[Desktop Entry]
Type=Application
Name=TuneBox
Comment=Music with an AI that learns what you like
Exec=$HOME/.local/bin/tunebox
Icon=com.brito.tunebox
Terminal=false
Categories=AudioVideo;Audio;Player;
StartupWMClass=com.brito.tunebox
DESKTOP
update-desktop-database "$HOME/.local/share/applications" 2>/dev/null || true
gtk-update-icon-cache -f -t "$HOME/.local/share/icons/hicolor" 2>/dev/null || true

cat > "$APPDIR/uninstall.sh" <<UNINST
#!/bin/bash
rm -rf "$APPDIR" "$HOME/.local/bin/tunebox" \\
  "$HOME/.local/share/applications/com.brito.tunebox.desktop"
find "$HOME/.local/share/icons/hicolor" -name com.brito.tunebox.png -delete 2>/dev/null
echo "TuneBox removed. Your library lives in ~/.local/share/com.brito.tunebox — delete that too if you want it gone."
UNINST
chmod +x "$APPDIR/uninstall.sh"

echo
echo "done — TuneBox is in your app menu, or run: tunebox"
echo "(if 'tunebox' isn't found, add ~/.local/bin to your PATH)"
