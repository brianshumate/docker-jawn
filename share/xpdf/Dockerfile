# VERSION: 1.0.2

FROM debian:jessie
MAINTAINER Brian Shumate <brian@brianshumate.com>

RUN apt-get update && \
    apt-get install -y xpdf \
    --no-install-recommends \ 
    && rm -rf /var/lib/apt/lists/*

COPY etc/local.conf /etc/fonts/local.conf

ENTRYPOINT [ "/usr/bin/xpdf" ]
#CMD [ "-–incognito", "--user-data-dir=/data" ]
