#!/bin/bash

set -euo pipefail

requirements=(
    dosfstools
    gdisk
    git
    lvm2
)

apt install --yes "${requirements[@]}"
