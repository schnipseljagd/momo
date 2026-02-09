#!/bin/bash
set -euo pipefail && cd "$(dirname "${BASH_SOURCE[0]}")/../.."

if [ ! -d ~/.config/nvim ]; then
  git clone https://github.com/LazyVim/starter ~/.config/nvim
  rm -rf ~/.config/nvim/.git
fi
