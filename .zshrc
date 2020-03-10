# vim keybind
bindkey -v

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

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="$HOME/.rbenv/versions/2.0.0-p353/bin:$PATH"

[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
alias vim=nvim
alias vrc='vim ~/dotfiles/nvim/init.vim'
alias zrc='vim ~/dotfiles/.zshrc'

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/dotfiles/.starship
