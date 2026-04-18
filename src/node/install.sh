#!/usr/bin/env bash
set -e

VERSION="${VERSION:-24.15.0}"

apt-get update
apt-get install -y --no-install-recommends curl ca-certificates xz-utils
rm -rf /var/lib/apt/lists/*

curl -fsSL -o node.tar.xz "https://nodejs.org/dist/v${VERSION}/node-v${VERSION}-linux-x64.tar.xz"

tar -xJf node.tar.xz -C /usr/local --strip-components=1
rm node.tar.xz

node --version
