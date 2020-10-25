#!/bin/bash






cd $SNAP_DATA

$SNAP/bin/usr/bin/mongod -f ./mongodb.conf

exit 1


