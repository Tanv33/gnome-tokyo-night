#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Building GNOME Shell theme..."

cp -rf "$SCRIPT_DIR"/cursor/* ~/.local/share/icons/
sudo cp -rf "$SCRIPT_DIR"/cursor/* /usr/share/icons/

echo "Done."