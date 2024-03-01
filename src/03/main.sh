#!/bin/bash
source ./clear_log

if [ $# -ne 1 ] || [[ ! $1 =~ ^[1-3]+$ ]]
then
  echo "The script takes one parameter which must be 1, 2 or 3."
else
  if [ $1 -eq 1 ]
  then
    clear_log
  elif [ $1 -eq 2 ]
  then
   echo "2"
  elif [ $1 -eq 3 ]
  then
    echo "3"
  fi
fi
