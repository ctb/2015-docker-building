#! /bin/bash
docker build -t khmer:2.0 .

docker run --rm -v ${PWD}:/output:rw \
    -it khmer:2.0 \
    normalize-by-median.py /home/khmer/data/stamps-reads.fa.gz --gzip -o /output/out.fa.gz
