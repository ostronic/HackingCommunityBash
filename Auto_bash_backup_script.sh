bash

#!/bin/bash



# Define the source file and backup directory

source_file="/path/to/source/file.txt"

backup_dir="/path/to/backup/directory"



# Create the backup filename with a timestamp

backup_filename="$(date +'%Y%m%d%H%M%S')_file.txt"



# Check if the backup directory exists, if not create it

if [ ! -d "$backup_dir" ]; then

 mkdir -p "$backup_dir"

fi



# Copy the source file to the backup directory

cp "$source_file" "$backup_dir/$backup_filename"



echo "Backup created: $backup_dir/$backup_filename"


