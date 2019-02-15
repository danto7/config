CONFIG_FOLDER="$HOME/.myconfig"

fpath=( "$CONFIG_FOLDER/fpath" $fpath )

PURE_PROMPT_SYMBOL="🍕"

autoload -U promptinit; promptinit
prompt pure

# Keybindings
bindkey "[1;5D" backward-word
bindkey "[1;5C" forward-word
bindkey "OB" down-line-or-search
bindkey "OA" up-line-or-search

# Git
alias gt="git status"
alias gu="git pull --rebase --autostash"
alias gp="git push"
alias gc="git commit"
alias gca="git commit --amend"
alias ga="git add"
alias gch="git checkout"

# Docker
alias d="docker"
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dc="docker-compose"

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

# System Shortcuts
alias ls="ls --color"
alias ll="ls -lha"
alias ip="ip -c"
alias userctl="systemctl --user"
alias sctl="sudo systemctl"

alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias rezsh="source ~/.zshrc"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
