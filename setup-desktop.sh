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
    base58
    blender
    borgbackup
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
    ftp
    gcc-doc
    gdb-doc
    gimp
    gir1.2-spice-client-gtk-3.0
    git-annex
    gitg
    gitk
    glew-utils
    gnome-control-center
    gpsprune
    graphviz
    gstreamer1.0-plugins-bad-dbg
    inkscape
    intel-gpu-tools
    intel-microcode
    jabref
    josm
    libboost-all-dev
    libgdk-pixbuf2.0-bin # missing dependency in debian unstable
#    libgl1-mesa-glx-dbgsym # the dependencies of this are broken in testing
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
    libwayland-dev
    libwayland-egl-backend-dev
    lightdm
    markdown
    mercurial
    milkytracker
    mpv
    neverball
    octave
    offlineimap
    okular
    openjdk-8-jdk
    pandoc
    parallel
    pavucontrol
    pdftk
    picard
    pngcrush
    poppler-utils
    qemu-kvm
    qlandkartegt
    qrencode
    qt5-default
    quodlibet
    r-cran-ggplot2
    r-recommended
    redshift
    schism
    scribus
    shotwell
    sloccount
    smartmontools
    stellarium
    subversion
    texlive-full
    timidity
    units
    unrar
    upx-ucl
    valgrind
    vbindiff
    virt-manager
    vlc
    vorbis-tools
    wayland-protocols
    weston
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
