#!/bin/bash

set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

apt-key add "$DIR/heroku.gpg"

add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"

apt update

apt install --yes heroku
