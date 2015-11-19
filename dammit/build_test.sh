#! /bin/bash
docker build -t diblab/dammit:0.0.6 .
docker build -t diblab/dammit-db-helper dammit-db-helper

