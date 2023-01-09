#!/bin/bash
sleep 10
wp core download --allow-root
wp core config  --allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=mariadb:3306  --path='/var/www/wordpress' 
wp db create  --allow-root  --path='/var/www/wordpress'
wp core install --allow-root  --url=example.com --title=Example --admin_user=supervisor --admin_password=strongpassword --admin_email=info@example.com  --path='/var/www/wordpress'
wp theme install astra --activate --allow-root --path='/var/www/wordpress'
./usr/sbin/php-fpm7.3 --nodaemonize