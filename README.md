# "Distro Initialization"

I hate doing the same things whenever I have to reainstall my Os, so with this project I will optimize this process. The first
steps will aim to setup my `$USER` permissions and add it to all the groups that's needed to be, after that tweak the package
manager and some conf files depending on the Operating System since I work/learn/develop on an Arch based Os and my main machine
is a Red Hat based distro.

If by random chance you end up here and and have something to add or suggest it would be very well welcome.

## Work-Flow:
1. Post install and in $USER home folder create all the directories needed

``` 
mkdir -p $HOME/Documents/{code,drivers,projects,notes,reading,tools}
mkdir -p $HOME/Documents/tools/prog_langs/src
mkdir -p $HOME/Documents/tools/drivers/src/8821au-20210708
mkdir -p $HOME/Documents/tools/drivers/src/8814au
mkdir -p $HOME/Pictures/wallpapers/ $HOME/.local/bin/ $HOME/.local/share/ $HOME/.local/share/fonts $HOME/.local/share/icons/ $HOME/.src/ $HOME/.src/drivers/
mkdir -p $HOME/.config/{bspwm,bat,lsd,fd,ripgrep,alacritty,kitty,polybar,dmenu,eww,nvim,vim,zsh,bash,xplr,ranger,sxhkd,i3,autostart,neofetch,nuclei,protonvpn,termshark,dunst}
mkdir -p $HOME/Documents/code/ $HOME/Documents/code/bash/ $HOME/Documents/code/python/ $HOME/Documents/notes/ $HOME/Documents/writeups/ $HOME/Documents/projects/
```

2. Adding $USER to groups and setting permissions

```
sudo usermod -aG adm,disk,lp,mail,proxy,dialout,i2c,fax,voice,cdrom,flatpak,floppy,ftp,wheel,audio,,www-data,video,plugdev,input,kvm,netdev,i2c,redsocks,kismet,postgress,tcpdump,bluetooth,redis,mosquitto,rfkill,scanner,wireshark,docker,vboxusers,vboxsf,storage,http $USER
```

3. Before Updating/Upgrading I always tweak some configuration files from the pkg manager for faster downloads and setup parallel tasks

```
On Arch based distro edit the /etc/pacman.conf file, read it carefully and lookup for a line that has the word "PARALLEL" and depending on how many Cores your machine has, the usual VOXPOPULI choice is to set to either "4" or "8", even if your machine is of great power keeping in mind that I refer to regular house hold mother board and Ryzen 7 or 5.
```

4. Programming language toolchains installation:

```
# Scripts to auto download, create direcotries, setup and config in one bash script Golang, rustlang, cargo, nvm, npm, node,yarn, and other tools and pkg.

wget https://golang.google.cn/dl/go1.*linux-amd64.tar.gz $HOME/Downloads
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf $HOME/Downloads/go1.*amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
echo 'export PATH=$PATH:"/usr/local/go/bin"' >> ~/.zshrc
echo 'export PATH=$PATH:"/usr/local/go/bin"' >> ~/.profile
echo 'export PATH=$PATH:"/usr/local/go/bin"' >> ~/.bashrc
source $HOME/.profile

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh    # This oneliner installs Rust and all the toolchain headless, no need to intervene

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
```