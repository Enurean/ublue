#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Update Firefox Gnome Theme automatically if already installed
for firefox_gnome_theme in "$HOME/.var/app/org.mozilla.firefox/.mozilla/firefox/"*".default"*"/chrome/firefox-gnome-theme/"; do
    if [-d "$firefox_gnome_theme"]; then
        cd "$firefox_gnome_theme"
        git pull
    fi
done