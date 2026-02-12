#!/bin/sh

# Install starship
curl -fsSL https://starship.rs/install.sh | bash

# Install zinit
NO_EDIT=1 bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Setup neovim symlinks to vim config
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

# Setup neovim python support
pip install --user neovim
