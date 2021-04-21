#!/bin/bash

sudo yum update -y
sudo yum install -y git
git clone https://github.com/brandallk/basic-linux-node-server.git
./basic-linux-node-server/init.sh
