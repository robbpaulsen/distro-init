# "Distro Initialization"

I hate doing the same things whenever I have to reainstall my Os, so with this project I will optimize this process. The first
steps will aim to setup my `$USER` permissions and add it to all the groups that's needed to be, after that tweak the package
manager and some conf files depending on the Operating System since I work/learn/develop on an Arch based Os and my main machine
is a Red Hat based distro.

If by random chance you end up here and and have something to add or suggest it would be very well welcome.

## Work-Flow:
1. Post install and in $USER home folder create all the directories needed

``` 
mkdir -p $HOME/Pictures/wallpapers/ $HOME/.local/bin/ $HOME/.local/share/ $HOME/.local/share/fonts $HOME/.local/share/icons/ $HOME/.src/ $HOME/.src/drivers/
mkdir -p $HOME/.config/{bspwm,bat,lsd,fd,ripgrep,alacritty,kitty,polybar,dmenu,eww,nvim,vim,zsh,bash,xplr,ranger,sxhkd,i3,autostart,neofetch,nuclei,protonvpn,termshark,dunst}
mkdir -p $HOME/Documents/code/ $HOME/Documents/code/bash/ $HOME/Documents/code/python/ $HOME/Documents/notes/ $HOME/Documents/writeups/ $HOME/Documents/projects/
```

2. Adding $USER to groups and setting permissions

```
sudo usermod -aG adm,disk,lp,mail,proxy,dialout,fax,voice,cdrom,floppy,wheel,audio,,www-data,video,plugdev,input,kvm,netdev,i2c,redsocks,kismet,postgress,tcpdump,bluetooth,redis,mosquitto,scanner,wireshark,docker,vboxusers,vboxsf,storage,http $USER
```