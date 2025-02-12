#!/bin/bash
if command -v nvim; then echo nvim is already installed!; exit 0; fi

mkdir /tmp/install_nvim_locally
cd /tmp/install_nvim_locally

# Broken
#wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz

FILE_NAME=nvim-linux-$(uname -m)

wget "https://github.com/neovim/neovim/releases/download/nightly/$FILE_NAME.tar.gz"
tar xzvf $FILE_NAME.tar.gz

mkdir -p ~/.local/bin
cp $FILE_NAME/bin/nvim ~/.local/bin


