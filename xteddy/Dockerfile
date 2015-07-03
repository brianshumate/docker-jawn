FROM debian:jessie
MAINTAINER Brian Shumate <brian@brianshumate.com>

# Install xteddy
RUN mkdir -p /usr/share/icons/hicolor && \
    apt-get update && apt-get install -y \
    xteddy

# Autorun
ENTRYPOINT [ "/usr/games/xteddy" ]
#CMD [ "--user-data-dir=$HOME/data", "--no-sandbox" ]

# Example docker run
# docker run -it --net host -v /tmp/.X11-unix:/tmp/.X11-unix \
# -e DISPLAY=$MYDISPLAY --name xteddy brianshumate/xteddy
