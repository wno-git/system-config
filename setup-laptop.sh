#!/bin/bash

set -euo pipefail

source common.inc.sh

packages=(
    ${packages_common[@]}
    apparmor
    apparmor-profiles
    apparmor-utils
    byobu
    firefox/unstable
    intel-microcode
    smartmontools
)

packages_remove=(
    dleyna-renderer
    firefox-esr
    minissdpd
)


apt update

apt install --yes "${packages[@]}"

apt remove --yes "${packages_remove[@]}"
