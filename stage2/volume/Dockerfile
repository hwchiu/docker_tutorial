FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y nginx
RUN apt-get install -y htop \
        python3

EXPOSE 80/udp
EXPOSE 8000/tcp

VOLUME /mytmp

ADD https://google.com /mytmp/google
ADD config.tar /mytmp/

RUN useradd --no-log-init -r www-user
USER www-user
WORKDIR /mytmp
ENTRYPOINT ["python3", "-m", "http.server"]
