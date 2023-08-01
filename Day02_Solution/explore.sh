#!/bin/bash

# It check if the number of command-line arguments is zero

if [ $# -eq 0 ];then
	# This is a Welcome Message without using commandline argument
	
	echo "Welcome all lerners in my new blog..."
	
	# This command shows the list of all files in current path
	echo "This is list of all the files and directories in the current path."
	ls -la

	# now we can print the size of all files and directories in current path
	# first we can take one variable which is user choice 
	choice="y"

	# this loop is shows the all existing file or dir size  
	while [ "$choice" != "n" ] && [ "$choice" != "N" ]; do
		# this command is use for calculate or print the size of file
		du -a -h
		# now user have size of file if user wants to move forward or exit from this loop
	        # it enters yes or no	
		read -p "Do you want to move Forward? (y/n)"


		# A script that reads the user's input until an empty string is entered
		# and counts the number of characters in each line

		# Loop until an empty string is entered


		# Prompt the user to enter a line 
		echo -n "Enter a line: "

		 # Read the line from the standard input
		read line
	
		# Check if the line is empty	

		if [ -z "$line" ]; then
			echo "YOUR STRING IS EMPTY.... BETTER LUCK NEXT TIME"
			# Print and Break the loop
			break
		fi

		#Count the number of characters in the line using the wc command with the -m option
		
		count=$(echo -n "$line" | wc -m)

		 # Display the character count for the line
		echo "The number of characters in '$line' is $count"
		break
	done





