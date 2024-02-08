#!/bin/bash
if command -v nvim
then
    echo program is already installed!
    exit 0
fi

mkdir /tmp/install_nvim_locally
cd /tmp/install_nvim_locally
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
cp nvim-linux64/bin/nvim ~/.local/bin
