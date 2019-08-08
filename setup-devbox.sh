#!/bin/bash

set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck source=common.inc.sh
source "$DIR/common.inc.sh"

packages=(
    ${packages_common[@]}
    ccache
    clang
    clang-format
    clang-tidy
    cmake
    cppcheck
    criu
    default-jre-headless
    docker.io
#    gcc-doc
    gdb-doc
    glew-utils
    golang
    golang-go
    libboost-all-dev
# broken in debian testing
#    libgl1-mesa-glx-dbgsym
    libglew-dev
    libsdl2-2.0-0-dbgsym
    libsdl2-dev
    libsdl2-doc
    libuv1-dev
    mc
    nmap
    nodejs
    npm
    scala
    sloccount
    upx-ucl
    valgrind
    wayland-protocols
)

apt update
apt full-upgrade --yes
apt install --yes "${packages[@]}"

"$DIR/installers/docker.sh"
