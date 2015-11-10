#! /bin/bash
# note:
#      docker tag diblab/khmer:2.0 diblab/khmer
#      docker push diblab/khmer
docker build -t diblab/khmer:2.0 .

./run_test.sh
