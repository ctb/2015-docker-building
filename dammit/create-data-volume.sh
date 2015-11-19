#! /bin/bash
### this creates a docker-land volume that can be shared among running
### docker containers.

# create a docker volume to be shared under the name 'dammit-db'
docker create -v /dammit-db --name dammit-db ubuntu:15.10 /bin/true

# load it up with the right databases; this will take a few minutes to download
# and unpack. See dammit-db-helper/Dockerfile for more info.
docker run --volumes-from dammit-db -it diblab/dammit-db-helper

# finally, run dammit, with the data volume attached:
docker run --volumes-from dammit-db:ro diblab/dammit:0.0.6 dammit dependencies

# this last command can be run as many times as desired without re-downloading
# the data; in fact, all of the commands can be run, but the first two
# won't do anything after the first time.
