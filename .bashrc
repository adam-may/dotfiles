#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR="vim"
export BROWSER="firefox"

source /usr/share/git/completion/git-completion.bash
source /usr/share/git/completion/git-prompt.sh
source ~/dotfiles/.bash_aliases

export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=~/code

source /usr/bin/virtualenvwrapper.sh

source ~/.autoenv/activate.sh
