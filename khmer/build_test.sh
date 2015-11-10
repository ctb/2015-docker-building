#! /bin/bash
docker build -t diblab/khmer:2.0 .

./run_test.sh
