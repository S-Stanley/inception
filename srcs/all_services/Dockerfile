FROM debian:buster

RUN apt update -y
RUN apt install nginx mariadb-server php-fpm php-mysql zip wget openssl  -y

COPY . /app
WORKDIR /app

RUN chmod 777 -R /app
RUN cd /tmp
RUN wget http://wordpress.org/latest.zip
RUN mkdir /var/www/wordpress
RUN unzip latest.zip -d /var/www/wordpress/
RUN chmod -R 777 /var/www
RUN cat /app/wp-config.php > /var/www/wordpress/wordpress/wp-config.php
RUN mkdir /etc/nginx/ssl
RUN chmod 700 /etc/nginx/ssl
RUN openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/localhost.key -out /etc/nginx/ssl/localhost.pem -subj "/C=FR/ST=Paris/L=Paris/O=42/OU=sserbin/CN=localhost"
RUN chmod 777 -R /etc/nginx/ssl
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN mkdir /var/www/wordpress/phpmyadmin
RUN tar -xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz --strip-components 1 -C /var/www/wordpress/phpmyadmin
RUN cat /app/nginx-config > /etc/nginx/sites-available/default
RUN /etc/init.d/mysql start && echo "create database wordpress; create user wordpressuser; set password for wordpressuser = PASSWORD('user42'); GRANT ALL PRIVILEGES ON wordpress.* TO wordpressuser@localhost IDENTIFIED by 'user42';" | mysql


CMD /etc/init.d/php7.3-fpm start && /etc/init.d/mysql start && /etc/init.d/nginx start && sleep infinity