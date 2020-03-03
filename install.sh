#!/bin/bash

# install nvim
brew install nvim
brew install tmux
brew install jesseduffield/lazygit/lazygit

chsh -s /bin/zsh
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc

# settings for nvim
sudo ln -s $XDG_CONFIG_HOME/nvim/coc $XDG_CONFIG_HOME/coc

# setting for tmux
sudo ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf

