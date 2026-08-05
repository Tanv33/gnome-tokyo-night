#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Applying Cursor theme..."

cp -rf "$SCRIPT_DIR"/cursor/* ~/.local/share/icons/
sudo cp -rf "$SCRIPT_DIR"/cursor/* /usr/share/icons/

gsettings set org.gnome.desktop.interface cursor-theme "Bibata-Tokyo-Night"

echo "Done."