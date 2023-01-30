#!/bin/sh

#wait thill the solution plug is connected :)
while ! snapctl is-connected active-solution 
do 
  sleep 5 
done

export LC_ALL=C   #Locale settings Override, MongoDB stuffs

#MyAppPersonaldir ---> Adapt for yourself
MY_FOLDERNAME=mongo36


#whatsMyDirAgain? better not modify this
MYDIR="$SNAP_COMMON/solutions/activeConfiguration/$MY_FOLDERNAME"

if [ ! -d "$MYDIR"]; then
	mkdir $MYDIR
    echo $MYDIR
fi

#move myself in the working directory, from here enything is almost untouched
cd $MYDIR


# ensure the conf directory exists
if [ ! -f "./mongodb.conf" ]; then
	cp $SNAP/bin/conf/mongodb.conf ./mongodb.conf
    echo "file conf "
fi

if [ ! -f "./mongodb.log" ]; then
	cp $SNAP/bin/conf/mongodb.log ./mongodb.log
    echo "file "
fi

if [ ! -d "./mongodb" ]; then
	mkdir ./mongodb
    echo "folder "
fi

exec $SNAP/usr/bin/mongod -f ./mongodb.conf
