FROM ubuntu:16.04
Maintainer Snayder Morales
RUN  apt-get update -y
RUN apt-get install apache2 php php7.0-gd libapache2-mod-php7.0 php-mysql -y
RUN service apache2 restart
COPY --chown=www-data:www-data wordpress/ /var/www/html
ENTRYPOINT apache2ctl -D FOREGROUND
RUN rm /var/www/html/index.html
