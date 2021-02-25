FROM ubuntu:16.04
USER root

RUN mkdir /var/installation-files
RUN mkdir /var/installation-files/openssl3


COPY ./start.sh /var/installation-files
RUN chmod +x /var/installation-files/start.sh

RUN apt-get update
RUN apt-get install perl -y
RUN apt-get install g++ -y
RUN apt-get install build-essential -y

RUN /var/installation-files/start.sh
