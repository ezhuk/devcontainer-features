#!/usr/bin/env bash
set -e

VERSION="${VERSION:-1.13.2}"
ROOT="${ROOT:-/usr/local/bin}"

apt-get update
apt-get install -y --no-install-recommends curl ca-certificates unzip
rm -rf /var/lib/apt/lists/*

curl -fsSL -o ninja.zip "https://github.com/ninja-build/ninja/releases/download/v${VERSION}/ninja-linux.zip"

unzip -o ninja.zip -d "${ROOT}"
rm ninja.zip

chmod +x "${ROOT}/ninja"

ninja --version
