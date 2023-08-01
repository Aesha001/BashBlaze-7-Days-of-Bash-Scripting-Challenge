#!/bin/bash

# A script that takes a directory path as a command-line argument and performs a backup of the directory

# Check if the command-line argument is provided
if [ $# -eq 0 ]; then
	  # Display an error message and exit the script
	    echo "Usage: $0 directory_path"
	      exit 1
fi

# Assign the command-line argument to a variable
dir=$1

# Check if the directory exists
if [ ! -d "$dir" ]; then
	  # Display an error message and exit the script
	    echo "$dir is not a valid directory"
	      exit 2
fi

# Create a variable to store the backup folder name
backup_folder="$dir-backup-$(date +%Y%m%d%H%M%S)"

# Create the backup folder
mkdir -p "$backup_folder"

# Copy all the files from the directory into the backup folder using the cp command with the -r option
cp -r "$dir"/* "$backup_folder"

# Display a success message
echo "Backup completed successfully"

# Create a variable to store the backup folder prefix
backup_prefix="$dir-backup-"

# Create an array to store the backup folder names sorted by date using the ls command with the -t option and the grep command with the -E option
backup_array=($(ls -t | grep -E "$backup_prefix[0-9]{14}"))

# Loop through the backup folder names starting from the fourth element using the seq command with the -s option
for i in $(seq 3 -s " " ${#backup_array[@]}); do
	  # Remove the backup folder using the rm command with the -rf option
	    rm -rf "${backup_array[$i]}"
    done

    # Exit the script
    exit 0

