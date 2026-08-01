#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing System GNOME Shell Theme..."

cp "$SCRIPT_DIR/gnome-shell/build/gnome-shell.css" "$SCRIPT_DIR/gnome-shell-system/gresource/gnome-shell-light.css"
cp "$SCRIPT_DIR/gnome-shell/build/gnome-shell.css" "$SCRIPT_DIR/gnome-shell-system/gresource/gnome-shell-dark.css"

cd "$SCRIPT_DIR/gnome-shell-system/gresource"

glib-compile-resources --target=gnome-shell-theme.gresource gnome-shell-theme.gresource.xml

sudo cp gnome-shell-theme.gresource /usr/share/gnome-shell/gnome-shell-theme.gresource  
sudo chown root:root /usr/share/gnome-shell/gnome-shell-theme.gresource
sudo chmod 644 /usr/share/gnome-shell/gnome-shell-theme.gresource  

sudo cp "$SCRIPT_DIR/gnome-shell-system/95-gdm-settings" /etc/dconf/db/gdm.d/95-gdm-settings
sudo dconf update

echo "Done."