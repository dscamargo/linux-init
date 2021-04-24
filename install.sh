#!/bin/bash

URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
DIRETORIO_DOWNLOADS="$HOME/Downloads/Programas"
URL_GIT_KRAKEN="https://release.gitkraken.com/linux/gitkraken-amd64.deb"
URL_DROPBOX="https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb"

## Removendo travas eventuais do apt ##
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/loc
# ATUALIZANDO SISTEMA
sudo apt update
sudo apt upgrade -y
sudo apt install curl
#GIT
sudo apt install git -y
#SNAPD
sudo apt install snapd
#CHROME
wget -c "$URL_GOOGLE_CHROME" -P "$DIRETORIO_DOWNLOADS"
#GIT KRAKEN
wget -c "$URL_GIT_KRAKEN" -P "$DIRETORIO_DOWNLOADS"
#DROPBOX
wget -c "$URL_DROPBOX" -P "$DIRETORIO_DOWNLOADS"
sudo dpkg -i $DIRETORIO_DOWNLOADS/*.deb
#VSCODE
sudo snap install code --classic
#SPOTIFY
sudo snap install spotify
#ROBO3T - MONGODB
sudo snap install robo3t-snap
#POSTMAN
sudo snap install postman
#SLACK
sudo snap install slack --classic
#DOCKER INSTALLATION
curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker $USER
#DOCKER-COMPOSE
sudo curl -L https://github.com/docker/compose/releases/download/1.29.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
#PLANK DOCK
sudo apt-get install plank -y 
