#!/bin/bash



export LC_ALL=C 

cd $SNAP_DATA


exec $SNAP/usr/bin/mongod -f ./mongodb.conf









