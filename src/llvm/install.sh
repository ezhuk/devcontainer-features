#!/usr/bin/env bash
set -e

VERSION="${VERSION:-22.1.6}"
DIR="/opt/llvm/${VERSION}"

apt-get update
apt-get install -y --no-install-recommends curl ca-certificates xz-utils
rm -rf /var/lib/apt/lists/*

curl -fsSL -o llvm.tar.xz "https://github.com/llvm/llvm-project/releases/download/llvmorg-${VERSION}/LLVM-${VERSION}-Linux-X64.tar.xz"

mkdir -p "${DIR}"
tar -xJf llvm.tar.xz -C "${DIR}" --strip-components=1
rm llvm.tar.xz

ln -sf "${DIR}/bin/clang" /usr/local/bin/clang
ln -sf "${DIR}/bin/clang++" /usr/local/bin/clang++

clang --version
