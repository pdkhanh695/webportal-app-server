#!/bin/bash
mkdir /home/ec2-user/webportal-app-server
cd /home/ec2-user/webportal-app-server
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
npm install