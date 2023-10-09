#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'Enable broadcom wifi chip'
rpm-ostree install /tmp/rpms/kmods/*wl*.rpm
# rm /etc/modprobe.d/broadcom-wl-blacklist.conf
# rm /etc/modprobe.d/default-disable-broadcom-wl.conf