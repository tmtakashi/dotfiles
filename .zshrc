# vim keybind
bindkey -v

PROMPT="
%{${fg[magenta]}%}[%n@%m]%{${reset_color}%} %~
$"

KEYTIMEOUT=1

export GO111MODULE=on
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

export GHQ_ROOT=$HOME/src
export GOPATH=$HOME
export PATH=$PATH:$GOBIN
export PATH="/usr/local/opt/llvm/bin:$PATH"

alias zrc='vim ~/dotfiles/.zshrc'

export STARSHIP_CONFIG=~/dotfiles/.starship

# Google Chrome
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias g="git"
alias lg="lazygit"

eval "$(starship init zsh)" # put this at the end
