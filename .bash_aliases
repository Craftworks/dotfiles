if [ $(uname) == "Linux" ]; then
    . ~/.bash_aliases-linux
elif [ $(uname) == "Darwin" ]; then
    . ~/.bash_aliases-darwin
fi

alias l='ls -CF'
alias ll='ls -alF'
alias la='ls -A'
alias lh='ls -lFh'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias screen='LANG=en_US.UTF-8 screen'
alias rsync='rsync -avz -e ssh'
