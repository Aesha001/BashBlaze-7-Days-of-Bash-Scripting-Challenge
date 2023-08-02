#!/bin/bash

# A script that takes a directory path as a command-line argument and performs a backup of the directory
# Check if the command-line argument is provided


if [ $# -eq 0 ] || [ ! -d "$1" ]; then
	# Display an error message and exit the script
	echo "There is an error in your path please check"
	echo "Usage: $0 directory_path"
	
	exit 1
fi


# Assign the command-line argument to a variable for dir path
dir=$1

# This function perform a backup of the directory 

function create_backup {
	    local timestamp=$(date '+%Y-%m-%d_%H-%M-%S')  # Get the current time of your device
	    local backup_dir="${dir}/backup_${timestamp}"

		    # Create the backup folder with the timestamped name
		        mkdir "$backup_dir"
			    echo "Backup created successfully: $backup_dir"
		   }

#This function is perform rotaion for backup dir

function perform_rotation {
	    local backups=($(ls -t "${dir}/backup_"* 2>/dev/null))  # List existing backups sorted by timestamp

	        # Check if there are more than 3 backups
		    if [ "${#backups[@]}" -gt 3 ]; then
			            local backups_to_remove="${backups[@]:3}"  # Get backups beyond the last 3
				            rm -rf "${backups_to_remove[@]}"  # Remove the oldest backups
					        fi
					}
	
create_backup
perform_rotation

