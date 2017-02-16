#!/bin/bash

set -euo pipefail

TARGET_DISK=$1

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
#    +60G size
#    default type
# w: write to disk
#    Y yes

GDISK_CMDS="o\nY\nn\n\n\n+256M\nEF00\nn\n\n\n+10G\n\nn\n\n\n+60G\n\nw\nY\n"

echo -e $GDISK_CMDS | gdisk "$TARGET_DISK"
