#!/bin/bash

# intall tools
brew install tmux
brew install starship
brew install jesseduffield/lazygit/lazygit

sudo chsh -s /bin/zsh
ln -sf $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -sf $HOME/dotfiles/.vimrc $HOME/.vimrc


# setting for tmux
sudo ln -sf $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf

source $HOME/.zshrc
