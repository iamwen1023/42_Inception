FROM debian:buster

RUN apt-get update -y 
RUN apt-get install -y vim \
                        mariadb-server

COPY conf/my.cnf /etc/mysql/my.cnf
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/db_config.sh	/etc/mysql/db_config.sh

RUN mkdir -p /run/mysqld &&\
    chown -R mysql:mysql /run/mysqld && \
    chown -R mysql:mysql /var/lib/mysql && \
    chmod 777 /run/mysqld && \
    #--> drwxr-xr-x 2 mysql mysql 4096 Jan 10 10:34 mysqld \  
    chmod +x /etc/mysql/db_config.sh

CMD bash /etc/mysql/db_config.sh

#CMD ["tail", "-f", "/dev/null"]