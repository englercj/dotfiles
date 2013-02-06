alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'

alias myip="wget -q -O - checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"

alias apt="sudo apt-get"

# Load nvm if it is installed
[[ -x ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

alias setup-nvm="curl https://raw.github.com/creationix/nvm/master/install.sh | sh"

# Prompt setup
source ~/.git-prompt.sh
source ~/.colors
USER="\[$_fg_cyan\]\u\[$_reset\]"
HOST="\[$_fg_green\]\h\[$_reset\]"
CWD="\[$_fg_yellow\]\w\[$_reset\]"
JOBS="\[$_fg_red\]jobs: \j\[$_reset\]"
if (( $UID == 0 )); then
    PROMPT="# "
else
    PROMPT="$ "
fi
export PS1="$USER@$HOST:$CWD\[$_fg_purple\]\$(__git_ps1)\[$_reset\]${PROMPT}"
