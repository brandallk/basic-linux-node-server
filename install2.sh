#!/bin/bash

mkdir node-server
cp basic-linux-node-server/index.js node-server/index.js

cp basic-linux-node-server/blue.service /lib/systemd/system/blue.service
