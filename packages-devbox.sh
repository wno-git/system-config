#!/usr/bin/env bash

set -euo pipefail

packages=(
    apt-listbugs
    apt-transport-https
    bc
    build-essential
    ccache
    clang
    clang-format
    clang-tidy
    cmake
    cppcheck
    dnsutils
    gcc-doc
    gdb-doc
    git
    glew-utils
    htop
    libboost-all-dev
    libgl1-mesa-glx-dbgsym
    libglew-dev
    libsdl2-2.0-0-dbgsym
    libsdl2-dev
    libsdl2-doc
    libuv1-dev
    ninja-build
    python-pip
    python-virtualenv
    shellcheck
    sloccount
    stow
    strace
    tig
    time
    tmux
    tree
    upx-ucl
    valgrind
    vim
)

apt update
apt full-upgrade --yes
apt install --yes "${packages[@]}"
