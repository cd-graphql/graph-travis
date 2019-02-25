#!/bin/bash
cd /root/travis
# 暂时先这种方式进行
pm2 stop graph-travis
pm2 delete graph-travis
rm -rf ./graph-travis
git clone https://github.com/cd-graphql/graph-travis.git
cd ~/travis/graph-travis
npm i
pm2 start src/index.js --name="graph-travis"
