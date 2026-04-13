#!/usr/bin/env bash
set -e

VERSION="${VERSION:-4.3.1}"

apt-get update
apt-get install -y --no-install-recommends curl ca-certificates

curl -fsSL -o cmake.sh "https://github.com/Kitware/CMake/releases/download/v${VERSION}/cmake-${VERSION}-linux-x86_64.sh"

bash cmake.sh --skip-license --prefix=/usr/local
rm cmake.sh

cmake --version
