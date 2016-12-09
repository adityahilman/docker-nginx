FROM ubuntu:16.04
MAINTAINER Aditya Hilman ( aditya.hilman@gmail.com )
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx hhvm -y
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD index.html /var/www/html/
ADD index.php /var/www/html/
ADD default /etc/nginx/sites-enabled/
EXPOSE 80
CMD service nginx start
CMD hhvm --mode server -vServer.Type=fastcgi -vServer.Port=9000
#CMD service hhvm start
#ENTRYPOINT ["hhvm"]
