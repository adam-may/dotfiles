if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc.old
fi

ln -s ~/dotfiles/bash/.bashrc ~/

if [ -f ~/.bash_aliases ]; then
    mv ~/.bash_aliases ~/.bash_aliases.old
fi

ln -s ~/dotfiles/bash/.bash_aliases ~/

if [ -f ~/.bash_profile ]; then
    mv ~/.bash_profile ~/.bash_profile.old
fi

ln -s ~/dotfiles/bash/.bash_profile ~/

