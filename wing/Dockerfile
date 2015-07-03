FROM debian:jessie
MAINTAINER Brian Shumate <brian@brianshumate.com>

# Install wing
RUN mkdir -p /usr/share/icons/hicolor && \
    apt-get update && apt-get install -y \
    wing

# Autorun
ENTRYPOINT [ "/usr/games/wing" ]
#CMD [ "--user-data-dir=$HOME/data", "--no-sandbox" ]

# Example docker run
# docker run -it --net host -v /tmp/.X11-unix:/tmp/.X11-unix \
# -e DISPLAY=$MYDISPLAY --name wing brianshumate/wing
