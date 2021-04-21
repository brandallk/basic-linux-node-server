#!/bin/bash

sudo yum update -y
sudo curl -sL https://rpm.nodesource.com/setup_lts.x | sudo bash -
sudo yum install -y nodejs

mkdir node-server && cd node-server
npm init -y
npm install express --save-dev
