# VERSION: 1.0.3

FROM debian:wheezy
MAINTAINER Brian Shumate <brian@brianshumate.com>

RUN apt-get update && \
    apt-get install -y xpdf \
    --no-install-recommends \ 
    && rm -rf /var/lib/apt/lists/*

COPY etc/local.conf /etc/fonts/local.conf

ENTRYPOINT [ "/usr/bin/xpdf" ]
