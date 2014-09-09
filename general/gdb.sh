if [ -f ~/.gdbinit ]; then
    mv ~/.gdbinit ~/.gdbinit.old
fi

ln -s ~/dotfiles/general/.gdbinit ~/

