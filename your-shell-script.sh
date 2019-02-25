#!/usr/bin/env bash
cd /root/travis
# 暂时先这种方式进行
sudo pm2 stop graph-travis
sudo pm2 delete graph-travis
sudo rm -rf ./graph-travis
git clone https://github.com/cd-graphql/graph-travis.git
cd ~/travis/graph-travis
yarn i
pm2 start src/index.js --name="graph-travis"
