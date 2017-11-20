# shell-config
## Automatic installation script (broken)
```sh -c "$(curl -fsSL https://raw.githubusercontent.com/danto9/shell-config/master/install.sh)"```

## Installation

```
sudo apt-get update && sudo apt-get install -y i3 zsh rofi git
git clone --depth 1 https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
git clone --depth 1 https://github.com/danto9/shell-config.git $HOME/.danto-config
rm $HOME/.zshrc
ln -s $HOME/.danto-config/zshrc $HOME/.zshrc
ln -s $HOME/.danto-config/avit-custom.zsh-theme $HOME/.oh-my-zsh/themes/avit-custom.zsh-theme
ln -s $HOME/.danto-config/i3/ $HOME/.config/i3
ln -s $HOME/.danto-config/code/ $HOME/.config/Code/User
sudo ln -s $HOME/.danto-config/scripts/i3exit /usr/local/bin/i3exit
```
## TODO
* Polybar https://github.com/jaagr/polybar#getting-started
