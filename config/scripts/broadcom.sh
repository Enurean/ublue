#!/usr/bin/env bash

# Your code goes here.
echo 'Enable broadcom wifi chip'
rpm-ostree install /tmp/rpms/kmods/*wl*.rpm
rm system_files/usr/etc/modprobe.d/broadcom-wl-blacklist.conf
rm system_files/usr/etc/modprobe.d/default-disable-broadcom-wl.conf

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail