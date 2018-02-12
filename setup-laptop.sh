#!/bin/bash

set -euo pipefail

source common.inc.sh

packages=(
    ${packages_common[@]}
    apparmor
    apparmor-profiles
    apparmor-utils
    apt-show-versions
    audacity
    build-essential
    byobu
    chromium
    cups
    darktable
    firefox/unstable
    fonts-liberation2
    gimp
    intel-microcode
    mpv
    neovim
    ninja-build
    shellcheck
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
