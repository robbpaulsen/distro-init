# Profile file like ".profile"


# ------------------------------------------------------------------------------
# Path - The higher it is, the more priority it has
# ------------------------------------------------------------------------------

export XDG_CONFIG_DIRS="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export TERM="xterm-256color"
export SHELL="/usr/bin/zsh"
export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"
export BROWSER="firefox"
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64/bin"
export GEM_HOME="$HOME/.gem"
export PIPX_HOME_DIR="$HOME/.local/pipx/venvs"
export PIPX_BIN_DIR="$HOME/.local/bin"
export PATH=$PATH:"/usr/local/go"
export PATH=$PATH:"/usr/local/go/bin"
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH

# set PATH so it includes user"s private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user"s private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

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

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# fzf
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ] && source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh

# pipx
eval "$(register-python-argcomplete pipx)"

# zoxide
eval "$(zoxide init zsh)"

# Created by `pipx` on 2023-09-21 17:51:47
export PATH="$PATH:/home/heimdal/Downloads/git-repos/DivideAndScan/$HOME/.local/bin"
