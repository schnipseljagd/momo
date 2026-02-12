#!/bin/bash
set -euo pipefail && cd "$(dirname "${BASH_SOURCE[0]}")"

if [ "$EUID" -eq 0 ]; then
  echo "Error: This script should not be run as root"
  exit 1
fi

source install/packaging/all.sh
source install/config/all.sh
