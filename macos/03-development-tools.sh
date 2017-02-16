#!/bin/bash

# Set nvm home
mkdir -p ~/Library/Developer/nvm
cat << EOF >> "$HOME/.zshrc"

# nvm configuration
export NVM_DIR="$HOME/Library/Developer/nvm"
. "/usr/local/opt/nvm/nvm.sh"
EOF

# Install personally used services as docker compose stacks
mkdir -p ~/Library/Developer/docker/services/verdaccio
cat << EOF > "$HOME/Library/Developer/docker/services/verdaccio/docker-compose.yml"
version: '2'
services:
  verdaccio:
    image: verdaccio/verdaccio:latest
    volumes:
      - ./data/storage:/verdaccio/storage
      - ./data/local_storage:/verdaccio/local_storage
    ports:
      - "4873:4873"
    restart: always
EOF
docker-compose -p verdaccio -f "$HOME/Library/Developer/docker/services/verdaccio/docker-compose.yml" up -d

# Set npm registry to local verdaccio
npm set registry "http://localhost:4873"

npm install --global \
	bower \
	cordova \
	eslint \
	gulp-cli
