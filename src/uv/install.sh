#!/usr/bin/env bash
set -e

VERSION="${VERSION:-0.11.7}"

apt-get update
apt-get install -y --no-install-recommends curl ca-certificates
rm -rf /var/lib/apt/lists/*

curl --proto '=https' --tlsv1.2 -LsSf "https://releases.astral.sh/github/uv/releases/download/${VERSION}/uv-installer.sh" | env UV_UNMANAGED_INSTALL=/usr/local/bin sh

uv --version
