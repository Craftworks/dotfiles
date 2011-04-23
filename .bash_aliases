if [ "$OSTYPE" == "darwin10.0" ]; then
    alias ls='ls -G'
else
    alias ls='ls --color=auto'
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
