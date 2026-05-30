#!/usr/bin/env bash
set -e

VERSION="${VERSION:-22.1.6}"
ROOT="${ROOT:-/opt/llvm/${VERSION}}"

apt-get update
apt-get install -y --no-install-recommends curl ca-certificates xz-utils
rm -rf /var/lib/apt/lists/*

curl -fsSL -o llvm.tar.xz "https://github.com/llvm/llvm-project/releases/download/llvmorg-${VERSION}/LLVM-${VERSION}-Linux-X64.tar.xz"

mkdir -p "${ROOT}"
tar -xJf llvm.tar.xz -C "${ROOT}" --strip-components=1
rm llvm.tar.xz

ln -sf "${ROOT}/bin/clang" /usr/local/bin/clang
ln -sf "${ROOT}/bin/clang++" /usr/local/bin/clang++

ln -sf "${ROOT}/bin/clang-format" /usr/local/bin/clang-format
ln -sf "${ROOT}/bin/clang-tidy" /usr/local/bin/clang-tidy

clang --version
