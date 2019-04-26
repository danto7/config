CONFIG_FOLDER="$HOME/.myconfig"

fpath=( "$CONFIG_FOLDER/fpath" $fpath )

PURE_PROMPT_SYMBOL="🍕"

HISTSIZE=1000
HISTFILE=~/.zsh_history
SAVEHIST=1000
setopt HIST_IGNORE_SPACE

autoload -U promptinit; promptinit
prompt pure

source $CONFIG_FOLDER/fpath/widgets.zsh

# Password
export PASSWORD_STORE_DIR=~/Dasswort/pass

# Keybindings
bindkey "[1;5D" backward-word
bindkey "[1;5C" forward-word
bindkey "OB" down-line-or-search
bindkey "^[[B" down-line-or-search
bindkey "OA" up-line-or-search
bindkey "^[[A" up-line-or-search

# Git
alias g="git"
alias gt="git status"
alias gu="git pull --rebase --autostash"
alias gp="git push"
alias gc="git commit"
alias gca="git commit --amend"
alias ga="git add"
alias gch="git checkout"
alias gl="git log"

# Docker
alias d="docker"
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dc="docker-compose"

# autojump
which autojump>/dev/null && source /usr/share/autojump/autojump.zsh

# Ruby
[ -f ~/.rbenv/bin/rbenv ] && \
	export PATH="$HOME/.rbenv/bin:$PATH" && \
	eval "$(rbenv init -)"
alias rint="bin/rails spec:integration"
alias runit="bin/rails spec"
alias rs="bin/rails s"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Go
export GOPATH="$HOME/projects/go"

# set editor
if [ -n "$DESKTOP_SESSION" ] && hash code 2>/dev/null;then
  export EDITOR="code -n -w"
else
  export EDITOR="vim"
fi

# FZF default grep command
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

# test env
alias tenv="docker run -it --rm -v \"$CONFIG_FOLDER:/home/daniel/.myconfig\" -v \"$HOME/.zshrc:/home/daniel/.zshrc\" -v \"\$PWD:/home/daniel/testenv\" test-env"
alias tenv-rebuild="docker build -t test-env --build-arg UID=\$(id -u) $CONFIG_FOLDER/test-env"

# System Shortcuts
alias ..="cd .."
alias ...="cd ../.."
alias ls="ls --color"
alias ll="ls -lha"
alias ip="ip -c"
alias userctl="systemctl --user"
alias sctl="sudo systemctl"
alias fixhistory="mv ~/.zsh_history ~/.zsh_history_bad && strings ~/.zsh_history_bad > ~/.zsh_history && fc -R ~/.zsh_history && rm ~/.zsh_history_bad"
function mkcd(){
  mkdir "$@" && cd $1
}

which direnv>/dev/null && eval "$(direnv hook zsh)"

alias vzsh="vim ~/.zshrc"
alias rezsh="source ~/.zshrc"
alias myconfig="code ~/.myconfig"
