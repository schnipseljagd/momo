#!/bin/bash
set -euo pipefail

ansi_art='#
#    ▄▄▄      ▄▄▄
#    ████▄  ▄████
#    ███▀████▀███ ▄███▄ ███▄███▄ ▄███▄
#    ███  ▀▀  ███ ██ ██ ██ ██ ██ ██ ██
#    ███      ███ ▀███▀ ██ ██ ██ ▀███▀
#
#                                      '

clear
echo -e "\n$ansi_art\n"

sudo pacman -Syu --noconfirm --needed git

# Use custom repo if specified
REPO="${MOMO_REPO:-schnipseljagd/momo}"
echo -e "\nCloning from: https://github.com/${REPO}.git"
rm -rf ~/.local/share/momo/
git clone --recurse-submodules "https://github.com/${REPO}.git" ~/.local/share/momo >/dev/null

# Use custom branch if instructed, otherwise default to master
REF="${MOMO_REF:-main}"
echo -e "\e[32mUsing branch: $REF\e[0m"
cd ~/.local/share/momo
git fetch origin "${REF}" && git checkout "${REF}"
cd -

echo -e "\nInstallation starting..."
source ~/.local/share/momo/install.sh

echo -e "\nStarting niri..."
niri-session
