#!/bin/bash

log_file="sample.log"
grep"ERROR" "$log_file"| awk'{
  date_time =$1""$2
  error_message =""
  for(i=3; i<=NF; i++){
   error_message = error_message $i""
   }
  print"Date:",date_time,"| Error:",error_message
 }'   
