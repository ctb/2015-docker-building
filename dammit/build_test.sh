#! /bin/bash
docker build -t diblab/dammit:0.0.10 .
docker build -t diblab/dammit-db-helper dammit-db-helper

