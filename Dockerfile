ARG VERSION=3.7
FROM python:${VERSION}-slim

ENV TOX_VERSION=4.4.6

RUN apt update \
    && apt install -y --no-install-recommends git software-properties-common wget lsb-release gcc make \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install tox==${TOX_VERSION}

ENTRYPOINT ["tox"]
