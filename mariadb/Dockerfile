FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y && apt-get install vim -y && apt-get install mariadb-server -y

COPY conf/server.conf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/db_config.sh	/etc/mysql/db_config.sh

RUN mkdir -p /run/mysqld \
    && chown mysql:mysql -R /run/mysqld /var/lib/mysql

CMD bash /etc/mysql/db_config.sh

#CMD ["tail", "-f", "/dev/null"]