#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Building GNOME Shell theme..."

cp -rf "$SCRIPT_DIR"/icons/* ~/.local/share/icons/
sudo cp -rf "$SCRIPT_DIR"/icons/* /usr/share/icons/

echo "Done."