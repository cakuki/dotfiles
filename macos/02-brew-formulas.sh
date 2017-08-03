#!/bin/bash

# Install formulas
brew install \
  axel \
  docker-cloud \
  ghi \
  git \
  git-extras \
  hub \
  imgcat \
  jq \
  nvm \
  python \
  python3 \
  ruby \
  unrar \
  yarn

# Install cask formulas
brew cask install \
  appcleaner \
  docker \
  imageoptim \
  iterm2 \
  java \
  mongohub \
  skype \
  visual-studio-code

# Set nvm home
mkdir -p ~/Library/Developer/nvm
cat << EOF >> ~/.zshrc

# nvm configuration
export NVM_DIR="$HOME/Library/Developer/nvm"
. "/usr/local/opt/nvm/nvm.sh"
EOF

# Required by hub
/usr/local/bin/gem install pygments.rb
