#!/bin/bash



export LC_ALL=C 

# ensure the conf directory exists
if [ ! -f "$SNAP_COMMON/mongodb.conf" ]; then
	cp $SNAP/bin/conf/mongodb.conf $SNAP_COMMON/mongodb.conf

fi

if [ ! -f "$SNAP_COMMON/mongodb.log" ]; then
	cp $SNAP/bin/conf/mongodb.log $SNAP_COMMON/mongodb.log

fi

if [ ! -d "$SNAP_COMMON/mongodb" ]; then
	mkdir $SNAP_COMMON/mongodb

fi

cd $SNAP_COMMON


exec $SNAP/usr/bin/mongod -f ./mongodb.conf









