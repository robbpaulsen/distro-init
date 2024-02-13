function cdd() {
	cd "$(lsd -d -- */ | fzf)" || echo "Invalid directory"
}

# get the list of recet directories visited with `cd` command
function recent_dirs() {
	# This script depends on pushd. It works better with autopush enabled in ZSH
	escaped_home=$(echo $HOME | sed 's/\//\\\//g')
	selected=$(dirs -p | sort -u | fzf)

	cd "$(echo "$selected" | sed "s/\~/$escaped_home/")" || echo "Invalid directory"
}

# Create Directories to start a pentesting session
function mkt() {
	mkdir {nmap,content,exploits,scripts}
}

# Extract nmap information
function extractPorts() {
	ports="$(cat $1 | grep -oP '\d{1,5}/open' | awk '{print $1}' FS='/' | xargs | tr ' ' ',')"
	ip_address="$(cat $1 | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | sort -u | head -n 1)"
	echo -e "\n[*] Extracting information...\n" >extractPorts.tmp
	echo -e "\t[*] IP Address: $ip_address" >>extractPorts.tmp
	echo -e "\t[*] Open ports: $ports\n" >>extractPorts.tmp
	echo $ports | tr -d '\n' | xclip -sel clip
	echo -e "[*] Ports copied to clipboard\n" >>extractPorts.tmp
	cat extractPorts.tmp
	rm extractPorts.tmp
}

# Set 'man' colors
function man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}

# fzf improvement
function fzf-lovely() {

	if [ "$1" = "h" ]; then
		fzf -m --reverse --preview-window down:30 --preview '[[ $(file --mime {}) =~ binary ]] &&
 	                echo {} is a binary file ||
	                 (~/.cargo/bin/bat --style=numbers --color=always {} ||
	                  highlight -O ansi -l {} ||
	                  coderay {} ||
	                  rougify {} ||
	                  cat {}) 2> /dev/null | head -500'

	else
	        fzf -m --preview '[[ $(file --mime {}) =~ binary ]] &&
	                         echo {} is a binary file ||
	                         (~/.cargo/binbat --style=numbers --color=always {} ||
	                          highlight -O ansi -l {} ||
	                          coderay {} ||
	                          rougify {} ||
	                          cat {}) 2> /dev/null | head -500'
	fi
}

# Free cache and perform quick scrubbing
function rmk() {
	scrub -p dod $1
	shred -zun 10 -v $1
}

function sterile() {
  history | awk '$2 != "history" { $1=""; print $0 }' | egrep -vi"\
    curl\b+.*(-E|--cert)\b+.*\b*|\
    curl\b+.*--pass\b+.*\b*|\
    curl\b+.*(-U|--proxy-user).*:.*\b*|\
    curl\b+.*(-u|--user).*:.*\b*
      .*(-H|--header).*(token|auth.*)\b+.*|\
        wget\b+.*--.*password\b+.*\b*|\
        http.?://.+:.+@.*\
        " > $HOME/histbuff; history -r $HOME/histbuff;
}
export PROMPT_COMMAND="sterile"

# Get a random shell tip
function rndmtip() {
  curl -s https://raw.githubusercontent.com/jlevy/the-art-of-command-line/master/README.md | 
    sed '/cowsay[.]png/d' | 
    pandoc -f markdown -t html |
    xmlstarlet fo --html --dropdtd |
    xmlstarlet sel -t -v "(html/body/ul/li[count(p)>0])[$RANDOM mod last()+1]" |
    xmlstarlet unesc | fmt -80 | iconv -t US
}

# Extract the actual terminal size
function get_term_size() {
    # Usage: get_term_size

    # (:;:) is a micro sleep to ensure the variables are
    # exported immediately.
    shopt -s checkwinsize; (:;:)
    printf '%s\n' "$LINES $COLUMNS"
}

# extract the exact size of the focused window
function get_window_size() {
    # Usage: get_window_size
    printf '%b' "${TMUX:+\\ePtmux;\\e}\\e[14t${TMUX:+\\e\\\\}"
    IFS=';t' read -d t -t 0.05 -sra term_size
    printf '%s\n' "${term_size[1]}x${term_size[2]}"
}

