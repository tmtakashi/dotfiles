# vim keybind
#bindkey -v

PROMPT="
%{${fg[magenta]}%}[%n@%m]%{${reset_color}%} %~
$"

KEYTIMEOUT=1

# for neovim
export XDG_CONFIG_HOME=$HOME/dotfiles
export XDG_DATA_HOME=$HOME/dotfiles
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export PATH="/usr/local/opt/llvm/bin:$PATH"

alias vim=nvim
alias vrc='vim ~/dotfiles/nvim/init.vim'
alias zrc='vim ~/dotfiles/.zshrc'

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/dotfiles/.starship
