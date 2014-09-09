if [ -f ~/.config/awesome/rc.lua ]; then
    mv ~/.config/awesome/rc.lua ~/.config/awesome/rc.lua.old
fi

ln -s ~/dotfiles/awesome/rc.lua ~/.config/awesome/

