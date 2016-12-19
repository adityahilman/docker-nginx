FROM ubuntu:16.04
MAINTAINER Aditya Hilman ( aditya.hilman@gmail.com )
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx hhvm net-tools git curl -y
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
ADD index.html /var/www/html/
ADD index.php /var/www/html/
ADD default /etc/nginx/sites-enabled/
EXPOSE 80
RUN update-rc.d	hhvm defaults
CMD service hhvm start && nginx
