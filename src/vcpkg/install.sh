#!/usr/bin/env bash
set -e

VERSION="${VERSION:-2026.03.18}"
ROOT="${ROOT:-/usr/local/vcpkg}"

apt-get update
apt-get install -y --no-install-recommends git curl ca-certificates
rm -rf /var/lib/apt/lists/*

rm -rf "${ROOT}"
git clone --branch "${VERSION}" --depth 1 https://github.com/microsoft/vcpkg.git "${ROOT}"

"${ROOT}/bootstrap-vcpkg.sh" -disableMetrics
ln -sf "${ROOT}/vcpkg" /usr/local/bin/vcpkg

cat >/etc/profile.d/vcpkg.sh <<EOF
export VCPKG_ROOT=${ROOT}
EOF

vcpkg version
