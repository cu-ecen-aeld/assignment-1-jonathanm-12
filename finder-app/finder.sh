#!/bin/sh

#mkdir -p /tmp/aeld-data

filesdir=$1
searchdir=$2

if [ -z $filesdir ]; then
	exit 1
elif [ -z $searchdir ]; then
	exit 1
elif [ ! -d $filesdir ]; then
	exit 1
fi

fcount=0
scount=0


for i in "$filesdir"/*; do
    fcount=$((fcount + 1))

    while read -r line; do
        case "$searchdir" in *"$line"*)
			scount=$((scount + 1)) ;;
        esac
    done < "$i"
done

echo The number of files are $fcount and the number of matching lines are $scount