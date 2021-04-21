#!/bin/sh

# Install starship
curl -fsSL https://starship.rs/install.sh | bash

# Install antigen
curl -L git.io/antigen > ~/.zsh/antigen.zsh

# Setup neovim symlinks to vim config
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

# Setup neovim python support
pip install --user neovim
