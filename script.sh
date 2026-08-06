#!/bin/bash

if [ ! -f /var/www/html/index.html ]
then 
	cp -r /opt/data/* /var/www/html
fi
exec nginx -g "daemon off;"
