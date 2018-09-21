#!/usr/bin/env bash

echo "========================================"
echo "                VIM-IDE"
echo
echo " 1 - Simple mode"
echo " 2 - Full mode" 
echo "========================================"
read -p "Set vim-ide mode: " -n 1 mode
echo

# init vim
mkdir -p ~/.vim

if [ "$mode" == "1" ]
then
    # set vimrc
    cp vimrc_simple ~/.vimrc
elif [ "$mode" == "2" ]
then
    # get vundle
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

    # set vimrc
    cp vimrc_full ~/.vimrc

    # fetch plugins
    vim +BundleInstall +qall

    # to do
    echo "There is more to do:"
    echo "- Beautiful Powerline"
    echo "  apt-get install vim-gtk"
    echo "- YCM"
    echo "  cd ~/.vim/bundle/YouCompleteMe && type cmake && python install.py --clang-completer"
    echo "- JavaScript YCM support"
    echo "  cd ~/.vim/bundle/tern_for_vim && npm install"
else
    echo "Invalid mode number. Exiting..."
    exit 0
fi

# copy colorscheme
cp -r colors ~/.vim
