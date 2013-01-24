# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=9999
HISTFILESIZE=9999
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# check homebrew
which -s brew || echo -e "[WARN] brew is not installed\n[WARN]   run 'ruby <(curl -fsSk https://raw.github.com/mxcl/homebrew/go)'"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f $(brew --prefix)/git ]; then
    . $(brew --prefix git)/etc/bash_completion.d/git-completion.bash
else
    . $HOME/.git-completion.bash
fi

# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

if [ "$TERM" = "xterm-256color" ]; then
    echo -ne "\033]0;$(whoami)@$(hostname)\007"
fi

PS1='\[\033[0m\]\u@\h\[\033[00m\]:\[\033[1;30m\]\w\[\033[00m\]\[\033[33m\]$(__git_ps1)\[\033[00m\]\$ '
