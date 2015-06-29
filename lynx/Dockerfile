FROM debian:jessie
MAINTAINER Brian Shumate <brian@brianshumate.com>

RUN apt-get update && apt-get install -y \
    lynx --no-install-recommends

# Tweak style for Solarized terminal windows to avoid dark border
ADD lynx.lss /etc/lynx-cur/

ENTRYPOINT [ "lynx" ]

# Example run
# docker run -it --name lynx brianshumate/lynx
