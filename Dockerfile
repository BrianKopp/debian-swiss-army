FROM debian:buster-slim

RUN apt-get update && \
    apt-get install -y \
        zip \
        unzip \
        telnet \
        dnsutils \
        curl \
        && \
    apt-get clean autoclean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash"]
