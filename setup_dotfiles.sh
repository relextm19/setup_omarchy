#!/bin/bash

REPO_URL="https://github.com/relextm19/dotfiles"
TARGET_DIR="$HOME/dotfiles"

if ! command -v git &> /dev/null; then
    echo "Git is not installed"
    exit 1
fi

if ! command -v stow &> /dev/null; then
    echo "Stow is not installed"
    exit 1
fi

if [ ! -d "$TARGET_DIR" ]; then
    echo "Cloning dotfiles..."
    git clone "$REPO_URL" "$TARGET_DIR"
else
    echo "Directory exists, skipping clone."
fi

PREVIOUS_DIR=$(pwd)
cd "$TARGET_DIR"

echo "Entering $(pwd) to stow packages..."

for d in */; do
    if [ -d "$d" ]; then
        pkg_name="${d%/}"
        
        # Skip the .git folder
        if [ "$pkg_name" == ".git" ]; then
            continue
        fi

        echo "deleting $HOME/.config/$pkg_name"
        #just dont put a package with a name like ../.. and you will be fine
        rm -fr "$HOME/.config/$pkg_name"

        echo "Stowing: $pkg_name"
        stow "$pkg_name"
    fi
done

cd "$PREVIOUS_DIR"

echo "Dotfiles setup complete!"
