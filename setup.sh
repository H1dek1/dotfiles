#!/bin/bash

mkdir -p ~/.vim/bundle/

DOT_FILES=(.vimrc .tmux.conf)

for file in ${DOT_FILES[@]}
do
  ln -sf $HOME/dotfiles/$file $HOME/$file
done

ln -sf ~/dotfiles/colors ~/.vim/colors
ln -sf ~/dotfiles/autoload ~/.vim/autoload
ln -sf ~/dotfiles/filetype.vim ~/.vim/filetype.vim
