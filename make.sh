#!/bin/bash
# compile hugo and copy file to /var/www/html

if [ $(id -u) -ne 0 ];then
	echo "Please run it with root"
	exit 5
fi

echo "start compile hugo"
cd ~/blog && hugo

echo "cp -r ./public/* /var/www/html"
cp -r ./public/* /var/www/html

echo "Done ~.~"
