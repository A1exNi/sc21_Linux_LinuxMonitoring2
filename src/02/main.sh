#!/bin/bash
source ./check_param
source ./generate

start_t=$( date +"%s" )
error=0
error=$( check_param $@ )
if [ $error -eq 1 ]
then
  echo "The first parameter must consist of letters of the English alphabet, no more than 7 characters."
elif [ $error -eq 2 ]
then
  echo "The second parameter must consist of letters of the English alphabet with a one dot. The first part is no more than 7 characters, the second - 3."  
elif [ $error -eq 3 ]
then
  echo "The third parameter must ba an integer no greater than 100 and at least 0."
elif [ $error -eq 4 ]
then
  echo "The script must take 3 parameters."
else
  name_log="gen.log"
  generate $@ $name_log
  end_t=$( date +"%s" )
  dif_t=$(( $end_t - $start_t ))
  str="Strat time: $( date -d @$start_t +"%H:%M:%S" ). End time: $( date -d @$end_t +"%H:%M:%S" ). Time has passed: $dif_t."
  echo $str >> $name_log
  echo $str
fi
