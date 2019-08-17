#!/bin/bash
# Install Homebrew

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# brew tap homebrew/versions
brew update
brew upgrade

# Install packages
apps=(
   aria2
   mysql
   mongo
   nginx
   redis
   nvm
   openssl
   git
   git-flow-avh
   htop
   thefuck
   tmux
   vim
   wget
   libplist
   libpng
   yarn
   fzf
)

caskapps=(
    android-file-transfer
    google-chrome
    android-platform-tools
    java
    typora
    dingtalk
    qq
    wechat
    virtualbox
    dukto
    visual-studio-code
    vlc
    boostnote
    netease
    qblocker
    qlcolorcode
    qlmarkdown
    qlstephen
    alacritty
)

brew install "${apps[@]}"
brew tap caskroom/versions
brew cask update
brew cask install --appdir="/Applications" "${caskapps[@]}"
brew cleanup
brew cask cleanup
