if [ -f ~/.gitconfig ]; then
    mv ~/.gitconfig ~/.gitconfig.old
fi

ln -s ~/dotfiles/git/.gitconfig ~/

