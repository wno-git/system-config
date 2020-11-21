#!/bin/bash

set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

apt-key add "$DIR/bazel-release.pub.gpg"

echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" \
    > /etc/apt/sources.list.d/bazel.list

apt update

apt install --yes bazel
