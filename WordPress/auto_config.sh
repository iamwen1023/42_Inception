#!/bin/bash
export SQL_DATABASE=hello
export SQL_USER=wlo
export SQL_PASSWORD=wlo42
export SQL_ROOT_PASSWOR=wlowlo
sleep 10
wp config create	--allow-root \
					--dbname=$SQL_DATABASE \
					--dbuser=$SQL_USER \
					--dbpass=$SQL_PASSWORD \
					--dbhost=mariadb:3306 --path='/var/www/wordpress'
https://developer.wordpress.org/cli/commands/core/install/
