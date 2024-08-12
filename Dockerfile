#pulling the base image
FROM ubuntu:latest
#setting up the work directory
WORKDIR /ubuntupractice
#updating the ubuntu OS
RUN apt-get update -y
#installing the apache2 webserver
RUN apt-get install apache2 -y
#cpoying the source code from local to the docker image
COPY . /var/www/html
#starting the apache2 server
ENTRYPOINT apachectl -D FOREGROUND