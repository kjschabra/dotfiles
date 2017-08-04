#!/bin/bash

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh

git clone https://github.com/pashka4281/dotfiles.git ~/.dotfiles
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle

mkdir .vim || echo '.vim directory exists already...continuing'
ln -s ~/.dotfiles/vim/colors ~/.vim/colors
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/gvimrc ~/.gvimrc

ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/bash_aliases ~/.bash_aliases
ln -s ~/.dotfiles/bash_profile ~/.bash_profile
ln -s ~/.dotfiles/irbrc ~/.irbrc
ln -s ~/.dotfiles/gemrc ~/.gemrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/ackrc ~/.ackrc

