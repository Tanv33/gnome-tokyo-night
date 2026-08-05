#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Applying Ghostty theme..."

cp -rf "$SCRIPT_DIR"/ghostty/*  ~/.config/ghostty/

echo "Done."