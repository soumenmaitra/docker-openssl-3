FROM alpine

RUN mkdir -p /var/installation-files/openssl3

RUN apk add perl
RUN apk add curl
RUN apk add build-base
RUN apk add linux-headers
RUN apk add tar

COPY ./start.sh /var/installation-files
RUN chmod +x /var/installation-files/start.sh
RUN /var/installation-files/start.sh