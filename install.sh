#!/bin/bash

# intall tools
brew install vim
brew install tmux
brew install starship
brew install jesseduffield/lazygit/lazygit

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install vim plugins
vim -c ':PlugInstall'

sudo chsh -s /bin/zsh
ln -sf $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -sf $HOME/dotfiles/.vimrc $HOME/.vimrc


# setting for tmux
sudo ln -sf $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf

source $HOME/.zshrc
