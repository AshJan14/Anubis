#!/bin/bash

nginx=$(which nginx)
	if  [ $nginx == /usr/sbin/nginx ]
	then
		echo "Its already installed"
	else
		sudo apt install nginx
	fi



