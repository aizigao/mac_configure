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
   htop
   vim
   wget
   libplist
   libpng
   python
   autoconf
   cmake
   fzf
   git
   git-flow-avh
   neovim
   openssl
   readline
   ripgrep
   sqlite
   thefuck
   tig
   tmux
   universal-ctags
   yarn
)

caskapps=(
    android-file-transfer
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
    adobe-creative-cloud
    google-chrome
    iina
    jietu
    karabiner-elements
    neteasemusic
    postman
    qq
    sequel-pro
    squirrel
    wpsoffice
    xmind-zen
)

brew install "${apps[@]}"
brew tap caskroom/versions
brew cask update
brew cask install --appdir="/Applications" "${caskapps[@]}"
brew cleanup
brew cask cleanup
