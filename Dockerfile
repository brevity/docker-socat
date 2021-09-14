FROM debian:11
MAINTAINER Un-Maintained <verb.noun@discard.email>

RUN apt-get update && apt-get install -y \
        socat \
    && rm -rf /var/lib/apt/lists/*

USER nobody
ENTRYPOINT ["/usr/bin/socat"]
