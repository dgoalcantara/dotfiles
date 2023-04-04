export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"

plugins=(git dnf zoxide)

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export EDITOR='vim'

alias ls='exa --icons --group-directories-first'
alias ll='exa -lbGF --git --icons --group-directories-first'
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale --icons --group-directories-first'
alias lt='exa --tree --level=2 --icons --group-directories-first'
alias cdd="cd ~/Downloads"
alias cdD="cd ~/Desktop"
alias c="clear"
alias cls="clear"
alias q="exit"

# bun completions
[ -s "/home/diego/.bun/_bun" ] && source "/home/diego/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
