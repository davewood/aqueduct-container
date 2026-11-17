FROM debian:trixie-slim

RUN    apt-get update \
    && apt-get install -y --no-install-recommends \
       vim less tree ack \
       git curl ca-certificates \
       libatomic1 \
    && rm -rf /var/lib/apt/lists/*

USER root
WORKDIR /root/dev

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.41.0/install.sh | bash

RUN \. "$HOME/.nvm/nvm.sh" \
    && nvm install 26 \
    && npm install -g --ignore-scripts @earendil-works/pi-coding-agent

COPY config/pi/models.json /root/.pi/agent/models.json

COPY entrypoint.sh /root/
CMD ["bash", "/root/entrypoint.sh"]
