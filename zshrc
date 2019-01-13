CONFIG_FOLDER="$HOME/.myconfig"

fpath=( "$CONFIG_FOLDER/fpath" $fpath )

PURE_PROMPT_SYMBOL="🍕"

autoload -U promptinit; promptinit
prompt pure

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
if ls ~/.rbenv >/dev/null; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi
alias rint="bin/rails spec:integration"
alias runit="bin/rails spec"
alias rs="bin/rails s"

# set editor
if [ -n "$DESKTOP_SESSION" ] && hash code 2>/dev/null;then
  export EDITOR="code -n -w"
else
  export EDITOR="vim"
fi

# FZF default grep command
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

# System Shortcuts
alias ll="ls -lha"
alias ip="ip -c"
alias userctl="systemctl --user"

alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
