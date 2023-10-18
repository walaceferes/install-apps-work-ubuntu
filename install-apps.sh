#!/bin/bash

# Atualiza o índice de pacotes
sudo apt update

# Instala os pacotes necessários
sudo apt install wget apt-transport-https software-properties-common -y

# Instala o Visual Studio Code
sudo apt install code -y

# Instala o Flameshot
sudo apt install flameshot -y

# Instala o VLC
sudo apt install vlc -y

# Adiciona o repositório do Sublime Text e instala
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text -y

# Adiciona o repositório do VirtualBox e instala
sudo apt install virtualbox -y

sudo usermod -aG vboxusers $USER #Para permitir que seu usuário acesse os dispositivos USB e outros recursos do VirtualBox

# Adiciona o repositório do Spotify e instala
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg

echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update && sudo apt-get install spotify-client -y

# Adiciona o repositório do Remina e instala
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next

sudo apt update

sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret -y

#Instala Terminator Terminal
sudo apt install terminator -y

#Instala Diodon
sudo apt install diodon -y

echo "Instalação concluída"