### this creates a docker-land volume that can be shared among running
### docker containers.

# this is useful for docker-machine
docker create -v /dammit-db --name dammit-db ubuntu:15.10 /bin/true

docker run --volumes-from dammit-db -it ubuntu:15.10 bash

### alternatively, you could do:

# this is useful for locally running docker
docker run -v /some/local/directory:/dammit-db ....
