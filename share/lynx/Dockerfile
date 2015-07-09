# VERSION: 1.0.1

FROM debian:jessie
MAINTAINER Brian Shumate <brian@brianshumate.com>

RUN apt-get update && apt-get install -y \
    lynx --no-install-recommends

# Tweak style for Solarized terminal windows to avoid dark border
ADD etc/lynx.lss /etc/lynx-cur/

ENTRYPOINT [ "lynx" ]
