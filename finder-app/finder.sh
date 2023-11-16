#!/bin/bash 

if [ "$#" -ne 2 ]; then 
	echo "ERROR: Invalid Number of Arguments."
	echo "Total number of arguments should be 2." 
	echo "The order of the arguments should be: " 
	echo "1.) File Directory Path." 
	echo "2.) String to be searched in the specified directory path." 
	exit 1
fi 

filesdir="$1"
searchstr="$2" 

if [ ! -d "$filesdir" ]; then 
	echo "Error: '$filesdir' is not a directory" 
	exit 1 
fi 

#send any error messages produced by the command to the null device and dont display them

matching_lines=$(grep -r "$searchstr" "$filesfir" 2> /dev/null) 

#find command search the directory. -type f, limited to regular files. WC command is used to count lines, words, and bytes in a file or standard input. -l tells 'wc' to count lines. 
num_files=$(find "$filesdir" -type f | wc -l) 
num_matching_lines=$(grep -r "$matching_lines" "$filesdir"| wc -l) 

echo "The number of files are $num_files and the number of matching lines are $num_matching_lines" 


exit 0



