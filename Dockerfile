FROM resin/rpi-raspbian:jessie

RUN apt-get update && apt-get install -y \
        python3 \
        curl \
        --no-install-recommends && \
        rm -rf /var/lib/apt/lists/*

RUN curl https://bootstrap.pypa.io/get-pip.py | python3

RUN pip3 install -I flexget transmissionrpc

RUN mkdir -p /root/.flexget 

VOLUME ["/root/.flexget"]

CMD ["/usr/local/bin/flexget", "--loglevel", "info", "daemon", "start"]
