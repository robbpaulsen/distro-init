#!/usr/bin/bash
# Script for a more unattended, headless setup and configurationg for the basic things on any new linux installation.

# Rust and Cargo unattended installation
cd && 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -sSf | sh -s -- -y --profile default --no-modify-path --default-toolchain stable &&
. "$(HOME/.cargo/env)" &&

# Adding Cargo tu environment and then setting up local cargo call
# export PATH=$PATH:/home/$USER/.cargo/bin &&
# export PATH=$PATH:/home/$USER/.rustup &&
# echo 'export PATH=$PATH:/home/$USER/.cargo/bin' >> ~/.zprofile && &&
# export PATH=$PATH:/home/$USER/.rustup && >> ~/.zs &&
# echo "export PATH=$PATH:$HOME/.cargo/bin" >> ~/.zshrc &&   # Podemos ahorrarnos problemas con el PATH si solo seguimos la syntaxis del archivo de "~/.profile" y solo al final de las instalaciones borrar el presente y colocar el propio

# ---
# source $HOME/.profile     # have to check why I added this source file command here

# Golang unattended installation
cd &&
wget https://go.dev/dl/go1.21.3.linux-amd64.tar.gz &&
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.20.2* &&
export PATH=$PATH:/usr/local/go/bin &&
# echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.zshenv &&
# echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.zprofile &&
cd  &&
---

# NVM headless installation
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash &&

# NPM installation and setting the version
nvm install --lts &&
nvm use --lts &&

#---
# nvm install 'lts/*' --reinstall-packages-from=default --latest-npm
#---

# Yarn installation with npm
npm install --global yarn
# Commented out installation via cargo, might be a better practice to source install