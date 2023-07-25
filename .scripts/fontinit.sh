#!/bin/fish

mkdir ~/build/fonts
sudo mkdir /usr/share/fonts/TTF
sudo mkdir /usr/share/fonts/OTF

cd ~/build/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/NerdFontsSymbolsOnly.zip
unzip -d NerdFontSymbolsOnly NerdFontsSymbolsOnly.zip
cd NerdFontSymbolsOnly
sudo cp *.ttf /usr/share/fonts/TTF
sudo cp *.otf /usr/share/fonts/OTF

cd ~/build/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip
unzip -d FiraCode FiraCode.zip
cd FiraCode
sudo cp *.ttf /usr/share/fonts/TTF
sudo cp *.otf /usr/share/fonts/OTF
