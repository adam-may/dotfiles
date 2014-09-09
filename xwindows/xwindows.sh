if [ -f ~/.Xdefaults ]; then
    mv ~/.Xdefaults ~/.Xdefaults.old
fi

ln -s ~/dotfiles/xwindows/.Xdefaults ~/

if [ -f ~/.xinitrc ]; then
    mv ~/.xinitrc ~/.xinitrc.old
fi

ln -s ~/dotfiles/xwindows/.xinitrc ~/

if [ -f ~/.xprofile ]; then
    mv ~/.xprofile ~/.xprofile.old
fi

ln -s ~/dotfiles/xwindows/.xprofile ~/

