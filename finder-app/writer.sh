#!/bin/sh

#mkdir -p /tmp/aeld-data

writefile=$1
writestr=$2

if [ -z $writefile ]; then
	exit 1

elif [ -z $writestr ]; then
	exit 1

fi

if [ ! -f $writefile ]; then
	touch $writefile
fi

command=`echo "$writestr" > "$writefile"`

if [ $? -ne 0 ]; then
	echo 2>&1
	exit 1
fi


