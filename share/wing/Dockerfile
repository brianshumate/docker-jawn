# VERSION: 1.0.2

FROM debian:jessie
MAINTAINER Brian Shumate <brian@brianshumate.com>

# Install wing
RUN apt-get update && \
    apt-get install -y wing

# Autorun
ENTRYPOINT [ "/usr/games/wing" ]
