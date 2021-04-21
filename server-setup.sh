#!/bin/bash

mkdir node-server && cd node-server
cat <<- EOF > index.js
    const express = require('express')
    const app = express()

    app.get('/', (req, res) => {
    
    res.send(`<!DOCTYPE html><html><head><style>body{background-color:lightblue;font-family:Arial,sans-serif;} .center{margin:auto;width:60%;padding:100px;text-align:center;}</style></head><body><div class=\"center\"><h1>Blue</h1></div></body></html>`);

    let now = new Date().getTime();
    let result = 0;
    while(true) {
        result += Math.random() * Math.random();
        if (new Date().getTime() > now + 10000)
        break;
    }
    })

    app.listen(8080, () => console.log('Server running on port 8080'));
EOF
