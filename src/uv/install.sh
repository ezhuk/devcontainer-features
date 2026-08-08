#!/usr/bin/env bash
set -e

VERSION="${VERSION:-0.11.16}"
PYTHON="${PYTHON:-3.12}"

apt-get update
apt-get install -y --no-install-recommends curl ca-certificates
rm -rf /var/lib/apt/lists/*

curl -fsSL -o uv.sh "https://github.com/astral-sh/uv/releases/download/${VERSION}/uv-installer.sh"

UV_UNMANAGED_INSTALL=/usr/local/bin bash uv.sh
rm uv.sh

uv --version

UV_PYTHON_INSTALL_DIR=/opt/uv/python \
UV_PYTHON_BIN_DIR=/usr/local/bin \
uv python install "${PYTHON}" --default

python --version
