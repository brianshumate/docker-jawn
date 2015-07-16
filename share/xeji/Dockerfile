# VERSION: 1.0.0

FROM debian:squeeze
MAINTAINER Brian Shumate <brian@brianshumate.com>

# Install xeji
RUN apt-get update && \
    apt-get install -y xeji

# Autorun
ENTRYPOINT [ "/usr/bin/xeji" ]
