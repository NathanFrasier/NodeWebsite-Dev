#!/usr/bin/env bash
#environment dependencies
echo "Provisioning..."
echo "Installing node.js..."
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -q=2 --force-yes nodejs
echo "node.js installed sucessfully"
echo "Installing MongoDB"
sudo apt-key adv --keyserver hkp:keyserver.ubuntu.com:80 --recv 7F0CEB10
sudo echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -q=2 --force-yes mongodb-org
echo "Installing nodemon..."
sudo npm install --silent -g nodemon
echo "nodemon installed sucessfully"
echo "Installing grunt-cli"
sudo npm install --silent -g grunt-cli
echo "grunt-cli installed sucessfully"
echo "Installing g++"
sudo apt-get install g++ -q=2 --force-yes

echo "Finishing up..."
echo "Done!"