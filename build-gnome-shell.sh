#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Building GNOME Shell theme..."

# Ensure the output directory exists (creates it if missing, no-op if present)
mkdir -p "$SCRIPT_DIR/gnome-shell/build"

# sassc overwrites OUT_FILE if it already exists, and creates it if not
sassc -a "$SCRIPT_DIR/gnome-shell/theme/gnome-shell-dark.scss" "$SCRIPT_DIR/gnome-shell/build/gnome-shell.css"

echo "Done."