#!/bin/bash

echoi "install sudo apt install build-essential"

echo "install Neovim"
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim -y


echo "install Node js v16.x"
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs


echo "Install Packer Manger Plugins"
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Install Lua Language Server"
wget https://hub.fastgit.xyz/ninja-build/ninja/releases/download/v1.10.2/ninja-linux.zip

mkdir -p $HOME/local/bin
unzip ninja-linux.zip -d $HOME/local/bin

sudo apt install ninja

mkdir -p $HOME/tools/ && cd $HOME/tools
git clone --depth=1 https://hub.fastgit.xyz/sumneko/lua-language-server

cd lua-language-server
# if the cloning speed is too slow, edit .gitmodules and replace github.com
# with hub.fastgit.org, which should be faster than github.
git submodule update --init --recursive

# build on Linux
cd 3rd/luamake
compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild

# For macOS
# export PATH="$HOME/tools/lua-language-server/bin/macOS:$PATH"

# For Linux
# export PATH="$HOME/tools/lua-language-server/bin/Linux:$PATH"



echo "Install Typescript-langugae-server"
sudo npm i -g typescript-language-server 

sudo npm install --global yarn

# sudo apt install yarn -y

echo "install tree-sitter"

sudo npm install tree-sitter-cli

echo "install prettierd"
sudo npm install -g @fsouza/prettierd

echo "install zsh"

sudo apt install zsh -y

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
