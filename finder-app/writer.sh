#!/bin/bash
writefile=$1
writestr=$2

if [ $# -ne 2 ]
then
   echo "Number of arguments expected was 2!"
   exit 1
else
  mkdir -p "${writefile%/*}" && touch "$writefile"
  if [ $? -eq 1 ]
  then
  	echo "file could not be created"
  	exit 1
   fi
  echo $writestr > $writefile
  exit 0
fi
   
