#!/usr/bin/bash

# Scripts to auto download, create direcotries, setup and config in one bash script Golang, rustlang, cargo, nvm, npm, node,yarn, and other tools and pkg.

wget https://golang.google.cn/dl/go1.*linux-amd64.tar.gz $HOME/Downloads
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf $HOME/Downloads/go1.*amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
echo 'export PATH=$PATH:"/usr/local/go/bin"' >> ~/.zshrc
echo 'export PATH=$PATH:"/usr/local/go/bin"' >> ~/.profile
echo 'export PATH=$PATH:"/usr/local/go/bin"' >> ~/.bashrc
source $HOME/.profile

1 | curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh    # This oneliner installs Rust and all the toolchain headless, no need to intervene

# Adding Cargo tu env and then setting up local cargo call
export PATH=$PATH:$HOME/.cargo/bin
echo 'export PATH=$PATH:$HOME/.cargo/bin >> ~/.zshrc
echo 'export PATH=$PATH:/usr/local/go/bin >> ~/.profile
echo 'export PATH=$PATH:/usr/local/go/bin >> ~/.zprofile
# source $HOME/.profile     # have to check why I added this source file command here

# NVM headless installation
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source $HOME/.zshrc

# NPM installation and setting the version
cd
nvm install --lts
nvm use --lts
nvm install 'lts/*' --reinstall-packages-from=default --latest-npm

# Yarn installation with npm
npm install --global yarn

# Commented out installation via cargo, might be a better practice to source install
#cargo install fd-find du-dust lscolors vivid bat hexyl xplr ripgrep arp-scan navi