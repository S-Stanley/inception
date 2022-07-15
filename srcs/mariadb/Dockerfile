FROM debian:buster

RUN apt update -y
RUN apt install mariadb-server  -y

COPY . /app
WORKDIR /app

RUN chmod 777 -R /app
RUN cd /tmp
RUN sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
RUN /etc/init.d/mysql start && echo "create database wordpress; create user wordpressuser; set password for wordpressuser = PASSWORD('user42'); GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpressuser'@'%' IDENTIFIED by 'user42';" | mysql

CMD /etc/init.d/mysql start && sleep infinity