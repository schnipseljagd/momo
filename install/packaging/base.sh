#!/bin/bash
set -euo pipefail && cd "$(dirname "${BASH_SOURCE[0]}")/../.."

mapfile -t base_packages < <(cat install/base.packages)
sudo pacman -S --noconfirm --needed "${base_packages[@]}"

mapfile -t aur_packages < <(cat install/base.aur.packages)
paru -S --noconfirm --needed "${aur_packages[@]}"
