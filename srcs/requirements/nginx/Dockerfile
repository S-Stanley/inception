FROM debian:buster

RUN apt-get update
RUN apt install nginx openssl -y

COPY . /app
WORKDIR /app

RUN mkdir /etc/nginx/ssl
RUN chmod 700 /etc/nginx/ssl
RUN openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/sserbin.42.fr.key -out /etc/nginx/ssl/sserbin.42.fr.pem -subj "/C=FR/ST=Paris/L=Paris/O=42/OU=sserbin/CN=sserbin.42.fr"
RUN chmod 777 -R /etc/nginx/ssl
RUN cat /app/nginx-config > /etc/nginx/sites-available/default

CMD ["nginx", "-g", "daemon off;"]