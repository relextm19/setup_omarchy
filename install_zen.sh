#!/bin/bash

echo "Installing zen browser"
yay -S --noconfirm zen-browser-bin &> /dev/null
xdg-settings set default-web-browser zen.desktop
