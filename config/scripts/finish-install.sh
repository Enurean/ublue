#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Uninstall gnome-extensions-app
echo "Uninstall gnome-extensions-app"
rpm-ostree uninstall gnome-extensions-app