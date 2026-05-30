#!/usr/bin/env bash
set -e

VERSION="${VERSION:-15.2.0-1}"
ROOT="${ROOT:-/opt/gcc/${VERSION}}"

apt-get update
apt-get install -y --no-install-recommends curl ca-certificates
rm -rf /var/lib/apt/lists/*

curl -fsSL -o gcc.tar.gz "https://github.com/xpack-dev-tools/gcc-xpack/releases/download/v${VERSION}/xpack-gcc-${VERSION}-linux-x64.tar.gz"

mkdir -p "${ROOT}"
tar -xzf gcc.tar.gz -C "${ROOT}" --strip-components=1
rm gcc.tar.gz

ln -sf "${ROOT}/bin/gcc" /usr/local/bin/gcc
ln -sf "${ROOT}/bin/g++" /usr/local/bin/g++

gcc --version
g++ --version
