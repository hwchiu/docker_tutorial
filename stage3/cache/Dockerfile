FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y nginx
RUN apt-get install -y htop
RUN apt-get install -y tcpdump
RUN apt-get install -y vim
RUN apt-get install -y iperf3
RUN apt-get install -y iftop
RUN apt-get install -y ethtool
RUN apt-get install -y netcat
RUN apt-get install -y iputils-ping
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN apt-get install -y iproute2
RUN apt-get install -y redis-tools
RUN apt-get install -y telnet
RUN apt-get install -y dnsutils

EXPOSE 8000/tcp

ENTRYPOINT ["python3", "-m", "http.server"]
