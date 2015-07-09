# VERSION: 1.0.1

FROM debian:jessie
MAINTAINER Brian Shumate <brian@brianshumate.com>

# Install xevil
RUN apt-get update && apt-get install -y xevil

# Autorun
ENTRYPOINT [ "/usr/games/xevil" ]
