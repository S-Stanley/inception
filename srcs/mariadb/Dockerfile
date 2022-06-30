FROM debian:buster

RUN apt-get update
RUN apt-get install mariadb-server -y
# RUN mysql_secure_installation

RUN /etc/init.d/mysql start
# CMD mariadb
CMD tail -f /var/log/*