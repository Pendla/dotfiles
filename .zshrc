export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/simonpetersson/.oh-my-zsh"
export TERM=xterm
ZSH_THEME="clean"
ENABLE_CORRECTION="true"
plugins=(git brew npm zsh-autosuggestions colorize)

source $ZSH/oh-my-zsh.sh

alias vg="vagrant"
alias backend="cd ~/Projects/backend/repo/"
alias frontend="cd ~/Projects/frontend/repo"
alias ssh='kitty +kitten ssh'
alias diff='kitty +kitten diff'

kitty + complete setup zsh | source /dev/stdin
