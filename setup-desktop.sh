#!/bin/bash

set -euo pipefail

source common.inc.sh

packages=(
    ${packages_common[@]}
    abcde
    adb
    agave
# bug: usr.bin.totem profile bad
#    apparmor-profiles-extra
    archivemail
    ardour
    aspell
    aspell-en
    audacity
    blender
    byobu
    ccache
    chromium
    clang
    clang-format
    clang-tidy
    cmake
    cppcheck
    darktable
    deborphan
    dia
    ethtool
    fastboot
    figlet
    firefox/unstable
    flac
    fonts-firacode
    fonts-inconsolata
    fonts-liberation2
    fonts-noto
    gcc-doc
    gdb-doc
    gimp
    gir1.2-spice-client-gtk-3.0
    git-annex
    gitg
    gitk
    glew-utils
    gpsprune
    graphviz
    gstreamer1.0-plugins-bad-dbg
    inkscape
    intel-microcode
    jabref
    josm
    lightdm
    libboost-all-dev
    libgdk-pixbuf2.0-bin # missing dependency in debian unstable
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
    milkytracker
    mpv
    neverball
    octave
    offlineimap
    okular
    openjdk-8-jdk
    parallel
    pavucontrol
    pdftk
    picard
    pngcrush
    poppler-utils
    qemu-kvm
    qlandkartegt
    quodlibet
    r-recommended
    redshift
    schism
    shotwell
    sloccount
    smartmontools
    stellarium
    subversion
    texlive-full
    timidity
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
    xmonad
    yasm
    zotero-standalone
#    kcachegrind
)

packages_remove=(
    dleyna-renderer
    firefox-esr
    minissdpd
)


apt update

apt install --yes "${packages[@]}"

apt remove --yes "${packages_remove[@]}"
