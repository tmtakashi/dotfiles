# vim keybind
bindkey -v

PROMPT="
%{${fg[magenta]}%}[%n@%m]%{${reset_color}%} %~
$"

KEYTIMEOUT=1

# for neovim
export XDG_CONFIG_HOME=$HOME/dotfiles
export XDG_DATA_HOME=$HOME/dotfiles

export PATH="/usr/local/opt/llvm/bin:$PATH"
