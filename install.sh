#!/bin/bash

# apt packages

sudo apt-get -y install \
	zsh \
	git \
	vim \
	htop


# make zsh the default prompt
chsh -s $(which zsh)

# install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# symlink .zshrc to home 
rm $HOME/.zshrc
ln .zshrc $HOME/.zshrc
ln .aliasrc $HOME/.aliasrc

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# install astronaut theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Add Auto Suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install Node via nvm
git clone https://github.com/creationix/nvm.git $HOME/.nvm

. $HOME/.nvm/nvm.sh

nvm install node



# Install Docker
sudo apt-get update

sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get -y install docker-ce

sudo usermod -aG docker $USER

# Install Docker Compose
sudo apt-get -y install docker-compose

# Install Phpstorm


# Install vsCode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get -y install apt-transport-https
sudo apt-get update
sudo apt-get -y install code-insiders


# Install PHP
sudo apt-get -y install \
	php-cli \
	php-bcmath \
	php-mbstring \
	php-curl \
	php-xdebug

# Install Composer
./composer.sh
