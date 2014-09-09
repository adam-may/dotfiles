if [ -f ~/.vimrc.before.local ]; then
    mv ~/.vimrc.before.local ~/.vimrc.before.local.old
fi

ln -s ~/dotfiles/vim/.vimrc.before.local ~/

if [ -f ~/.vimrc.bundles.local ]; then
    mv ~/.vimrc.bundles.local ~/.vimrc.bundles.local.old
fi

ln -s ~/dotfiles/vim/.vimrc.bundles.local ~/

if [ -f ~/.vimrc.local ]; then
    mv ~/.vimrc.local ~/.vimrc.local.old
fi

ln -s ~/dotfiles/vim/.vimrc.local ~/

