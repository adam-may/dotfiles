if [ ! -d ~/.oh-my-zsh/themes/ ]; then
    exit 1
fi

if [ -f ~/.oh-my-zsh/themes/adammay.zsh-theme ]; then
    rm ~/.oh-my-zsh/themes/adammay.zsh-theme
fi

ln -s ~/dotfiles/zsh/adammay.zsh-theme ~/.oh-my-zsh/themes/

