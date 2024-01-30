# Profile file like .profile
# ------------------------------------------------------------------------------
# Path - The higher it is, the more priority it has
# ------------------------------------------------------------------------------

export XDG_DESKTOP_DIR=$HOME/Desktop
export XDG_DOWNLOAD_DIR=$HOME/Downloads
export XDG_TEMPLATES_DIR=$HOME/Templates
export XDG_PUBLICSHARE_DIR=$HOME/Public
export XDG_DOCUMENTS_DIR=$HOME/Documents
export XDG_MUSIC_DIR=$HOME/Music
export XDG_PICTURES_DIR=$HOME/Pictures
export XDG_VIDEOS_DIR=$HOME/Videos
export XDG_CACHE_HOME=$HOME/.cache
export PATH=$PATH:$HOME/.local/bin
export CARGO_DEFAULT_BIN=${HOME}/.cargo/bin
export BIN_DIR="${BIN_DIR:-"$CARGO_DEFAULT_BIN"}"
export GOROOT=/home/heimdal/.go
export GOPATH=/home/heimdal/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export TERM=xterm-256color
export SHELL=/usr/bin/zsh
export EDITOR=nvim
export VISUAL=nvim
export BROWSER=firefox
export COLORTERM=truecolor
export LIBVIRT_DEFAULT_URI=qemu:///system
export CARGO_HOME=$HOME/.cargo
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-17.0.9.0.9-3.fc39.x86_64
export GEM_HOME=$HOME/.gem
export PIPX_HOME_DIR=$HOME/.local/pipx/venvs
export PIPX_BIN_DIR=$HOME/.local/pipx/bin
export PATH=$PATH:/var/lib/flatpak/exports/share
export PATH=$PATH:/home/heimdal/.local/share/flatpak/exports/share
export HISTCONTROL=ignoredups:erasedups
export GH_EDITOR=nvim
export GIT_EDITOR=nvim
export GH_BROWSER=firefox
export GH_CONFIG_DIR=$HOME/.config/gh
export GIT_CONFIG_GLOBAL=$HOME/.config/git/.gitconfig
export GIT_CONFIG=$HOME/.config/git/.gitconfig
export GITHUB_USERNAME=robbpaulsen
export GO111MODULE=on
export MDCAT_PAGER=bat
export ZELLIJ_CONFIG_DIR=$HOME/.config/zellij
export ZELLIJ_CONFIG_FILE=$HOME/.config/zellij/config.kdl
export RUSTFLAGS="-C target-feature=-crt-static"
export PATH=$PATH:$HOME/Playgrounds/object-orientedp/flutter/bin
export PATH=$PATH:$HOME/Downloads/android-studio/bin
export PATH=$PATH:$HOME/Downloads/cmdline-tools/bin
export KITTY_CONFIG_DIRECTORY=$HOME/.config/kitty
export KITTY_CACHE_DIRECTORY=$HOME/.cache/kitty
export KITTY_OS=linux
export RANGER_DEVICONS_SEPARATOR=" "
export LS_COLORS=$(vivid generate tokyonight-moon)
export CHROME_EXECUTABLE=/usr/bin/google-chrome
export BAT_CONFIG_PATH=$HOME/.config/bat/config

# pipx
eval "$(register-python-argcomplete pipx)"

# zoxide
eval "$(zoxide init zsh)"

# navi widget
eval "$(navi widget zsh)"

# set PATH so it includes user"s private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
export PATH

if [ -f "$HOME/.aliases.zsh" ] ; then
  . "$HOME/.aliases.zsh"
fi

if [ -f "$HOME/.functions.zsh" ] ; then
  . "$HOME/.functions.zsh"
fi

if [ -f "$HOME/.key-bindings.zsh" ] ; then
  . "$HOME/.key-bindings.zsh"
fi

if [ -f "$HOME/.cargo/env" ] ; then
    . "$HOME/.cargo/env"
fi

[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
