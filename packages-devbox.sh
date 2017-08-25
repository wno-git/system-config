#!/bin/bash

set -euo pipefail

source common.inc.sh

packages=(
    ${packages_common[@]}
    build-essential
    ccache
    clang
    clang-format
    clang-tidy
    cmake
    cppcheck
    gcc-doc
    gdb-doc
    glew-utils
    libboost-all-dev
    libgl1-mesa-glx-dbgsym
    libglew-dev
    libsdl2-2.0-0-dbgsym
    libsdl2-dev
    libsdl2-doc
    libuv1-dev
    ninja-build
    shellcheck
    sloccount
    upx-ucl
    valgrind
)

apt update
apt full-upgrade --yes
apt install --yes "${packages[@]}"
