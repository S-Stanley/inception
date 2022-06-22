FROM debian:buster

RUN apt-get update

RUN mkdir -p /var/www/html
RUN cd /var/www/html
RUN mkdir farhan
RUN cd farhan
RUN apt-get install wget -y
RUN apt-get install unzip -y
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip

CMD tail -f /var/log/*