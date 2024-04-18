#!/bin/sh

# Emacs
mkdir -p ~/.emacs.d/lisp
mkdir -p ~/.emacs.d/lisp/cql-mode
mkdir -p ~/.emacs.d/snippets/org-mode

ln -s ~/projects/dotfiles/.emacs.d/ufp_logo.txt ~/.emacs.d
ln -s ~/projects/dotfiles/.emacs.d/init.el ~/.emacs.d
ln -s ~/projects/dotfiles/.emacs.d/main.el ~/.emacs.d
ln -s ~/projects/dotfiles/.emacs.d/packages.el ~/.emacs.d
ln -s ~/projects/dotfiles/.emacs.d/linux-style.el ~/.emacs.d
ln -s ~/projects/dotfiles/.emacs.d/pg-style.el ~/.emacs.d
ln -s ~/projects/dotfiles/.emacs.d/customizations.el ~/.emacs.d
ln -s ~/projects/dotfiles/.emacs.d/lisp/rust-config.el ~/.emacs.d/lisp
ln -s ~/projects/dotfiles/.emacs.d/lisp/lsp-mode-c.el ~/.emacs.d/lisp
ln -s ~/projects/dotfiles/.emacs.d/lisp/python-config.el ~/.emacs.d/lisp
ln -s ~/projects/dotfiles/.emacs.d/lisp/evil-config.el ~/.emacs.d/lisp
ln -s ~/projects/dotfiles/.emacs.d/lisp/custom-modes-config.el ~/.emacs.d/lisp
ln -s ~/projects/dotfiles/.emacs.d/lisp/cql-mode/cql-mode.el ~/.emacs.d/lisp/cql-mode
ln -s ~/projects/dotfiles/.emacs.d/snippets ~/.emacs.d/snippets

## Snippets
ln -s ~/projects/dotfiles/.emacs.d/snippets/org-mode/begcm ~/.emacs.d/snippets/org-mode
ln -s ~/projects/dotfiles/.emacs.d/snippets/org-mode/begsrc ~/.emacs.d/snippets/org-mode

# Fish
ln -s ~/projects/dotfiles/config.fish ~/.config/fish/

# i3/i3status

mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status

ln -s ~/projects/dotfiles/i3/config ~/.config/i3
ln -s ~/projects/dotfiles/i3status/config.desktop ~/.config/i3status/config

# tmux
ln -s ~/projects/dotfiles/.tmux.conf ~/

# vim
ln -s ~/projects/dotfiles/.vimrc ~/

# Alacritty
mkdir -p ~/.config/alacritty
ln -s ~/projects/dotfiles/alacritty/alacritty.toml ~/.config/alacritty

# git
ln -s ~/projects/dotfiles/.gitignore_global ~/
git config --global core.excludesFile '~/.gitignore_global'
