#!/bin/bash
main(){
  # download custom configs
  git clone https://github.com/danto9/shell-config.git "$HOME/.config"

  # installing oh-my-zsh
  git clone --depth 1 https://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh"

  rm $HOME/.zshrc
  echo "source \$HOME/.danto-config/zshrc" > "$HOME/.zshrc"

  ln -s $HOME/.danto-config/avit-custom.zsh-theme "$HOME/.oh-my-zsh/themes/avit-custom.zsh-theme"

  echo "Installation comlete."
  echo "Now you can change your default shell with chsh e.g."
}

check_dependencies(){
  # check dependencies
  if ! [ -x "$(command -v git)" ]; then
    echo "Git is not installed. Install it first."
    exit 1
  fi

  if ! [ -x "$(command -v curl)" ]; then
    echo "Curl is not installed. Install it first."
    exit 1
  fi

  if ! [ -x "$(command -v zsh)" ]; then
    echo "Zsh is not installed. Install it first."
    exit 1
  fi
}

check_dependencies
main