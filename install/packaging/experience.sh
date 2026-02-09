#!/bin/bash
set -euo pipefail && cd "$(dirname "${BASH_SOURCE[0]}")/../.."

mapfile -t packages < <(cat install/experience.packages)
sudo pacman -S --noconfirm --needed "${packages[@]}"
