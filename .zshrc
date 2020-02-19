# vim keybind
bindkey -v

PROMPT="
%{${fg[magenta]}%}[%n@%m]%{${reset_color}%} %~
$"

export XDG_CONFIG_HOME=$HOME/dotfiles
export PATH="/usr/local/opt/llvm/bin:$PATH"
