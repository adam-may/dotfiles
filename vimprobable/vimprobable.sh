if [ -f ~/.config/vimprobable/vimprobablerc ]; then
    mv ~/.config/vimprobable/vimprobablerc ~/.config/vimprobable/vimprobablerc.old
fi

ln -s ~/dotfiles/vimprobable/vimprobablerc ~/.config/vimprobable/

