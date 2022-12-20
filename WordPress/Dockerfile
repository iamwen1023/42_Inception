FROM debian:buster
RUN apt-get update -y && apt-get upgrade -y && apt-get -y install wget && apt-get -y install vim && \
    apt-get install -y php7.3 \
						php-fpm \
						php-mysql \
						mariadb-client
RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www && cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x wp-cli.phar \
	mv wp-cli.phar /usr/local/bin/wp
RUN		chown -R root:root /var/www/wordpress
CMD ["tail", "-f", "/dev/null"]
