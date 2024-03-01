#!/bin/bash
# 200 - successful request
# 201 - the request was completed successfully and resulted in the creation of a resource
# 400 - the server was unable to understand the request due to invalid syntax
# 401 - you are trying to access a page that you must first log in to (Unauthorized)
# 403 - access to the requested resource is denied
# 404 - not found
# 500 - internal server problem
# 501 - the request method is not supported by the server and connot be processed
# 502 - the server did not receive the correct request from another server
# 503 - the server is not ready to process this request


function generate {
  number=$(( $RANDOM % 900 + 100 ))
  responseCode=( 200 201 400 401 403 404 500 501 502 503 )
  metods=( GET POST PUT PATCH DELETE )
  urls=( "https://google.com" "https://yandex.ru" "https://mail.ru" )
  agents=( "Mozilla" "Google Chrome" "Opera" "Safari" "Internet Explorer" "Microsoft Edge" )
  date=$1
  for (( count = 0; count < $number; count++ ))
  do
    ip=192.168.0.$(( $RANDOM % 255 ))
    index=$(( $RANDOM % 10 ))
    index2=$(( $RANDOM % 5 ))
    metod="\"${metods[$index2]} /stuff.html HTTP/1.1\""
    time=$(( $time + $RANDOM % 86 ))
    newDate=$( date -d "$date $time second" +"%d/%b/%Y:%H:%M:%S" )
    index3=$(( $RANDOM % 3 ))
    url="${urls[$index3]}"
    str="$ip - - [$newDate ] $metod ${responseCode[$index]} 0 $url \"${agents[$index2]}\""
    echo $str 
 done
}

for (( i = 0; i < 5; i++ ))
do
  name=day_$i.log
  date=$( date -d "$date $i day ago" +"%Y-%m-%d" )
  generate $date > $name
done
