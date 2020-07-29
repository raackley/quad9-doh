FROM ubuntu:focal

LABEL maintainer="raackley@protonmail.com"

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y ca-certificates netcat && \
    apt-get -y autoremove

ADD https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.deb /cloudflared-stable-linux-amd64.deb

RUN dpkg -i /cloudflared-stable-linux-amd64.deb && \
    rm /cloudflared-stable-linux-amd64.deb

EXPOSE 53/tcp
EXPOSE 53/udp

HEALTHCHECK CMD nc 127.0.0.1 53 || exit 1

CMD cloudflared proxy-dns --address 0.0.0.0 --upstream https://9.9.9.9:5053/dns-query --upstream https://149.112.112.112:5053/dns-query
