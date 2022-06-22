FROM debian:buster

RUN apt-get update
RUN apt install nginx -y
RUN /etc/init.d/nginx start

CMD tail -f /var/log/nginx/*