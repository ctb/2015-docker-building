#! /bin/bash
if [ -f /dammit-db/Pfam-A.hmm.h3f ]; then
   echo dammit databases are already here - exiting
   exit 0
fi

cd /

# this unpacks into dammit-db
curl -L \
   http://public.ged.msu.edu.s3.amazonaws.com/dammit-db-2015-11-10.tar.gz \
 | tar -xvzf -
