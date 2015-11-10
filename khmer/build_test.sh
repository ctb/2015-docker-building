#! /bin/bash
docker build -t khmer:2.0 .
docker run -it khmer:2.0 normalize-by-median.py
