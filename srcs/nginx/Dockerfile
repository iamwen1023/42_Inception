FROM debian:buster


ARG DEBIAN_FRONTEND=noninteractive

RUN \
  apt-get update -y && \
  apt-get upgrade -y && \
  apt-get install nginx -y && \
  apt-get install vim -y && \
  apt-get install curl -y && \
  apt-get install openssl

RUN openssl req -x509 -nodes -out /etc/nginx/inception.crt -keyout /etc/nginx/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=wlo.42.fr/UID=wlo"

RUN mkdir -p /var/run/nginx /var/www/wordpress

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN chmod 755 /var/www && chown -R www-data:www-data /var/www

#RUN echo "$USER"

CMD [ "nginx", "-g", "daemon off;"]
