#!/bin/bash

set -euo pipefail

TARGET_DISK=$1

readlink --verbose "$TARGET_DISK"

lsblk

echo "Target disk: $TARGET_DISK, ok?"
read

# o: clear partitions
#    Y yes
# n: new partition (efi boot)
#    default number
#    default start sector
#    +256M size
#    EF00 efi boot
# n: new partition (boot)
#    default number
#    default start sector
#    +10G size
#    default type
# n: new partition (system)
#    default number
#    default start sector
#    default end sector
#    default type
# w: write to disk
#    Y yes

GDISK_CMDS="o\nY\nn\n\n\n+256M\nEF00\nn\n\n\n+10G\n\nn\n\n\n\n\nw\nY\n"

echo -e $GDISK_CMDS | gdisk "$TARGET_DISK"

mkfs.fat "${TARGET_DISK}1"

vgcreate system "${TARGET_DISK}3"

lvcreate --name root --size 20G system
lvcreate --name usr --size 40G system
lvcreate --name var --size 10G system
lvcreate --name tmp --size 10G system
lvcreate --name installhome --size 10G system
