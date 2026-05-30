export TERM=xterm-color

## Aliases ##

# General aliasing
alias sba="source ~/.bashrc"
alias eba="code ~/.bash_aliases"
alias ipy="ipython"

# Listing
alias ll="ls -alh --color=auto"
alias ls="ls --color=auto"

# Git
alias gs="git status"
alias gc="git commit -m"
alias gp="git push"
alias ga="git add"

# Conda
alias ca="conda activate"
alias cda="conda deactivate"

# Docker commands
alias prune="docker container prune -f && docker image prune -f "
alias di="docker images"
alias dcl="docker container ls"