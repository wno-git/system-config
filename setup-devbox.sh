#!/bin/bash

set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck source=common.inc.sh
source "$DIR/common.inc.sh"

packages=(
    ${packages_common[@]}
    build-essential
    ccache
    clang
    clang-format
    clang-tidy
    cmake
    cppcheck
    default-jre-headless
#    gcc-doc
    gdb-doc
    glew-utils
    libboost-all-dev
    libgl1-mesa-glx-dbgsym
    libglew-dev
    libsdl2-2.0-0-dbgsym
    libsdl2-dev
    libsdl2-doc
    libuv1-dev
    mc
    neovim
    ninja-build
    nmap
    scala
    shellcheck
    sloccount
    upx-ucl
    valgrind
)

apt update
apt full-upgrade --yes
apt install --yes "${packages[@]}"

"$DIR/installers/docker.sh"
