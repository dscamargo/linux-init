#!/bin/bash

URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
DIRETORIO_DOWNLOADS="$HOME/Downloads/Programas"

## Removendo travas eventuais do apt ##
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/loc
# ATUALIZANDO SISTEMA
sudo apt update
sudo apt upgrade -y
#GIT
sudo apt install git
#SNAPD
sudo apt install snapd
#CHROME
# wget -c "$URL_GOOGLE_CHROME" -P "$DIRETORIO_DOWNLOADS"
# sudo dpkg -i $DIRETORIO_DOWNLOADS/*.deb
#VSCODE
sudo snap install code --classic
#SPOTIFY
sudo snap install spotify
#POSTBIRD - SQL
sudo snap install postbird
#ROBO3T - MONGODB
sudo snap install robo3t-snap
#POSTMAN
sudo snap install postman
#SLACK
sudo snap install slack --classic
#DOCKER INSTALLATION
sudo apt install docker.io -y
sudo usermod -aG docker $USER
#PLANK DOCK
sudo add-apt-repository -y ppa:ricotz/docky
sudo apt-get update
sudo apt-get install plank
#FINALIZANDO
sudo apt update && sudo apt dist-upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove -y