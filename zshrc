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

# set editor
if [ -n "$DESKTOP_SESSION" ] && hash code 2>/dev/null;then
  export EDITOR="code"
else
  export EDITOR="vim"
fi

# Remote VSCode
if [ -x /usr/bin/jmate ]; then
  alias code="jmate"
fi

# PATH
export PATH="/usr/local/opt/qt/bin:/usr/local/go/bin:$HOME/.cargo/bin:$DANTO_CONFIG/scripts:$PATH:$HOME/go/bin"

# System Shortcuts
alias ll="ls -la"
alias ip="ip -c"

alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"

if [ -d "~/.config/nvm" ]; then
  export NVM_DIR="~/.config/nvm"
  source "~/.config/nvm/nvm.sh"
fi

# start gnome-keyring
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
