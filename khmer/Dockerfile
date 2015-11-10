FROM ubuntu:15.10
MAINTAINER titus@idyll.org

ENV PACKAGES python-dev zlib1g git python-setuptools
ENV KHMER_VERSION v2.0

### don't modify things below here for version updates etc.

WORK /home

RUN apt-get update && \
    apt-get install -y --no-install-recommends ${PACKAGES} && \
    apt-get clean

RUN cd /home && \
    git config --global http.sslVerify false && \
    git clone https://github.com/dib-lab/khmer.git -b ${KHMER_VERSION} && \
    cd khmer && \
    python setup.py install
