#!/bin/bash
sleep 10
wp config create	--allow-root \
					--dbname=$SQL_DATABASE \
					--dbuser=$SQL_USER \
					--dbpass=$SQL_PASSWORD \
					--dbhost=mariadb:3306 --path='/var/www/wordpress'
wp core install --url=example.com \
				--title=Example \
				--admin_user=supervisor \
				--admin_password=strongpassword \
				--admin_email=info@example.com
