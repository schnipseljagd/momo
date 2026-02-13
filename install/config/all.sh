#!/bin/bash
set -euo pipefail && cd "$(dirname "${BASH_SOURCE[0]}")/../.."

source install/config/config.sh
source install/config/input-group.sh
source install/config/localdb.sh
source install/config/mimetypes.sh
source install/config/snapper.sh
source install/config/niri.sh
source install/config/dms.sh
source install/config/greetd.sh
source install/config/voxtype.sh
source install/config/firefox.sh
source install/config/ghostty.sh
source install/config/dsearch.sh
