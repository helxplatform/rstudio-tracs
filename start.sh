#!/bin/bash

groupadd -g 1001 renci
useradd -u 1001 -g 1001 renci
/etc/init.d/nginx restart
/init
