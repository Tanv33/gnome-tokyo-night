#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Building GNOME Shell theme..."

THEME_NAME="TokyoNight"

THEME_DIR="$SCRIPT_DIR/gnome-shell/build/$THEME_NAME"

# Ensure the output directory exists (creates it if missing, no-op if present)
mkdir -p "$THEME_DIR/gnome-shell"

# sassc overwrites OUT_FILE if it already exists, and creates it if not
sassc -a "$SCRIPT_DIR/gnome-shell/theme/gnome-shell-dark.scss" "$THEME_DIR/gnome-shell/gnome-shell.css"


echo "Installing GNOME Shell theme..."

mkdir -p ~/.local/share/themes

rm -rf "$HOME/.local/share/themes/$THEME_NAME"
cp -a "$THEME_DIR" ~/.local/share/themes/

echo "Enabling Shell theme..."

gsettings set org.gnome.shell.extensions.user-theme name "$THEME_NAME"

echo "Reloading GTK..."

# Reload GTK settings
gsettings reset org.gnome.desktop.interface gtk-theme >/dev/null 2>&1 || true

echo "Reloading GNOME Shell..."

EXT=user-theme@gnome-shell-extensions.gcampax.github.com

gnome-extensions disable "$EXT"
sleep 0.2
gnome-extensions enable "$EXT"

echo "Done."