#!/bin/bash
if [ $# -ne 1 ]; then
  echo "Usage: $0 <directory_path>"
  exit 1
fi

if [! -d "$1"]; then
   echo "$1 is not a directory"
   exit 1
fi
     chmod -R o-w "$1"
echo "Permissions changed to readonly for other users in directory $1"
