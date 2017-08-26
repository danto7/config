export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit-custom"

DISABLE_AUTO_TITLE="true"

plugins=(git ruby docker docker-compose)

source $ZSH/oh-my-zsh.sh

alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

# Git
<<<<<<< HEAD
gt="git status"
gu="git pull --rebase --autostash"
gp="git push"
gc="git commit"
gca="git commit --amend"
ga="git add"

# Docker
d="docker"
dps="docker ps"
dpsa="docker ps -a"
=======
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
>>>>>>> update zshrc

# Ruby
if type rbenv >/dev/null; then
  eval "$(rbenv init -)"
fi
alias rint="bin/rails spec:integration"
alias runit="bin/rails spec"
alias rs="bin/rails s"

# PATH
export PATH="/usr/local/opt/qt/bin:$PATH"
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# System Shortcuts
alias ll="ls -la"
