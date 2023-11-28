# Setup fzf
# ---------
if [[ ! "$PATH" == */home/heimdal/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/heimdal/.fzf/bin"
fi

# Fzf theme
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
 --color=fg:#dedede,bg:#121212,hl:#666666
 --color=fg+:#eeeeee,bg+:#282828,hl+:#cf73e6
 --color=info:#cf73e6,prompt:#FF0000,pointer:#cf73e6
 --color=marker:#f0d50c,spinner:#cf73e6,header:#91aadf'

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/heimdal/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/heimdal/.fzf/shell/key-bindings.zsh"
