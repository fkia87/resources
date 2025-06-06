#!/bin/bash

[[ $UID == "0" ]] || { echo "You are not root." >&2; exit 1; }
DIR=$(dirname "$0")

echo -e "\nInstalling...\n"

install -v -m 644 "$DIR/bash_colors" /etc/profile.d/bash_colors.sh
install -v -m 644 "$DIR/loading" /etc/profile.d/loading.sh
install -v -m 644 "$DIR/network" /etc/profile.d/network.sh
install -v -m 644 "$DIR/utils" /etc/profile.d/utils.sh

[[ $1 == "-q" ]] || echo -e "\nDone. Please login again.\n"