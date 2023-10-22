#!/bin/bash
filesdir=$1
searchstr=$2

if [ $# -ne 2 ]
then
   echo "Number of arguments expected was 2!"
   exit 1
elif [ ! -d $filesdir ]
then
   echo "Given directory path does not represent a directory on the filesystem!"
   echo $filesdir
   exit 1
else
   noofFiles=$(find $filesdir -type f | wc -l)
   noofMatchingLines=$(grep -r $searchstr $filesdir | wc -l)
   echo "The number of files are $noofFiles and the number of matching lines are $noofMatchingLines" 
   exit 0
fi
