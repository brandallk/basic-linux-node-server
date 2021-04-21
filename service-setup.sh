#!/bin/bash

pushd /lib/systemd/system
cat <<- EOF > blue.service
    [Service]
    ExecStart=/usr/bin/node /home/ec2-user/node-server/index.js
    ExecStop=echo "stopping"
    Restart=always
    StandardOutput=syslog
    StandardError=syslog
    SyslogIdentifier=node-server
    User=ec2-user

    [Install]
    WantedBy=multi-user.target
EOF
popd
