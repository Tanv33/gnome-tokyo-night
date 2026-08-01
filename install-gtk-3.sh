#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Applying GTK 3 theme..."

mkdir -p ~/.config/gtk-3.0

rm -rf ~/.config/gtk-3.0/*

cp -a "$SCRIPT_DIR/gtk-3/." ~/.config/gtk-3.0/

echo "Done."