#!/bin/bash

# "blue" or "green"
NODE_SERVER=$1

sudo yum update -y

# install git
sudo yum install -y git
git clone https://github.com/brandallk/basic-linux-node-server.git

# run server init for "blue" or "green"
./basic-linux-node-server/setup.sh $NODE_SERVER
