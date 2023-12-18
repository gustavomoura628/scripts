#!/bin/bash
cd /tmp
git clone https://github.com/vim/vim
cd vim
make
mkdir ~/.local
make install DESTDIR=~/.local

#ln -sf ~/.local/usr/local/bin/vim ~/bin/vim # Maybe works
echo 'alias vim=~/.local/usr/local/bin/vim' > ~/.bashrc # Works 100% of the time
source ~/.bashrc
