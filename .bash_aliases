## Useful Aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'

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
