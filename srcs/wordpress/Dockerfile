FROM debian:buster
RUN apt-get update -y && apt-get upgrade -y && apt-get -y install wget && apt-get -y install vim && \
    apt-get install -y php \
						php-fpm \
						php-mysql \
						mariadb-client \
						net-tools
RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www && cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
RUN	chown -R root:root /var/www/wordpress
RUN mkdir -p /run/php && chown -R www-data:www-data /run/php
COPY ./conf/php-fpm.conf /etc/php/7.3/fpm/php-fpm.conf
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
COPY ./tools/auto_config.sh	/etc/auto_config.sh	

#CMD bash etc/auto_config.sh
#CMD bash php-fpm7.3
#USER www-data
#WORKDIR /var/www/wordpress
CMD bash /etc/auto_config.sh
#CMD ["tail", "-f", "/dev/null"]
#ENTRYPOINT /usr/sbin/php-fpm7.3 --nodaemonize



# 1. recopier les fichiers de configuration php-fpm.conf et pool.d/www.conf + Copy dans le docker file
# 2. optionnel : rediriger les logs dans stdout et stderr dans le fichier php-fpm.conf
# 3. dans le docker file : CMD > php-fpm7.3
# 4. Creer le dossier /run/php avec + chown www-data depuis le dockerfile
# 5. Faire des tests dans firefox et regarder les logs nginx + phpfpm pour avancer
# 6. Optionnel : installer net-tools depuis le docker fil pour voir si le port 9000 est en ecoute sur wordpress avec la commande "netstat -tunlp | grep 9000"

