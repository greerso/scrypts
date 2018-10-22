whiptail --msgbox 'Replacing ethminer-v0.15.0 with the Ubiq fork of ethminer-v0.17.0-alpha.1 that supports the Ubiq UIP 1 hard fork and Ubqhash algorithm.' --backtitle 'Ubqhash' --title 'Replacing ethminer-v0.15.0' 15 55
clear
wget https://github.com/ubiq/ubqminer/releases/download/v0.17.0-alpha.1.ubqhash/ubqminer-0.17.0-alpha.1.ubqhash-cuda9.1-linux-x86_64.tar.gz
tar zxvf ubqminer-0.17.0-alpha.1.ubqhash-cuda9.1-linux-x86_64.tar.gz
sudo rm /root/miner_org/ethminer-v0.15.0/ethminer
sudo mv ubqminer-0.17.0-alpha.1.ubqhash-cuda9.1-linux-x86_64/ubqminer /root/miner_org/ethminer-v0.15.0
sudo chmod +x /root/miner_org/ethminer-v0.15.0/*
rm -fr ubqminer-0.17.0-alpha.1.ubqhash-cuda9.1-linux-x86_64
rm ubqminer-0.17.0-alpha.1.ubqhash-cuda9.1-linux-x86_64.tar.gz
cd /root/miner_org/ethminer-v0.15.0
sudo ln -s ubqminer ethminer
cd
whiptail --msgbox 'Go to http://simplemining.net and setup a new rig group for ethminer-v0.15.0 that now supports Ubqhash.' --backtitle 'Ubqhash' --title 'Ubqhash' 15 55
clear
