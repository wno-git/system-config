#!/bin/bash

set -euo pipefail

source common.inc.sh

packages=(
    ${packages_common[@]}
    audacity
    borgbackup
    byobu
    chromium
    cups
    darktable
    firefox/unstable
    fonts-liberation2
    gimp
    intel-microcode
    libboost-all-dev
    libglew-dev
    libsdl2-dev
    libuv1-dev
    libvirt-clients
    libvirt-daemon-system
    mesa-utils
    mpv
    qemu-kvm
    qt4-dev-tools
    r-base
    r-cran-ggplot2
    rsync
    smartmontools
    texlive-full
    ufw
    virt-manager
    virtinst
    vlc
    wireshark
    xfonts-terminus
)

packages_remove=(
    dleyna-renderer
    firefox-esr
    minissdpd
)


apt update

apt install --yes "${packages[@]}"

apt remove --yes "${packages_remove[@]}"
