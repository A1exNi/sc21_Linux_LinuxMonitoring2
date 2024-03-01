#!/bin/bash
source ./check_param
source ./generate

error=0
error=$( check_param $@ )
if [ $error -eq 1 ]
then
  echo "The first parameter must be an absolute path to the directory."
elif [ $error -eq 2 ]
then
  echo "The second parameter must be an integer."
elif [ $error -eq 3 ]
then
  echo "The third parameter must consist of letters of the English alphabet, no more than 7 characters."
elif [ $error -eq 4 ]
then
  echo "The fourth parameter must be an integer."
elif [ $error -eq 5 ]
then
  echo "The fifth parameter must consist of letters of the English alphabet with a one dot. The first part is no more than 7 characters, the second - 3."  
elif [ $error -eq 6 ]
then
  echo "The sixth parameter must ba an integer no greater than 100 and at least 0."
elif [ $error -eq 7 ]
then
  echo "The script must take 6 parameters."
else
  generate $@
fi
