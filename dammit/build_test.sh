#! /bin/bash
docker build -t diblab/dammit:0.2.0 .
docker build -t diblab/dammit-db-helper dammit-db-helper

