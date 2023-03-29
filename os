# shellcheck disable=SC2148

function os {
declare -r DISTRO=$(grep -e '^ID=' /etc/os-release \
| cut -d = -f 2 | sed -e 's/[[:punct:]]//g' \
| tr "[:upper:]" "[:lower:]")
echo "$DISTRO"
}

function checkuser {
[[ $UID == "0" ]] || { echo "You are not root."; exit 1; }
}