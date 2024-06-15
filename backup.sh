#!/bin/bash
if[ $# -eq 0 ];then
  echo"Usage:$0 <directory>"
  exit 1
fi
backup_dir="$1"
if[! -d"$backup_dir"];then
  echo "Directory $backup_dir not found." 
  exit 1
fi
timestamp=$(date +%y%m%d_%H%M%s)
backup_filename="backup_$timestamp.tar.gz"
backup_destination="/path/to/backup/location/$backup_filename"
tar -czf"$backup_destination""$backup_dir"

if[ $? -eq 0 ];then
  echo"Backup created:
  $backup_destination"
  else
  echo"Backup failed."
fi   
