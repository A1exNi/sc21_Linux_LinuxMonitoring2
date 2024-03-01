#!/bin/bash
source ./check_param
source ./functions

error=$( check_param $@ )

if [ $error -eq 1 ]
then
  echo "The script must take 1 parametr (1, 2, 3 or 4)"
else
  if [ $1 -eq 1 ]
  then
    sort_code "../04/day_0.log" "../04/day_1.log" "../04/day_2.log" "../04/day_3.log" "../04/day_4.log"
  elif [ $1 -eq 2 ]
  then
    print_ip "../04/day_0.log" "../04/day_1.log" "../04/day_2.log" "../04/day_3.log" "../04/day_4.log"
  elif [ $1 -eq 3 ]
  then
    print_error "../04/day_0.log" "../04/day_1.log" "../04/day_2.log" "../04/day_3.log" "../04/day_4.log"
  elif [ $1 -eq 4 ]
  then
    print_error_ip "../04/day_0.log" "../04/day_1.log" "../04/day_2.log" "../04/day_3.log" "../04/day_4.log"
  fi
fi
