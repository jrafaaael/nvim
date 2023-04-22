#!/usr/bin/env bash

echo "installing fira-code font"
sudo apt install fonts-firacode

echo "cd to 'Downloads' or 'Descargas' folder"
cd ~/Downloads

echo "donwloading last version of lazygit"
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit

echo "installing lazygit"
sudo install lazygit /usr/local/bin
lazygit --version
