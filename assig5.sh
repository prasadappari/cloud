#!/bin/bash
#Debug mode flag
debug=false

debug_message(){
if["$debug" =true];then
echo"DEBUG: $1"
fi
}
if["$1" = "--debug"];then
debug=true
fi
if[-d"TestDir"];then
  echo"Error:Directory'TestDir' alredy exists."
  debug_message "Script terminated due to existing directory."
  exit 1
fi
  mkdir -p TestDir
  if[$? -ne 0];then
  echo"Error:Unable to create directory'TestDir'."
  debug_message"Script terminated due to directory creation failure."
  exit 1
fi
  debug_message "Directory'TestDir'created successfully."
  
  for((i=1;i<=10;i++)); do
  file_name="File${i}.txt"
  echo "$file_name" > TestDir/"$file_name" 
  if[$? -ne 0];then
  echo"Error:Unable to create file'$file_name'"
  debug_message "Script terminated due to file creation failure."
  exit 1
fi 
   debug_message "File'$file_name'created successfully."
 done
 echo"Files created successfully."  
