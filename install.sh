main(){
  # download custom configs
  git clone --depth 1 https://github.com/danto9/shell-config.git $HOME/.danto-config

  # installing oh-my-zsh
  git clone --depth 1 https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

  rm $HOME/.zshrc
  echo "source \$HOME/.danto-config/zshrc" > $HOME/.zshrc

  ln -s $HOME/.danto-config/avit-custom.zsh-theme $HOME/.oh-my-zsh/themes/avit-custom.zsh-theme

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
echo "Your current .zshrc config gets overwritten."
read -p "Do you want to continue? (y/N)" -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
  main
else
  echo "Aborting ..."
  exit 1
fi