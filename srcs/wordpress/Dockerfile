FROM debian:buster

RUN apt-get update

RUN apt-get update
RUN apt-get install wget -y
RUN cd /tmp && wget http://wordpress.org/latest.zip
RUN mkdir -p /var/www/wordpress
RUN apt install unzip
RUN unzip latest.zip -d /var/www/wordpress/
RUN chmod -R 777 /var/www

CMD tail -f /var/log/nginx/*