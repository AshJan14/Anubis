#!/bin/bash


nginx=$(which nginx)
if [$nginx == /usr/sbin/nginx]
then
	echo "It's already installed"
else
	sudo apt install nginx | apt list -a nginx
fi
