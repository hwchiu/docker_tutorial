FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y nginx
RUN apt-get install -y htop \
        iftop

EXPOSE 80/udp
EXPOSE 80/tcp
EXPOSE 8080/udp

ENTRYPOINT ["top", "-b"]
