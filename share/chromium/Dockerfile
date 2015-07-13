# VERSION: 1.0.1

FROM debian:sid
MAINTAINER Brian Shumate <brian@brianshumate.com>

RUN sed -i.bak 's/sid main/sid main contrib non-free/g' /etc/apt/sources.list && \
    apt-get update && apt-get install -y \
    chromium \
    chromium-l10n \
    libcanberra-gtk-module \
    libexif-dev \
    libgl1-mesa-dri \
    libgl1-mesa-glx \
    libpango1.0-0 \
    libv4l-0 \
    --no-install-recommends \ 
    && rm -rf /var/lib/apt/lists/*

COPY etc/local.conf /etc/fonts/local.conf

ENTRYPOINT [ "/usr/bin/chromium" ]
CMD [ "-–incognito", "--user-data-dir=/data" ]
