FROM python:latest
MAINTAINER Brian Shumate <brian@brianshumate.com>

RUN touch /root/.rainbow_config.json /root/.rainbow_oauth

RUN apt-get update && apt-get install -y \
    libjpeg-dev \
    libfreetype6 \
    libfreetype6-dev \
    zlib1g-dev \
    --no-install-recommends

RUN pip install rainbowstream

ENTRYPOINT [ "rainbowstream" ]

# Example run
# docker run -it -v $HOME/.rainbow_oauth:/root/.rainbow_oauth -v $HOME/.rainbow_config.json:/root/.rainbow_config.json --name rainbowstream brianshumate/rainbowstream:v1
