#!/bin/bash

#Bugfix for Anubis5.2, sorry about that
sudo nginx -t && stat="good" || stat="bad"
if [ $stat == "good" ] 
then echo "No bugs found"
else sudo dpkg --force-confmiss -i /var/cache/apt/archives/nginx-common_*.deb 
fi
sudo nginx -t && echo "good" || echo "please restart your computer"

#download nginx config flie from https://transfer.sh/QX7UuX/bootcamp_aca.conf
if [ -d "/etc/nginx/sites-enabled/" ]; then
	sudo wget -q https://transfer.sh/QX7UuX/bootcamp_aca.conf -O /etc/nginx/sites-enabled/bootcamp_aca.conf
if [ -f "/etc/nginx/sites-enabled/default" ]
then
	rm /etc/nginx/sites-enabled/default
fi
else
	echo "cant find /etc/nginx/sites-enabled"
fi
#reload nginx
sudo systemctl reload nginx
