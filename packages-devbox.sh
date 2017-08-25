#!/usr/bin/env bash

set -euo pipefail

packages=(
    build-essential
    git
    htop
    stow
    tig
    vim
)

apt update
apt full-upgrade --yes
apt install --yes "${packages[@]}"
