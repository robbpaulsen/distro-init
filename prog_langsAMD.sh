#!/usr/bin/bash

# Scripts to auto download, create direcotries, setup and config all in one,  bash script Golang, rustlang, cargo, nvm, npm, node,yarn, and other tools and pkg.

# Rust and Cargo unattended isntallation
cd &&
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -sSf | sh -s -- -y --profile default --no-modify-path --default-toolchain nightly &&

# Adding Cargo tu environment and then setting up local cargo call
export PATH=$PATH:$HOME/.cargo/bin &&
export PATH=$PATH:$HOME/.rustup &&

---
# --> echo "export PATH=$PATH:$HOME/.cargo/bin" >> ~/.zshrc &&
---

# source $HOME/.profile     # have to check why I added this source file command here

mkdir -p $HOME/Documents/tools/prog_langs/src &&
cd $HOME/Documents/tools/prog_langs/src &&
wget https://go.dev/dl/go1.20.2.linux-amd64.tar.gz &&
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.20.2* &&
export PATH=$PATH:/usr/local/go/bin &&
export PATH=$PATH:/home/$USER/go/bin &&

---
# --> echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.zshenv &&
# --> echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.zprofile &&
---

cd  &&

# NVM headless installation
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash &&
source $HOME/.zshrc 2>& /dev/null &&
source $HOME/.bashrc 2>& /dev/null &&

# NPM installation and setting the version
nvm install --lts &&
nvm use --lts &&

---
# nvm install 'lts/*' --reinstall-packages-from=default --latest-npm
---

# Yarn installation with npm
npm install --global yarn

# Commented out installation via cargo, might be a better practice to source install
#cargo install fd-find du-dust lscolors vivid bat hexyl xplr ripgrep arp-scan navi