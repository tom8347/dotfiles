# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export TERM=xterm-256color


export ZSH="/home/tom/.oh-my-zsh"

ZSH_THEME="dracula"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export LANG=en_GB.UTF-8

export EDITOR="nvim"

alias svenv="source .venv/bin/activate"
alias mvenv="python -m venv .venv"

alias hpc="ssh tsk18@login.hpc.imperial.ac.uk"
alias hpc4="ssh tsk18@login-4.rcs.ic.ac.uk"
alias hpc5="ssh tsk18@login-5.rcs.ic.ac.uk"
alias hpc6="ssh tsk18@login-6.rcs.ic.ac.uk"
alias hpc7="ssh tsk18@login-7.rcs.ic.ac.uk"

alias server="ssh tom@192.168.1.30"

alias gstat="git status"
alias gadd="git add --all :/"
alias gcommit="git commit -m"
alias gpush="git push"
alias gpull="git pull"

alias yeet="rm"

cdls() {
    local dir="$1"
    local dir="${dir:=$HOME}"
    if [[ -d "$dir" ]]; then
        cd "$dir" >/dev/null; ls --color=auto
    else
        echo "zsh: cdls: $dir: Directory not found"
    fi
}

clf() {
    cat $(ls -t * | head -1)
}

rlf() {
    rm $(ls -t * | head -1)
}

lf() {
    ls -t * | head -1
}


setopt autocd




[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND="fd . $HOME"
export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'

