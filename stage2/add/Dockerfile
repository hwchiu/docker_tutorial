FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y nginx
RUN apt-get install -y htop \
        python3

EXPOSE 80/udp
EXPOSE 8000/tcp

ADD https://google.com /tmp/google
ADD config.tar /tmp/

ENTRYPOINT ["python3", "-m", "http.server"]
