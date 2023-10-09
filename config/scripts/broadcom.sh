#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'Enable broadcom wifi chip'
# rm -R /etc/modprobe.d/broadcom-wl-blacklist.conf
# rm -R /system_files/usr/etc/modprobe.d/default-disable-broadcom-wl.conf