#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

function _update_ps1() {
  export PS1="$(~/dotfiles/powerline-shell.py $? 2> /dev/null)"
}

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

alias ls='ls --color=auto'
alias ll='ls -al'

#PS1='[\u@\h \W]\$ '

export EDITOR="vim"
export BROWSER="firefox"

if [ -f /usr/share/git/completion/git-completion.bash ]; then
	source /usr/share/git/completion/git-completion.bash
elif [ -f /usr/share/bash-completion/completions/git ]; then
	source /usr/share/bash-completion/completions/git
fi

if [ -f /usr/share/git/completion/git-prompt.sh ]; then
	source /usr/share/git/completion/git-prompt.sh
elif [ -f /etc/bash_completion.d/git-prompt ]; then
	source /etc/bash_completion.d/git-prompt
fi

source ~/dotfiles/.bash_aliases

export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=~/code

if [ -f ~/.autoenv/activate.sh ]; then
    source ~/.autoenv/activate.sh
elif [ -f /usr/bin/activate.sh ]; then
    source /usr/bin/activate.sh
fi

if [ -f /usr/bin/virtualenvwrapper.sh ]; then
	source /usr/bin/virtualenvwrapper.sh
fi
