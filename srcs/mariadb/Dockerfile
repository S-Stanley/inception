FROM debian:buster

RUN apt-get update
RUN apt-get install mariadb-server -y
RUN mysqladmin --version

CMD tail -f /var/log/*