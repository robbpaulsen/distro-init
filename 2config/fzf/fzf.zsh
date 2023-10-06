# Setup fzf
# ---------
if [[ ! "$PATH" == */home/heimdal/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/heimdal/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/heimdal/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/heimdal/.fzf/shell/key-bindings.zsh"
