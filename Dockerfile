FROM ubuntu:16.04
MAINTAINER Aditya Hilman ( aditya.hilman@gmail )
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx hhvm -y
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD index.html /var/www/html/
EXPOSE 80
CMD service nginx start
#CMD service hhvm start
#ENTRYPOINT ["hhvm"]
