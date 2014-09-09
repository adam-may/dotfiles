if [ -f ~/.ipython/profile_default/static/custom/custom.css ]; then
    mv ~/.ipython/profile_default/static/custom/custom.css ~/.ipython/profile_default/static/custom/custom.css.old
fi

ln -s ~/dotfiles/ipython/custom.css ~/.ipython/profile_default/static/custom/

