#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Enable broadcom wifi chip
echo 'Enable broadcom wifi chip'

# Whitelist driver
rm /usr/etc/modprobe.d/broadcom-wl-blacklist.conf
rm /usr/etc/modprobe.d/default-disable-broadcom-wl.conf