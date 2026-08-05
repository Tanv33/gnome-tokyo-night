#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Applying Starship theme..."

cp -rf "$SCRIPT_DIR/starship/starship.toml"  ~/.config/starship.toml

echo "Done."