#!/usr/bin/env bash

set -Eeup pipefail			# usefull for debbuging bash-scripts


script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)			# prints script directory It will work if the last component of the path used to find the script is not a symlink (directory links are OK)


usage() {
	cat <<EOF
Usage: $(basename "${BASH_SOURCE[0]}") [-flag1] [-flag2] [-f] -p param_value
Script description here.

EOF
	#exit
}


trap cleanup SIGINT SIGTERM ERR EXIT

cleanup() {
trap - SIGINT SIGTERM ERR EXIT
# script cleanup here
}


#Colors
DEF_COLOR="\033[0;39m"
GRAY="\033[0;90m"
RED="\033[0;91m"
GREEN="\033[0;92m"
YELLOW="\033[0;93m"
BLUE1="\033[0;94m"
MAGENTA="\033[0;95m"
CYAN="\033[0;96m"
WHITE="\033[0;97m"
BLUE="\033[1;36m"
PINK="\033[1;35m"
RESET="\033[0m"

usage
printf "${CYAN}$script_dir		${RESET}\n"
