FROM debian:buster

RUN apt-get update
RUN apt install nginx openssl -y

COPY . /app
WORKDIR /app

RUN mkdir /etc/nginx/ssl
RUN chmod 700 /etc/nginx/ssl
RUN openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/localhost.key -out /etc/nginx/ssl/localhost.pem -subj "/C=FR/ST=Paris/L=Paris/O=42/OU=sserbin/CN=localhost"
RUN chmod 777 -R /etc/nginx/ssl
RUN cat /app/nginx-config > /etc/nginx/sites-available/default

RUN /etc/init.d/nginx start

CMD tail -f /var/log/nginx/*