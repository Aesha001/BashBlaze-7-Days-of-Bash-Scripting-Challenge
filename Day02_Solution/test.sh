#!/bin/bash
if [ $# -eq 0 ];then
	echo "This is a Welcome Message without commandline argument"

	echo "Welcome all lerners in my new blog..."
	#ls -la
	echo "This is list of all the files and directories in the current path."
	ls -la
	choice="y"
	while [ "$choice" != "n" ] && [ "$choice" != "N" ]; do
		du -a -h
	
		read -p "Do you want to move Forward? (y/n)" 
	        echo -n "Enter a line: "
		read line
		if [ -z "$line" ]; then
			echo "YOUR STRING IS EMPTY.... BETTER LUCK NEXT TIME"
			break
		fi
			count=$(echo -n "$line" | wc -m)
			 echo "The number of characters in '$line' is $count"
			 break
	done



fi








