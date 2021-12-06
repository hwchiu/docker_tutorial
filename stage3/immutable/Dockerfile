FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y nginx
RUN apt-get install -y htop \
        python3 \
        python3-pip

COPY requirements.txt .
RUN pip3 install -r requirements.txt
EXPOSE 80/udp
EXPOSE 8000/tcp

ENTRYPOINT ["python3", "-m", "http.server"]
CMD ["8000"]
