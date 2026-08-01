#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Intalling GRUB theme..."

sudo mkdir -p /boot/grub/themes
sudo cp -rf "$SCRIPT_DIR/grub/theme" /boot/grub/themes/fedora-tokyo-night
sudo cp "$SCRIPT_DIR/grub/config" /etc/default/grub
sudo grub2-mkconfig -o /boot/grub2/grub.cfg

echo "Done."