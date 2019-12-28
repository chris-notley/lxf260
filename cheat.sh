# This file will run all the installation steps for the Nextcloud on Docker tutorial in LXF260
# place the following in your home directory and call via 'sudo bash cheat.sh $USER'
sudo apt-get update
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose
mkdir -p ~/nextcloud/{config,data}
mkdir -p ~/mariadb/config
sudo usermod -a -G docker $1
