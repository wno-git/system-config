#!/bin/bash

set -euo pipefail

packages=(
    abcde
    agave
    apparmor
    apparmor-profiles
    apparmor-profiles-extra
    apparmor-utils
    apt-listbugs
    aptitude
    archivemail
    ardour
    aspell
    aspell-en
    audacity
    bc
    binwalk
    blender
    build-essential
    byobu
    ccache
    chromium
    clang
    clang-format
    clang-tidy
    cmake
    cppcheck
    cpufrequtils
    darktable
    debian-goodies
    dia
    figlet
    flac
    fonts-firacode
    fonts-inconsolata
    fonts-noto
    gcc-doc
    gdb-doc
    gimp
    git
    git-annex
    gitg
    gitk
    gstreamer1.0-plugins-bad-dbg
    htop
    inkscape
    iotop
#    kcachegrind
    libboost-all-dev
    libvirt-daemon
    mercurial
    mpv
    mtr
    netcat-openbsd
    ninja-build
    octave
#    okular
    pdftk
    pngcrush
    pv
    python-pip
    python-virtualenv
    qemu-kvm
    qlandkartegt
    quodlibet
    r-recommended
    redshift
    shellcheck
    shotwell
    sloccount
    socat
    stellarium
    stow
    subversion
    tcpdump
    terminator
    texlive-full
    tig
    tmux
    tree
    units
    upx-ucl
    valgrind
    vim
    virt-manager
    vlc
    vorbis-tools
    whois
    wireshark
    x264
    yasm
)

packages_remove=(
    dleyna-renderer
    minissdpd
)


apt update

apt install --yes "${packages[@]}"

apt remove --yes "${packages_remove[@]}"
