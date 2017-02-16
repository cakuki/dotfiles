#!/bin/bash

# Install formulas
brew install \
	git \
	git-extras \
	node \
	nvm \
	python \
	python3 \
	yarn

# Install cask formulas
brew cask install \
	appcleaner \
	docker \
	imageoptim \
	iterm2 \
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

