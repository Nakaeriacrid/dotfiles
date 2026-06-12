fastfetch -c $XDG_CONFIG_HOME/fastfetch/config.jsonc
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$XDG_CONFIG_HOME"
function fish_greeting
#do nothing
end


starship init fish | source
