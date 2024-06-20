FROM ubuntu:latest

USER root

RUN apt-get update && apt-get install -y wget tar

RUN wget https://github.com/prometheus/prometheus/releases/download/v2.53.0/prometheus-2.53.0.linux-amd64.tar.gz

RUN tar -zxvf prometheus-2.53.0.linux-amd64.tar.gz

WORKDIR prometheus-2.53.0.linux-amd64

ENTRYPOINT [ "./prometheus" ]
