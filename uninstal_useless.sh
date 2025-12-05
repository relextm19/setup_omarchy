#!/bin/bash

echo "uninstalling signal"
sudo pacman -Rns --noconfirm signal-desktop

echo "uninstalling chromium"
sudo pacman -Rns --noconfirm omarchy-chromium

omarchy-webapp-remove
