#!/bin/bash

set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

packages=(
    apt-transport-https
    ca-certificates
    curl
    gnupg2
    software-properties-common
)

apt update

apt install --yes "${packages[@]}"

apt-key add "$DIR/docker.gpg"

# Not available for buster
debian_release=stretch

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $debian_release \
   stable"

apt update

apt install --yes docker-ce
