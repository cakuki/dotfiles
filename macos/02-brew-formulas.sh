#!/bin/bash

FORMULAS=(
  ### Development ###
    go
    node
    nvm
    python
    python3
    ruby
    yarn
  ### File ###
    the_silver_searcher # Search tool 'ag'
    tree
    unrar
  ### Network ###
    axel          # accelerated download
    hostess       # manipulate /etc/hosts
  ### Orchestration ###
    docker-cloud
    kube-ps1      # k8s ns/ctx in prompt
    kubectx       # k8s context switcher
    stern         # k8s logs
  ### Version Tracking ###
    ghi           # github issues
    git
    git-lfs
    git-extras
    hub           # github integration, git wrapper
    tig           # Better 'git log'
    zaquestion/tap/lab # gitlab integration, git wrapper
  ### Other ###
    asciinema # terminal recorder
    jq        # JSON processor
    bash-completion
    zsh-completions
  )

# Install brew formulas
brew install "${FORMULAS[@]}"


# Install casks
brew cask install \
  authy \
  appcleaner \
  docker \
  google-chrome \
  google-cloud-sdk \
  imageoptim \
  iterm2 \
  java \
  keybase \
  skype \
  visual-studio-code \
  vlc

# Set nvm home
mkdir -p ~/Library/Developer/nvm
cat << EOF >> ~/.zshrc

# nvm configuration
export NVM_DIR="$HOME/Library/Developer/nvm"
. "/usr/local/opt/nvm/nvm.sh"
EOF

# Required by hub (not sure now, will check again)
# /usr/local/bin/gem install pygments.rb
