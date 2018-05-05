#!/bin/bash

set -euo pipefail

DEBIAN_TREE=http://ftp.us.debian.org/debian/dists/stable/main/installer-amd64/

virt-install \
    --connect qemu:///system \
    --name devbox-debian \
    --memory 8192 \
    --vcpus 4 \
    --cpu host \
    --location "${DEBIAN_TREE}" \
    --os-variant debian9 \
    --disk pool=disks,format=raw,size=64
