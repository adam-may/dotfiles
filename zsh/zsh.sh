if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.old
fi
ln -s ~/dotfiles/zsh/.zshrc ~

