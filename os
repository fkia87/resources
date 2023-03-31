# shellcheck disable=SC2148

os() {
declare -r distro=$(grep -e '^ID=' /etc/os-release \
| cut -d = -f 2 | sed -e 's/[[:punct:]]//g' \
| tr "[:upper:]" "[:lower:]")
echo "$distro"
}

checkuser() {
[[ $UID == "0" ]] || { echo "You are not root."; exit 1; }
}