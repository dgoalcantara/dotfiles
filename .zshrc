export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"


# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

plugins=(git)

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
