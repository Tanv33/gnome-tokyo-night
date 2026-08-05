#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Applying GTK 3 theme..."

rm -rf ~/.config/gtk-3.0/*

sassc -a "$SCRIPT_DIR/gtk-3/theme/gtk.scss" "$SCRIPT_DIR/gtk-3/build/gtk.css"

cp -a "$SCRIPT_DIR/gtk-3/build/." ~/.config/gtk-3.0/

echo "Done."