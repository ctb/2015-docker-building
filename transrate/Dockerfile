# image: diblab/transrate
FROM ubuntu:15.10
MAINTAINER titus@idyll.org

ENV PACKAGES git gcc make g++ cmake libboost-all-dev liblzma-dev \
    ca-certificates zlib1g-dev curl unzip autoconf python-pip python-dev \
    python-numpy git ruby liburi-escape-xs-perl emboss liburi-perl unzip \
    python-pandas hmmer infernal ncbi-blast+

ENV TRANSRATE_VERSION 1.0.1

### don't modify things below here for version updates etc.

WORKDIR /home

RUN apt-get update && \
    apt-get install -y --no-install-recommends ${PACKAGES} && \
    apt-get clean

RUN curl -L https://bintray.com/artifact/download/blahah/generic/transrate-${TRANSRATE_VERSION}-linux-x86_64.tar.gz | tar xzvf -

ENV PATH ${PATH}:/home/transrate-${TRANSRATE_VERSION}-linux-x86_64

RUN transrate --install-deps ref
