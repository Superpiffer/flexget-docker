FROM python:2.7

RUN pip install -I flexget transmissionrpc

VOLUME ["/storage/.flexget"]

CMD ["/usr/local/bin/flexget", "--loglevel", "info", "daemon", "start"]
