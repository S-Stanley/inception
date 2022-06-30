FROM debian:buster

RUN apt-get update

RUN mkdir -p /var/www/wordpress
RUN apt-get install wget -y
RUN apt-get install unzip -y
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip -d /var/www/wordpress/
RUN mkdir /var/www/wordpress/phpmyadmin
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN tar -xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz --strip-components 1 -C /var/www/wordpress/phpmyadmin

CMD tail -f /var/log/*