FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y nginx
RUN apt-get install -y htop \
        python3

EXPOSE 80/udp
EXPOSE 8000/tcp

COPY config /tmp/1
COPY config /tmp/2/
COPY *.cfg /tmp/

COPY --chown=1000:1000 config /tmp/3

ENTRYPOINT ["python3", "-m", "http.server"]
