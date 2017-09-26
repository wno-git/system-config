#!/bin/bash

set -euo pipefail

apt-add-repository \
    "deb https://dl.bintray.com/sbt/debian /"

apt-key adv \
    --keyserver hkp://keyserver.ubuntu.com:80 \
    --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823

apt update

apt install --yes sbt
