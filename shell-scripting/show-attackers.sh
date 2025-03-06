#!/bin/bash


if [[ $# -eq 0 ]]
then
	echo 'A file is required.' >&2 
	exit 1
fi


FILE=$1
LIMIT=10

if ! [[ -f $FILE ]]
then
	echo "$FILE does not exist." >&2 
	exit 1
fi

echo "Count,IP,Location"

cat $FILE | grep "Failed" | awk -F ' ' '{print $(NF - 3)}' | sort -n | uniq -c | sort -n | while read COUNT IP
do
  if [[ $COUNT -gt $LIMIT  ]]
  then
	LOCATION=$(geoiplookup $IP | awk -F ':'  '{print $(NF)}')
	echo "$COUNT,$IP,$LOCATION"
  fi	
done
exit 0
