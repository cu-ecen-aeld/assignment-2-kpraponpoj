#!/bin/bash 

if [ "$#" -ne 2 ]; then 
	echo "ERROR: Invalid Number of Arguments."
	echo "Total number of arguments should be 2." 
	echo "The order of the arguments should be: " 
	echo "1.) File Directory Path.(including filename)" 
	echo "2.) String to be written within the file." 
	exit 1
fi 

writefile="$1"
writestr="$2"

#check if the path exist, if not create the path. 

if [ ! -d "$writefile" ]; then 

# $writefile is '/path/to/somefile.txt', $(dirname "$writefile") evaluates to /path/to and mkdir -p "/path/to" 
	mkdir -p "$(dirname "$writefile")" 
	
	if [ ! -d "$writefile" ] 
	then 
		echo "$writefile created" 
	else 
		echo "Failed to create $writefile" 
		exit 1
	fi
fi 

echo "$writestr" >> "$writefile"

if [ $? -eq 0 ]; then 
	echo "Success!"
	exit 0
else 
	echo "Failed!" 
	exit 1 
fi

