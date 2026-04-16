#!/usr/bin/env bash
set -e

VERSION="${VERSION:-1.28.1}"

apt-get update
apt-get install -y --no-install-recommends curl ca-certificates
rm -rf /var/lib/apt/lists/*

curl -fsSL -o /usr/local/bin/bazelisk "https://github.com/bazelbuild/bazelisk/releases/download/v{$VERSION}/bazelisk-linux-amd64"

chmod +x /usr/local/bin/bazelisk
ln -sf /usr/local/bin/bazelisk /usr/local/bin/bazel

bazel version
