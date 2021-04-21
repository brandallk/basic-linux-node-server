#!/bin/bash

sudo curl -sL https://rpm.nodesource.com/setup_lts.x | sudo bash -
sudo yum install -y nodejs

mkdir node-server && pushd node-server
npm init -y
npm install express --save-dev
popd

cp basic-linux-node-server/index.js node-server/index.js

sudo cp basic-linux-node-server/blue.service /lib/systemd/system/blue.service

sudo systemctl enable blue
sudo systemctl start blue
