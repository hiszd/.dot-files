#!/bin/bash

mkdir ~/build
cd ~/build
git clone https://github.com/neovim/neovim nvim
cd nvim

sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen

make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

cd ~
