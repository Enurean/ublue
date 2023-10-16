#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Configure system76-power
echo 'Configure system76-power service'

systemctl enable com.system76.PowerDaemon.service system76-power-wake --now
system76-power graphics integrated