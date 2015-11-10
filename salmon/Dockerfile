FROM ubuntu:15.10
MAINTAINER titus@idyll.org

ENV PACKAGES git gcc make g++ cmake libboost-all-dev liblzma-dev ca-certificates \
    zlib1g
ENV SALMON_VERSION v0.5.0

# salmon code will be installed in /usr/local/bin

### don't modify things below here for version updates etc.

WORKDIR /home

RUN apt-get update && \
    apt-get install -y --no-install-recommends ${PACKAGES} && \
    apt-get clean

RUN git clone https://github.com/COMBINE-lab/salmon.git -b ${SALMON_VERSION} && \
    cd salmon && \
    cmake . && make && make install && \
    rm -fr salmon
