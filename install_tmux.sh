#!/bin/bash

echo "Installing tmux..."
sudo pacman -S --noconfirm tmux

echo "Cloning TPM into ~/.tmux/plugins/tpm..."
git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
