#!/bin/bash

# "blue" or "green"
NODE_SERVER=$1

sudo yum update -y

# install git
sudo yum install -y git
git clone https://github.com/brandallk/basic-linux-node-server.git

# install nodejs & npm
sudo curl -sL https://rpm.nodesource.com/setup_lts.x | sudo bash -
sudo yum install -y nodejs

# install express
mkdir node-server && pushd node-server
npm init -y
npm install express --save-dev
popd

# copy in the index.js file for "blue" or "green" server
cp basic-linux-node-server/index-$NODE_SERVER.js node-server/index-$NODE_SERVER.js

# copy the systemd unit file for "blue" or "green" server
sudo cp basic-linux-node-server/$NODE_SERVER.service /lib/systemd/system/$NODE_SERVER.service

# ensure server restart
sudo systemctl enable $NODE_SERVER

# start the server
sudo systemctl start $NODE_SERVER
