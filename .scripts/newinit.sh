#!/bin/fish

git config --global user.email "hiszd1@gmail.com"
git config --global user.name "Zion Koyl"

git config --global credential.helper store

config checkout
config submodule init
config submodule update
config config --local status.showUntrackedFiles no
