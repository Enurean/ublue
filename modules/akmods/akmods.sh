#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

# Fetch akmods COPR
REPO="https://copr.fedorainfracloud.org/coprs/ublue-os/akmods/repo/fedora-${OS_VERSION}/ublue-os-akmods-fedora-${OS_VERSION}.repo"
wget "${REPO//[$'\t\r\n ']}" -P "/etc/yum.repos.d/"

get_yaml_array INSTALL '.install[]' "$1"

export AKMODS_DIRECTORY="/tmp/akmods"

cd "/tmp/modules/akmods/installers"

# Make every bling installer executable
find "$PWD" -type f -exec chmod +x {} \;

for ITEM in "${INSTALL[@]}"; do
    echo "Pulling from bling: $ITEM"
    # The trainling newline from $ITEM is removed
    eval "$PWD/${ITEM%$'\n'}.sh"
done

# Remove bling COPR
rm /etc/yum.repos.d/akmods*.repo