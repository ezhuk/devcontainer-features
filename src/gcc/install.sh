#!/usr/bin/env bash
set -e

VERSION="${VERSION:-15.2.0-1}"

apt-get update
apt-get install -y --no-install-recommends curl ca-certificates
rm -rf /var/lib/apt/lists/*

curl -fsSL -o gcc.tar.gz "https://github.com/xpack-dev-tools/gcc-xpack/releases/download/v${VERSION}/xpack-gcc-${VERSION}-linux-x64.tar.gz"

mkdir -p "/opt/xpack-gcc/${VERSION}"
tar -xzf gcc.tar.gz -C "/opt/xpack-gcc/${VERSION}" --strip-components=1
rm gcc.tar.gz

ln -sf "/opt/xpack-gcc/${VERSION}/bin/gcc" /usr/local/bin/gcc
ln -sf "/opt/xpack-gcc/${VERSION}/bin/g++" /usr/local/bin/g++

gcc --version
g++ --version
