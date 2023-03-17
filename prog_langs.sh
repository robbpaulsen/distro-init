#!/usr/bin/bash

# Scripts to auto download, create direcotries, setup and config all in one,  bash script Golang, rustlang, cargo, nvm, npm, node, yarn and other tools and pkges.

# Rust and Cargo unattended isntallation
cd &&
curl https://sh.rustup.rs -sSf | sh -s -- --profile default --no-modify-path --default-toolchain nightly &&
# curl https://sh.rustup.rs -sSf | sh -s -- --profile default --no-modify-path --default-toolchain nightly toolchain nightly &&

# Adding Cargo tu environment and then setting up local cargo call
export PATH=$PATH:$HOME/.cargo/bin/ &&
export PATH=$PATH:$HOME/.rustup/ &&
echo "export PATH=$PATH:$HOME/.cargo/bin/" >> ~/.profile &&
echo "export PATH=$PATH:$HOME/.cargo/bin/" >> ~/.zprofile &&
echo "export PATH=$PATH:$HOME/.cargo/bin/" >> ~/.bash_profile &&

# Go headless unattended install Go version 1.20.2
mkdir -p $HOME/Documents/tools/prog_langs/src &&
cd $HOME/Documents/tools/prog_langs/src &&
wget https://go.dev/dl/go1.20.2.linux-amd64.tar.gz &&
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.20* &&
export PATH=$PATH:/usr/local/go/bin/ &&
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.zprofile &&
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile &&
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bash_profile &&
cd  &&
sleep 3 &&

# NVM headless installation
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash &&
source $HOME/.zshrc &&
source $HOME/.bashrc &&

# NPM installation and setting the version
nvm install --lts &&
nvm use --lts &&

# Yarn installation with npm
npm install --global yarn
# nvm install 'lts/*' --reinstall-packages-from=default --latest-npm