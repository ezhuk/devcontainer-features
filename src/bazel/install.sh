#!/usr/bin/env bash
set -e

VERSION="${VERSION:-1.29.0}"
BUILDIFIER="${BUILDIFIER:8.5.1}"
ROOT="${ROOT:-/usr/local/bin}"

apt-get update
apt-get install -y --no-install-recommends curl ca-certificates
rm -rf /var/lib/apt/lists/*

curl -fsSL -o "${ROOT}/bazelisk" "https://github.com/bazelbuild/bazelisk/releases/download/v${VERSION}/bazelisk-linux-amd64"

chmod +x "${ROOT}/bazelisk"
ln -sf "${ROOT}/bazelisk" "${ROOT}/bazel"

curl -fsSL -o "${ROOT}/buildifier" "https://github.com/bazelbuild/buildtools/releases/download/v${BUILDIFIER}/buildifier-linux-amd64"
chmod +x "${ROOT}/buildifier"

bazel version
buildifier --version
