#!/bin/bash

set -euo pipefail

source common.inc.sh

packages=(
    ${packages_common[@]}
    apparmor
    apparmor-profiles
    apparmor-utils
    audacity
    build-essential
    byobu
    chromium
    darktable
    firefox/unstable
    fonts-liberation2
    gimp
    intel-microcode
    mpv
    shellcheck
    smartmontools
    ufw
    vlc
    wireshark
)

packages_remove=(
    dleyna-renderer
    firefox-esr
    minissdpd
)


apt update

apt install --yes "${packages[@]}"

apt remove --yes "${packages_remove[@]}"
