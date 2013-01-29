alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'

alias myip="wget -q -O - checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"

alias apt="sudo apt-get"

# Load nvm if it is installed
[[ -s "~/.nvm/nvm.sh" ]] && . "~/.nvm/nvm.sh"
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

alias setup-nvm="curl https://raw.github.com/creationix/nvm/master/install.sh | sh"

# Prompt setup
USER="\[$(tput setaf 6)\]\u\[$(tput sgr0)\]"
HST="\[$(tput setaf 2)\]\h\[$(tput sgr0)\]"
WD="\[$(tput setaf 3)\]\w\[$(tput sgr0)\]"
JOBS="\[$(tput setaf 1)\]jobs: \j\[$(tput sgr0)\]"
if (( $UID == 0 )); then
    PROMPT="# "
else
    PROMPT="$ "
fi
export PS1="($USER@$HST:$WD)${PROMPT}"