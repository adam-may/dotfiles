if [ -f ~/.profile ]; then
    mv ~/.profile ~/.profile.old
fi

ln -s ~/dotfiles/general/.profile ~/

