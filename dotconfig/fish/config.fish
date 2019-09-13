source ~/.config/fish/shortcuts.fish

status --is-interactive; and source (rbenv init -|psub)
direnv hook fish | source
test -s ~/.nvm/nvm.sh; and nvm use stable > /dev/null