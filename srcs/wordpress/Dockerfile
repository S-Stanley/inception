FROM debian:buster

RUN apt update -y
RUN apt install php-fpm php-mysql zip wget  -y

COPY . /app
WORKDIR /app

RUN chmod 777 -R /app
RUN cd /tmp
RUN wget http://wordpress.org/latest.zip
RUN mkdir -p /var/www/html
RUN unzip latest.zip -d /var/www/html/
RUN chmod -R 777 /var/www
RUN cat /app/wp-config.php > /var/www/html/wp-config.php
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN mkdir /var/www/html/phpmyadmin
RUN tar -xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz --strip-components 1 -C /var/www/html/phpmyadmin

RUN /etc/init.d/php7.3-fpm start

CMD php -S 0.0.0.0:9000 -t /var/www/html