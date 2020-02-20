#!/bin/bash

# install nvim
brew install nvim

chsh -s /bin/zsh
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc

# settings for nvim
sudo ln -s $XDG_CONFIG_HOME/nvim/coc $XDG_CONFIG_HOME/coc

