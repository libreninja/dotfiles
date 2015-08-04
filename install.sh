#!/bin/sh

if [ ! -d "$HOME/.dotfiles" ]; then
    echo "fresh dotfile installation"
    git clone --depth=1 https://github.com/libreninja/dotfiles.git "$HOME/.dotfiles"
    cd "$HOME/.dotfiles"
    [ "$1" = "ask" ] && export ASK="true"
    ln -sf "$HOME/.dotfiles/vim" "$HOME/.vim"
    ln -sf "$HOME/.dotfiles/vim/vimrc" "$HOME/.vimrc"
else
    echo "dotfiles already installed"
fi
