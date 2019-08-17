#!/bin/bash

echo 'use zsh'
chsh -s /bin/zsh

echo 'install ohmyzsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo 'use my zsh file'
cp ./files/zshrc ~/.zshrc

#theme

git clone git@github.com:caiogondim/bullet-train.zsh.git ~/temp_config/bullet-train

cp ~/temp_config/bullet-train/bullet-train.zsh-theme $ZSH_CUSTOM/themes/


git clone git@github.com:lukechilds/zsh-nvm.git $ZSH_CUSTOM/plugins/zsh-nvm

# zsh nvm

source ~/.zshrc

rm -r ~/temp_config

