#!/bin/bash
set -euo pipefail

[[ $UID == "0" ]] || { echo "You are not root." >&2; exit 1; }

install -m 644 ./bash_colors /etc/profile.d/bash_colors.sh && \
    echo -e "Installed: /etc/profile.d/bash_colors.sh"

install -m 644 ./loading /etc/profile.d/loading.sh && \
    echo -e "Installed: /etc/profile.d/loading.sh"

install -m 644 ./network /etc/profile.d/network.sh && \
    echo -e "Installed: /etc/profile.d/network.sh"

install -m 644 ./utils /etc/profile.d/utils.sh && \
    echo -e "Installed: /etc/profile.d/utils.sh"

echo -e "\nDone. Please login again.\n"