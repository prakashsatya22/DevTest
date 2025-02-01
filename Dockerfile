FROM ubuntu
RUN apt-get update
RUN apt-get -y install apache2
ADD . /var/www/html
ADD image.jpg /var/www/html/img
ENTRYPOINT apachectl -D FOREGROUND
ENV name Devops test
