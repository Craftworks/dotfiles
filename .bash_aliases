alias ls='ls --color=auto'
alias l='ls -CF'
alias ll='ls -alF'
alias la='ls -A'
alias lh='ls -lFh'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias screen='LANG=en_US.UTF-8 screen'
alias rsync='rsync -avz -e ssh'

# perl
alias pmver='perl -e '"'"'for (@ARGV) { s{[-/]}{::}go; eval "use $_"; printf "$_ => %s\n", ${"$_\::VERSION"} || "not installed"; }'"'"
