#!/bin/bash

set -euo pipefail

source common.inc.sh

packages=(
    ${packages_common[@]}
    abcde
    adb
    agave
    apparmor
    apparmor-profiles
    apparmor-profiles-extra
    apparmor-utils
    archivemail
    ardour
    aspell
    aspell-en
    audacity
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
    darktable
    dia
    fastboot
    figlet
    firefox/unstable
    flac
    fonts-firacode
    fonts-inconsolata
    fonts-noto
    gcc-doc
    gdb-doc
    gimp
    git-annex
    gitg
    gitk
    glew-utils
    gpsprune
    graphviz
    gstreamer1.0-plugins-bad-dbg
    inkscape
    intel-microcode
    josm
    libboost-all-dev
    libgl1-mesa-glx-dbgsym
    libglew-dev
    libosinfo-bin
    libratbag-tools
    librtmp-dev
    libsdl2-2.0-0-dbgsym
    libsdl2-dev
    libsdl2-doc
    libuv1-dev
    libvirt-clients
    libvirt-daemon-system
    markdown
    mercurial
    mpv
    neverball
    ninja-build
    octave
    parallel
    pdftk
    picard
    pngcrush
    qemu-kvm
    qlandkartegt
    quodlibet
    r-recommended
    redshift
    shellcheck
    shotwell
    sloccount
    smartmontools
    stellarium
    subversion
    texlive-full
    units
    upx-ucl
    valgrind
    virt-manager
    vlc
    vorbis-tools
    wireshark
    x264
    xalan
    xmlstarlet
    yasm
#    kcachegrind
#    okular
)

packages_remove=(
    dleyna-renderer
    firefox-esr
    minissdpd
)


apt update

apt install --yes "${packages[@]}"

apt remove --yes "${packages_remove[@]}"
