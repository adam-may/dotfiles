#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

eval `ssh-agent`
ssh-add
eval $(keychain --eval --agents ssh -Q --quiet id_rsa)

