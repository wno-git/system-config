#!/bin/bash

set -euo pipefail

SPARK_VERSION="spark-2.2.0-bin-hadoop2.7"
SPARK_URL="https://d3kbcqa49mib13.cloudfront.net/$SPARK_VERSION.tgz"
SPARK_SHA256=97fd2cc58e08975d9c4e4ffa8d7f8012c0ac2792bcd9945ce2a561cf937aebcc

SPARK_DIR="$HOME/.local/share/spark"

wget "$SPARK_URL"

echo "$SPARK_SHA256 $SPARK_VERSION.tgz" | \
    sha256sum --strict --check -

mkdir --parents "$SPARK_DIR"

tar -C "$SPARK_DIR" -xavvf "$SPARK_VERSION.tgz"

rm "$SPARK_VERSION.tgz"
