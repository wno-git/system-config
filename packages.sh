#!/bin/bash

set -euo pipefail

packages=(
    abcde
    adb
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
    dirmngr
    dnsutils
    fastboot
    figlet
    firefox/experimental
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
    glew-utils
    gpsprune
    graphviz
    gstreamer1.0-plugins-bad-dbg
    htop
    inkscape
    inotify-tools
    iotop
    iputils-tracepath
    josm
#    kcachegrind
    libboost-all-dev
    libglew-dev
    libratbag-tools
    librtmp-dev
    libsdl2-2.0-0-dbgsym
    libsdl2-dev
    libsdl2-doc
    libuv1-dev
    libvirt-daemon
    mercurial
    mpv
    mtr
    netcat-openbsd
    ninja-build
    octave
#    okular
    parallel
    pdftk
    picard
    pkg-mozilla-archive-keyring
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
    smartmontools
    socat
    stellarium
    stow
    strace
    subversion
    tcpdump
    terminator
    texlive-full
    tig
    time
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
    xalan
    xmlstarlet
    yasm
)

packages_remove=(
    dleyna-renderer
    firefox-esr
    minissdpd
)


apt update

apt install --yes "${packages[@]}"

apt remove --yes "${packages_remove[@]}"
