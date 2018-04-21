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
    libvirt-clients
    libvirt-daemon-system
    mpv
    qemu-kvm
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
)

packages_remove=(
    dleyna-renderer
    firefox-esr
    minissdpd
)


apt update

apt install --yes "${packages[@]}"

apt remove --yes "${packages_remove[@]}"
