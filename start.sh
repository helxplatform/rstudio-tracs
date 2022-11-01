#!/bin/bash

echo "Processing files"
python3 ./process.py

echo "Moving files"
cp ./rserver.conf /etc/rstudio/rserver.conf
ls -la /etc/rstudio/

echo "Creating group and user"
groupadd -g 1136 ${USER}
useradd -u 30000 -g 1136 ${USER}

echo "Starting Nginx"
/etc/init.d/nginx restart

/init
