#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl jq git docker.io
sudo gpasswd -a $(whoami) docker
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose