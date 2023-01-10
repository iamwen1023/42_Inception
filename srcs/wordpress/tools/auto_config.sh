#!/bin/bash
sleep 10
wp core download --allow-root
wp core config  --allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=mariadb:3306  --path='/var/www/wordpress'
wp db create  --allow-root --path='/var/www/wordpress'
wp core install --allow-root  --url=https://wlo.42.fr --title=wlo_page --admin_user=$WORDPRESS_AMD_USER --admin_password=${WORDPRESS_AMD_USER_PSW} --admin_email=${ADMIN_EMAIL}  --path='/var/www/wordpress'
wp user create --allow-root bob bob@example.com --role=author --path='/var/www/wordpress'
wp theme install astra --activate --allow-root --path='/var/www/wordpress'

./usr/sbin/php-fpm7.3 --nodaemonize
