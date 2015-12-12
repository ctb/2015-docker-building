# image: diblab/dammit
FROM ubuntu:15.10
MAINTAINER titus@idyll.org

ENV PACKAGES git gcc make g++ cmake libboost-all-dev liblzma-dev \
    ca-certificates zlib1g-dev curl unzip autoconf python-pip python-dev \
    python-numpy git ruby liburi-escape-xs-perl emboss liburi-perl unzip \
    hmmer infernal ncbi-blast+ python-matplotlib python-sklearn \
    python-tk python3

ENV TRANSDECODER_VERSION 2.0.1
ENV LAST_VERSION 658
ENV BUSCO_VERSION 1.1b1
ENV DAMMIT_VERSION 0.2.0

### don't modify things below here for version updates etc.

WORKDIR /home

RUN apt-get update && \
    apt-get install -y --no-install-recommends ${PACKAGES} && \
    apt-get clean

RUN gem install crb-blast

RUN curl -O -L https://github.com/TransDecoder/TransDecoder/archive/${TRANSDECODER_VERSION}.tar.gz && \
    tar -xvzf ${TRANSDECODER_VERSION}.tar.gz && \
    cd TransDecoder-${TRANSDECODER_VERSION} && make

RUN curl -O -L http://last.cbrc.jp/last-${LAST_VERSION}.zip && \
    unzip last-${LAST_VERSION}.zip && \
    cd last-${LAST_VERSION} && make install

RUN curl -O -L http://busco.ezlab.org/files/BUSCO_v${BUSCO_VERSION}.tar.gz && \
    tar -xvzf BUSCO_v${BUSCO_VERSION}.tar.gz && \
    chmod +x BUSCO_v${BUSCO_VERSION}/BUSCO_v${BUSCO_VERSION}.py

ENV PATH ${PATH}:/home/TransDecoder-${TRANSDECODER_VERSION}:/home/BUSCO_v${BUSCO_VERSION}

RUN pip install -U setuptools pandas
RUN pip install ficus dammit==${DAMMIT_VERSION} numexpr

ENV DAMMIT_DB_DIR /dammit-db
