#!/bin/sh
cd ~
sudo apt-get update && sudo apt install zsh git curl -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/danto9/shell-config.git shell-config
cd shell-config
rm ~/.zshrc
cp zshrc ~/.zshrc
cp avit-custom.zsh-theme ~/.oh-my-zsh/themes/avit-custom.zsh-theme
cd ..
rm -rf shell-config
echo "Done!"
