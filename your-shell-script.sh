#!/bin/bash
cd /root/travis
git pull origin master
npm i 
yarn run start:ci