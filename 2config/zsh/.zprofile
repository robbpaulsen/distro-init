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
export TERM=xterm-256color
export SHELL=/usr/bin/zsh
export EDITOR=nvim
export VISUAL=nvim
export BROWSER=firefox
export COLORTERM=truecolor
export LIBVIRT_DEFAULT_URI=qemu:///system
export CARGO_HOME=$HOME/.cargo
#export JAVA_HOME=$HOME/Downloads/android-studio/jbr/bin
export GEM_HOME=$HOME/.gem
export PIPX_HOME_DIR=$HOME/.local/pipx/venvs
export PIPX_BIN_DIR=$HOME/.local/pipx/bin
export PATH=$PATH:$HOME/.local/pipx/bin
export PATH=$PATH:/var/lib/flatpak/exports/share
export PATH=$PATH:/home/heimdal/.local/share/flatpak/exports/share
export PATH=$PATH:$HOME/.cargo/bin
export HISTCONTROL=ignoredups:erasedups
export GH_EDITOR=nvim
export GIT_EDITOR=nvim
export GH_BROWSER=firefox
export GH_CONFIG_DIR=$HOME/.config/gh
export GIT_CONFIG_GLOBAL=$HOME/.config/git/.gitconfig
export GIT_CONFIG=$HOME/.config/git/.gitconfig
export GITHUB_USERNAME=robbpaulsen
#export PATH=$PATH:/home/heimdal/Downloads/git-repos/hashcat-utils/src
export GO111MODULE=on
export MDCAT_PAGER=bat
export ZELLIJ_CONFIG_DIR=$HOME/.config/zellij
export ZELLIJ_CONFIG_FILE=$HOME/.config/zellij/config.kdl
#export PATH=$PATH:$HOME/Downloads/git-repos/hash-cracker/scripts/extensions/hashcat-utils-linux/bin
# export OPENAI_API_KEY=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
export RUSTFLAGS="-C target-feature=-crt-static"
#export PATH=$PATH:$HOME/Playgrounds/object-orientedp/flutter/bin
#export PATH=$PATH:$HOME/Downloads/android-studio/bin
#export PATH=$PATH:$HOME/Downloads/cmdline-tools/bin
export KITTY_CONFIG_DIRECTORY=$HOME/.config/kitty
export KITTY_CACHE_DIRECTORY=$HOME/.cache/kitty
export KITTY_OS=linux
export RANGER_DEVICONS_SEPARATOR=" "

# ------ The All in one Go PATH export multi chained function you'll need ------- #
# Go paths
[ -d ~/go ] && export GOPATH=$HOME/go
[ "$GOPATH" ] && [ -d "$GOPATH/bin" ] && PATH="$PATH:$GOPATH/bin"

if [ -d /opt/go/libexec ]
then
  export GOROOT=/opt/go/libexec
else
  if [ -d /opt/go ]
  then
    export GOROOT=/opt/go
  else
    [ -d /usr/local/go ] && export GOROOT=/usr/local/go
  fi
fi
[ -d ${GOROOT}/bin ] && {
  if [ $(echo $PATH | grep -c ${GOROOT}/bin) -ne "1" ]; then
    PATH="$PATH:${GOROOT}/bin"
  fi
}
[ -d $HOME/go/bin ] && {
  if [ $(echo $PATH | grep -c $HOME/go/bin) -ne "1" ]; then
    PATH="$PATH:$HOME/go/bin"
  fi
}
export PATH

# ----------------------------- Preacious ------------------------------------ #

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#fpath+='($HOME/.config/zsh/completions)'

# prepend ~/.local/bin and ~/bin to $PATH unless it is already there
#if ! [[ "$PATH" =~ "$HOME/bin" ]]
#then
#    PATH="$HOME/bin:$PATH"
#fi

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

# pipx
eval "$(register-python-argcomplete pipx)"

# zoxide
eval "$(zoxide init zsh)"