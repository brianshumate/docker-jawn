FROM debian:jessie
MAINTAINER Brian Shumate <brian@brianshumate.com>

# Install xevil
RUN mkdir -p /usr/share/icons/hicolor && \
    apt-get update && apt-get install -y \
    xevil

# Autorun
ENTRYPOINT [ "/usr/games/xevil" ]
#CMD [ "--user-data-dir=$HOME/data", "--no-sandbox" ]

# Example docker run
# docker run -it --net host -v /tmp/.X11-unix:/tmp/.X11-unix \
# -e DISPLAY=unix$DISPLAY --name chrome brianshumate/chrome
