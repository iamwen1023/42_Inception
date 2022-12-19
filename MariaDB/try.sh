#!/bin/bash
export SQL_DATABASE=hello
export SQL_USER=wlo
export SQL_PASSWORD=wlo42
export SQL_ROOT_PASSWOR=wlowlo
echo $SQL_DATABASE
echo $SQL_USER
echo $SQL_PASSWORD
echo $SQL_ROOT_PASSWOR
service mysql start;
mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
mysql -e "FLUSH PRIVILEGES;"
mysql -e "SELECT CURRENT_USER();"
mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown
exec mysqld_safe