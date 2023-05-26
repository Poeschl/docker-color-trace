FROM ubuntu:jammy

RUN apt-get update && apt-get -y --no-install-recommends install \
    ca-certificates \
    python3 \
    git \
    pngquant \
    pngnq \
    potrace \
    imagemagick \
    python3-lxml && \
    rm -rf /var/lib/apt/lists/*

ENV COMMIT_SHA 'a0cddd91a5aa8d9f83164c9a7926e525d5b9cd81'
RUN git clone https://github.com/migvel/color_trace.git -b master /app/color_trace && \
  cd /app/color_trace && \
  git checkout ${COMMIT_SHA}

WORKDIR /images
ENTRYPOINT ["python3", "/app/color_trace/color_trace_multi.py"]
CMD "-h"