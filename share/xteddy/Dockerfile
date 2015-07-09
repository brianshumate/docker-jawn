# VERSION: 1.0.1

FROM debian:jessie
MAINTAINER Brian Shumate <brian@brianshumate.com>

# Install xteddy
RUN apt-get update && apt-get install -y xteddy

# Autorun
ENTRYPOINT [ "/usr/games/xteddy" ]
