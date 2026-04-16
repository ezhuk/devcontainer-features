#!/usr/bin/env bash
set -e

VERSION="${VERSION:-1.13.2}"

apt-get update
apt-get install -y --no-install-recommends curl ca-certificates unzip
rm -rf /var/lib/apt/lists/*

curl -fsSL -o ninja.zip "https://github.com/ninja-build/ninja/releases/download/v${VERSION}/ninja-linux.zip"

unzip -o ninja.zip -d /usr/local/bin
rm ninja.zip
chmod +x /usr/local/bin/ninja

ninja --version
