FROM ubuntu:16.04
MAINTAINER Aditya Hilman ( aditya.hilman@gmail.com )
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx hhvm net-tools -y
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD index.html /var/www/html/
ADD index.php /var/www/html/
ADD default /etc/nginx/sites-enabled/
EXPOSE 80
RUN update-rc.d	hhvm defaults
CMD service hhvm start && nginx
