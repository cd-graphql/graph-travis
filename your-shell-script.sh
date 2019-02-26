#!/bin/bash --login
cd /root/travis
source /root/.nvm/nvm.sh
sudo rm -rf ./graph-travis
git clone https://github.com/cd-graphql/graph-travis.git
cd ~/travis/graph-travis
node -v
npm i
pm2 restart graph-travis