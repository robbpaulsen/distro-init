\# READ CAREFULLY

Before changing permissions to any script read code carefully, for I'll take no responsability on any broken OS or hardware malfunction. Please notice that there are files that are named very similar with the difference of ARM and AMD, this also applies on the Repository automated script one's for ARM64 architecture and the other one for AMD64 and mainly for Arch Linux Based Systems, I'm 95% sure that Debian/Ubuntu systems will have no harm as well but will not hurt to actually read the scripts.

\# "Distro Initialization"

I hate doing the same things whenever I have to reainstall my Os, so with this project I will optimize this process. The first
steps will aim to setup my `$USER` permissions and add it to all the groups that's needed to be, after that tweak the package
manager and some conf files depending on the Operating System since I work/learn/develop on an Arch based Os and my main machine
is a Red Hat based distro.

If by random chance you end up here and and have something to add or suggest it would be very well welcome.

\## Work-Flow:
1. Post install and in $USER home folder create all the directories needed

``` 
mkdir -p $HOME/Documents/{code,projects,notes,reading,tools,writeups} &&
mkdir -p $HOME/Documents/tools/prog_langs/src/ &&
mkdir -p $HOME/Pictures/wallpapers/ $HOME/.local/bin/ $HOME/.local/share/ $HOME/.local/share/fonts $HOME/.local/share/icons/ $HOME/.src/ $HOME/.src/drivers/ &&
mkdir -p $HOME/.config/{bspwm,bat,lsd,fd,ripgrep,alacritty,kitty,polybar,dmenu,eww,nvim,vim,zsh,bash,xplr,ranger,sxhkd,i3,autostart,neofetch,nuclei,protonvpn,termshark,dunst} &&
mkdir -p $HOME/Documents/code/bash/ $HOME/Documents/code/python/
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

# Golang Installation Unattended
mkdir -p $HOME/Documents/tools/prog_langs/src &&
cd $HOME/Documents/tools/prog_langs/src &&
wget https://go.dev/dl/go1.20.2.linux-amd64.tar.gz &&
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.20.2* &&
export PATH=$PATH:/usr/local/go/bin &&
export PATH=$PATH:/home/$USER/go/bin &&

# Rust and Cargo Headless and Unnatended Installation
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -sSf | sh -s -- -y --profile default --no-modify-path --default-toolchain nightly &&

# Adding Cargo tu env and then setting up local cargo call
export PATH=$PATH:$HOME/.cargo/bin/
echo 'export PATH=$PATH:/usr/local/go/bin/ >> ~/.profile
echo 'export PATH=$PATH:/usr/local/go/bin/ >> ~/.zprofile

# NVM headless installation
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash &&
source $HOME/.zshrc 2>& /dev/null &&
source $HOME/.bashrc 2>& /dev/null &&

# NPM installation and setting the version
nvm install --lts &&
nvm use --lts &&

# Yarn installation with npm
npm install --global yarn
```

# DISCLAIMER

On any circumstance I'm qualified or consider myself an expert on coding/scriptinglogic/arrays/lists/etc , I'm learning at my own pace and this project is just to quickly fix a 3 hr waste of time on reinstalling the same things over and over again. I'll trie to continue to update as to code/write better scripts. Any suggestions email me, but will not make any changes directly or let no one else to be pushing or branching directly.