# find the most common/repeated word on a file
function mode() {
  if [[ $# -ne 1 ]]; then
    echo 'find the most common item in file'
    echo 'EXAMPLE: mode <FILE>'
  else
    LC_ALL=C sort -T ./ $1 | uniq -c | LC_ALL=C sort -T ./ -rn
  fi
}

# unique sort file
function usort() {
  if [[ $# -ne 1 ]]; then
    echo 'unique sort file inplace'
    echo 'EXAMPLE: usort <FILE>'
  else
    LC_ALL=C sort -u $1 -T ./ -o $1
  fi
}

function get_display() {
  dispmngr="$(grep 'ExecStart' /etc/systemd/system/display-manager.service | tr '/' ' ' | awk '{ print $NF }')"
  echo -e "\n[+] This is your display manager: $dispmngr\n"
}

function ctrl_l() {
    builtin print -rn -- $'\r\e[0J\e[H\e[22J' >"$TTY"
    builtin zle .reset-prompt
    builtin zle -R
}
zle -N ctrl_l
bindkey '^l' ctrl_l

# retrieve SELinux enforcing status
function genf() {
  getenforce
}

# set SELinux enforce status to Permissive
function set_free() {
  sudo setenforce 0 &&
      enfstat="$(getenforce)"
      echo $enfstat
}

# check your weather putting city as parameter
function weather() {
  curl "https://v2.wttr.in/$1"
}

# cheat-sheet in terminal
function cheatsheet() {
  curl "https://cht.sh/$1"
}

# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
function ex () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo ''$1' cannot be extracted via ex()' ;;
    esac
  else
    echo ''$1' is not a valid file'
  fi
}

function kln_lns() {

  awk '{ if (!seen[$0]++) print }' $1

}

function test_colors1() {

  curl -s https://gist.githubusercontent.com/WoLpH/8b6f697ecc06318004728b8c0127d9b3/raw/colortest.py | 
    python

}

function test_colors2() {

  for code ({000..255}) print -P -- "\n\n$code: %F{$code}This is how your text would look like%f\n"

}

function test_colors3() {

  awk 'BEGIN{
  s="/\\/\\/\\/\\/\\"; s=s s s s s s s s;
  for (colnum = 0; colnum<77; colnum++) {
    r = 255-(colnum*255/76);
    g = (colnum*510/76);
    b = (colnum*255/76);
    if (g>255) g = 510-g;
      printf "\033[48;2;%d;%d;%dm", r,g,b;
      printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
      printf "%s\033[0m", substr(s,colnum+1,1);
    }
    printf "\n";
  }'

}

function knowledge() {
  tldr --list |
    fzf --layout=reverse --preview 'tldr {1} --color=always' --preview-window=right,70% |
    xargs tldr
}

#------------------------------------------------------------------------------------------------------
# Color Testing for zsh

typeset -AHg FX FG BG

FX=(
  reset     "%{%}"
  bold      "%{%}" no-bold      "%{%}"
  dim       "%{%}" no-dim       "%{%}"
  italic    "%{%}" no-italic    "%{%}"
  underline "%{%}" no-underline "%{%}"
  blink     "%{%}" no-blink     "%{%}"
  reverse   "%{%}" no-reverse   "%{%}"
)

for color in {000..255}; do
  FG[$color]="%{color}m%}"
  BG[$color]="%{color}m%}"
done

# Show all 256 colors with color number
function spectrum_ls() {
  setopt localoptions nopromptsubst
  local ZSH_SPECTRUM_TEXT=${ZSH_SPECTRUM_TEXT:-Arma virumque cano Troiae qui primus ab oris}
  for code in {000..255}; do
    print -P -- "$code: ${FG[$code]}${ZSH_SPECTRUM_TEXT}%{$reset_color%}"
  done
}

# Show all 256 colors where the background is set to specific color
function spectrum_bls() {
  setopt localoptions nopromptsubst
  local ZSH_SPECTRUM_TEXT=${ZSH_SPECTRUM_TEXT:-Arma virumque cano Troiae qui primus ab oris}
  for code in {000..255}; do
    print -P -- "$code: ${BG[$code]}${ZSH_SPECTRUM_TEXT}%{$reset_color%}"
  done
}

 function wiface() {
     basename /sys/class/net/wl*
 }

function devstat() {
	iw dev |
		grep type |
		cut -d " " -f 2-
}

function nic_down() {
	sudo ip link set wiface down
}

function nic_up() {
	sudo ip link set wiface up
}

function rnd_mac() {
  sudo macchanger -a wiface
}

function nic_mon() {
  sudo iw dev wlan0 set type monitor &&
    echo wiface
}

fucntion perm_mac() {
  nic_down &&
    sudo macchanger -p wiface
}

function servs_down() {
  sudo systemctl stop --now wpa_wupplicant.service NetworkManager.service
}

function servs_up() {
  sudo systemctl start --now wpa_wupplicant.service NetworkManager.service
}

#-----------------------------------------------------------------------------------------------------------

function commands() {
  echo "\033[0;91m ============== ALL COMMANDS AVAILABLE =============="
  echo "weather [city]              - Check weather"
  echo "cheatsheet      [command]   - cheatsheet online"
  echo "cdd                         - Cd into dir with fzf"
  echo "recent_dirs                 - View most recent accesed dirs"
  echo "mkt                         - Create a tree layout for pentest workflow"
  echo "extractPorts    [file]      - Extract the discovered ports from an Nmap file"
  echo "fzf-lovely                  - Dynamic pre-viewer with Fzf and bat"
  echo "rndmtip                     - Recieve a random tip from Cowsays"
  echo "get_term_size               - Get the terminal size in columns"
  echo "get_window_size [command]   - Get the window size in columns"
  echo "test_colors1                 - Test colors #1"
  echo "test_colors2                 - Test colors #2"
  echo "test_colors3                 - Test colors #3"
  echo "mode            [file]      - Find the most common/repeated word on a file"
  echo "usort           [file]      - in place sort the order of a file with many lines"
  echo "get_display                 - Get the name of the Display Manager"
  echo "ex              [file]      - EXtractor for all kind of archives"
  echo "kln_lns         [file]      - Print unsorted unique lines from a list/text file"
  echo "knowledge                   - Explore the TLDR pages and search for a command"
 # echo "ncu -i --format group  - Group packages to update"
  echo "\033[0;91m ===================================================="
}
