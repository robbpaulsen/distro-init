# Enable aliases to be sudo’ed
alias sudo='sudo '
alias ~="cd ~"
alias dotfiles='cd $DOTFILES_PATH'

# Git
alias gaa="git add -A"
alias gc='$DOTLY_PATH/bin/dot git commit'
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd='$DOTLY_PATH/bin/dot git pretty-diff'
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gb="git branch"
alias gl='$DOTLY_PATH/bin/dot git pretty-log'

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'
alias up='dot package update_all'

alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -alFh'
alias l='lsd -1'
alias l.="lsd -A | grep -E '^\.'"
#
# fix obvious typo's
alias cd..='cd ..'
alias pdw='pwd'
alias suod="sudo"
alias sduo="sudo"
alias udso="sudo"
alias sdou="sudo"
alias instal="install"
alias istall="install"
alias isntall="install"
alias isnstall='install'
alias istal="install"
alias atp="apt"
alias pudate="update"
alias udpte="update"
alias nfd='dnf'

# Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# # readable output
alias df='df -h'

# # free
alias free="free -mt"

# # continue download
alias wget="wget -c"

# # userlist
alias userlist="cut -d: -f1 /etc/passwd"

# # merge new settings
alias merge="xrdb -merge ~/.Xresources"
#
# # Aliases for software managment
# # pacman or pm / apt / dpkg
alias ainfo="apt info"
alias asearch="apt search"
alias ainstall="sudo apt-get --autoremove --no-install-recommends install"

# # ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

# # add new fonts
alias update-fc="sudo fc-cache -fv"

# # backup contents of /etc/skel to hidden backup folder in home/user
alias bupskel='cp -Rf /etc/skel ~/.skel-backup-$(date +%Y.%m.%d-%H.%M.%S)'

# # copy shell configs
alias cb='cp /etc/skel/.bashrc ~/.bashrc && exec bash'
alias cz='cp /etc/skel/.zshrc ~/.zshrc && echo "Copied."'
#
# # switch between bash and zsh
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"
#
# ## kill commands
# # quickly kill conkies
# alias kc='killall conky'
# # quickly kill polybar
alias kp='killall polybar'
# # quickly kill picom
alias kpi='killall picom'
#
# # hardware info --short
alias hw="hwinfo --short"

# # Cleanup orphaned packages
alias cleanse="sudo apt-get autoremove -y && sudo apt-get clean -y && sudo apt autoclean"

# # clear
alias clean="clear; seq 1 $(tput cols) | sort -R | sparklines | lolcat"
#
# # search content with ripgrep
#alias rg="rg --sort"
#
# # get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"
#
alias nash="nvim ~/.bashrc"
alias nzsh="nvim ~/.zshrc"
#

# #systeminfo
alias probe="sudo -E hw-probe -all -upload"
alias sysfailed="systemctl list-units --failed"

# #shutdown or reboot
alias safereboot="sudo shutdown now"
alias sr="sudo reboot"

#give the list of all installed desktops - xsessions desktops
alias xd="ls /usr/share/xsessions"
#

# preview images
alias icat="kitty +kitten icat"

# list files
alias ls='lsd'
alias l='lsd -1'
alias la='lsd -a'
alias ll='lsd -ahl'

# directory
alias mkdir='mkdir -pv'

# Git
alias clone='git clone'

# top 10 processes eating cpu
alias topcpu="/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"

# reload bash/zsh conf
alias rebash='source ~/.bashrc'
alias rezsh='source ~/.zshrc'

# Wifi pentesting
alias sysstats='sudo systemctl status wpa_supplicant.service NetworkManager.service | grep "Active"'
alias checkmon='iw dev | grep type | cut -d " " -f 2'
alias checkrfkill='sudo rfkill list all'
alias unblockwlan='sudo rfkill unblock wlan'

# cargo
alias krgo-init="cargo clean && cargo update"
alias krgo="cargo update --all-features --path=."
alias krgo2deb="cargo-deb --verbose --strip --compress-type xz --package"
alias rmt="rmt -i --verbose"
alias rm="rmt"

# zoxide
alias z='zoxide'

# dotdrop dotfiles Manager
alias dotdrop='$HOME/Projects/kali-dotfiles/dotdrop.sh --cfg=$HOME/Projects/kali-dotfiles/config.yaml'
