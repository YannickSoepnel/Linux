#Installing docker met saltstack
#!/bin/bash

#Update repository
sudo apt update

#Installeren van apt-packages om te zorgen dat apt goed werkt met HTTP en dat CA certificates geinstalleerd zijn
sudo apt install -y apt-transport-https software-properties-common ca-certificates curl wget

#Het downloaden en toevoegen van de GPG key voor de docker repository
wget https://download.docker.com/linux/ubuntu/gpg
sudo apt-key add gpg

#Het toevoegen van de officiele docker repository
sudo echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" | sudo tee /etc/apt/sources.list.d/docker.list

#Update de apt database
sudo apt update

#Het installeren van docker-ce (-y skipt het bevestigen van de installatie)
sudo apt install -y docker-ce

#Het starten van docker
sudo systemctl start docker
sudo systemctl enable docker
