#!/usr/bin/env bash
set -e

apt-get update
apt-get install -y --no-install-recommends curl ca-certificates bzip2
rm -rf /var/lib/apt/lists/*

curl -fsSL -o micromamba.tar.bz2 https://micro.mamba.pm/api/micromamba/linux-64/latest

tar -xvjf micromamba.tar.bz2 -C /usr/local/bin --strip-components=1 bin/micromamba
rm micromamba.tar.bz2

chmod 755 /usr/local/bin/micromamba

micromamba --version
