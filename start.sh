#!/bin/bash
cd $KIAORA/server
npm install

while ! curl http://mongo:27017; do sleep 1; done;
whoami
nodemon --watch app --watch public --watch app/views --watch app/models --watch app/routes server.js