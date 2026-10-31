#!/usr/bin/env bash
set -e

VERSION="${VERSION:-16.2.0}"
ROOT="${ROOT:-/opt/gcc/${VERSION}}"

micromamba create -y \
    -r /opt/micromamba \
    -p "${ROOT}" \
    --override-channels \
    -c conda-forge \
    "gcc=${VERSION}" \
    "gxx=${VERSION}"

ln -sf "${ROOT}/bin/x86_64-conda-linux-gnu-gcc" /usr/local/bin/gcc
ln -sf "${ROOT}/bin/x86_64-conda-linux-gnu-g++" /usr/local/bin/g++

gcc --version
g++ --version
