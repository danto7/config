# ohmyzsh config
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"
LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

DISABLE_AUTO_TITLE="true"

plugins=(git ruby docker docker-compose)

source $ZSH/oh-my-zsh.sh

# Other Variables
CONFIG_FOLDER="$HOME/.myconfig"

# Shortcuts
alias sctl="sudo systemctl"

# Git
alias gt="git status"
alias gu="git pull --rebase --autostash"
alias gp="git push"
alias gc="git commit"
alias gca="git commit --amend"
alias ga="git add"

# Docker
alias d="docker"
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dc="docker-compose"

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
if type rbenv >/dev/null; then
  eval "$(rbenv init -)"
fi
alias rint="bin/rails spec:integration"
alias runit="bin/rails spec"
alias rs="bin/rails s"

# GOPATH helper
cd () {
  builtin cd "$@"
  cdir=$PWD
  export GOPATH="$HOME/go"
  i=0
  while [ "$cdir" != "/" ]; do
    if [ -e "$cdir/.gopath" ]; then
      export GOPATH=$cdir
      if [ $i -eq 0 ]; then; echo "GOPATH=$GOPATH"; fi
      break
    fi
    cdir=$(dirname "$cdir")
    i=$((i+1))
  done
}

# NVM
if [ -d "~/.config/nvm" ]; then
  export NVM_DIR="~/.config/nvm"
  source "~/.config/nvm/nvm.sh"
fi

# set editor
if [ -n "$DESKTOP_SESSION" ] && hash code 2>/dev/null;then
  export EDITOR="code -n -w"
else
  export EDITOR="vim"
fi

# FZF default grep command
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

# PATH
export PATH="/usr/local/opt/qt/bin:/usr/local/go/bin:$HOME/.cargo/bin:$CONFIG_FOLDER/scripts:$PATH:$HOME/go/bin"

# System Shortcuts
alias ll="ls -la"
alias ip="ip -c"

alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"

# start gnome-keyring
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
