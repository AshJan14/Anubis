#!/bin/bash

#download nginx config flie from https://transfer.sh/QX7UuX/bootcamp_aca.conf

if [ -d "/etc/nginx/sites-enabled/" ]; then
	sudo wget -q https://transfer.sh/QX7UuX/bootcamp_aca.conf -O /etc/nginx/nginx.conf
else
	echo "cant find /etc/nginx/sites-enabled"
fi
#reload nginx
sudo systemctl reload nginx
