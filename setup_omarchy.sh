#!/bin/bash

#esentials
./generate_ssh_key.sh

#dotfiles
./install_stow.sh
./setup_dotfiles.sh

#development
./install_tmux.sh
./install_zsh.sh

#apps
./install_steam.sh
./install_zen.sh

#cleanup
./uninstal_useless.sh
