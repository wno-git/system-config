#!/bin/bash

set -euo pipefail

source common.inc.sh

packages=(
    ${packages_common[@]}
    audacity
    byobu
    chromium
    cups
    darktable
    firefox/unstable
    fonts-liberation2
    gimp
    intel-microcode
    mpv
    smartmontools
    texlive-full
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
