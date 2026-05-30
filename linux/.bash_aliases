export TERM=xterm-color

## Aliases ##

# General aliasing
alias sba="source ~/.bashrc"
alias eba="code ~/.bash_aliases"
alias ipy="ipython"

# Listing
alias ll="ls -alh --color=auto"
alias ls="ls --color=auto"

# Grep
alias grep="grep --color=auto"

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

# Bash commands
alias search="find . -name $1"
alias remove="find . -name $1 -exec rm -rf {} \;"
alias check_libary="ldconfig -p | grep $1"

## Functions ##

# Grab field from string
field() {
    awk -F "${2:- }" "{ print \$${1:-1} }"
}

# Kill port
killport() {
    if [ -z "$1" ]; then
        echo "Usage: killport <port>"
        return 1
    fi

    fuser -k "${1}/tcp"
}

# Check if port is used
checkport() {
    if [ -z "$1" ]; then
        echo "Usage: checkport <port>"
        return 1
    fi

    if [ -z $(fuser "${1}/tcp") ]; then
	    echo "Port $1 not used"
    else
	    echo "Port $1 is being used"
    fi

}

# This is used to fix docker settings if ip issues arise
clean_routes() {
     ip route | grep br | field 1 | xargs -L1 sudo ip route del
}
