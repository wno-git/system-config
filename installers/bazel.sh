#!/bin/bash

set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

apt-key add "$DIR/bazel.gpg"

add-apt-repository \
   "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8"

apt update

apt install --yes bazel
