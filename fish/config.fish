fastfetch -c $HOME/.config/fastfetch/config.jsonc
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME/.config"
function fish_greeting
#do nothing
end


starship init fish | source
