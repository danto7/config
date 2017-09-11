# ohmyzsh config
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit-custom"

DISABLE_AUTO_TITLE="true"

plugins=(git ruby docker docker-compose)

source $ZSH/oh-my-zsh.sh

# Other Variables
DANTO_CONFIG="$HOME/.danto-config"

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
if type rbenv >/dev/null; then
  eval "$(rbenv init -)"
fi
alias rint="bin/rails spec:integration"
alias runit="bin/rails spec"
alias rs="bin/rails s"

# Remote VSCode
if [ -x /usr/bin/jmate ]; then
  alias code="jmate"
fi

# PATH
export PATH="/usr/local/opt/qt/bin:/usr/local/opt/go/libexec/bin:$HOME/.cargo/bin:$DANTO_CONFIG/scripts:$PATH"

# System Shortcuts
alias ll="ls -la"

alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
