### this creates a docker-land volume that can be shared among running
### docker containers.

docker create -v /dammit-db --name dammit-db ubuntu:15.10 /bin/true

docker run --volumes-from dammit-db -it ubuntu:15.10 bash

### alternatively, you could do:

docker run -v /some/local/directory:/dammit-db ....
