## Useful Aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias apt='sudo apt'

alias grep='grep --color=auto'

alias myip="wget -q -O - checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"

alias setup-base="apt install git wget curl emacs23-nox htop build-essential apg ccze"
alias setup-jq="wget -O /usr/bin/jq http://stedolan.github.io/jq/download/linux64/jq && chmod +x /usr/bin/jq"
alias setup-fw="mkdir -p ~/.fw && curl -s https://api.github.com/gists/11163178 | jq -r '.files[\"firewall.sh\"].content' > ~/.fw/firewall.sh && chmod +x ~/.fw/firewall.sh"
alias setup-nvm="curl https://raw.github.com/creationix/nvm/master/install.sh | bash"
alias setup-all="setup-base && setup-jq && setup-fw && setup-nvm"

## Load nvm if it is installed
[[ -x ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

## Useful functions
function ct() {
    tail -f -n 25 $1 | ccze -A
}

## Prompt setup
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
