#!/bin/bash

counter=1

while [ $counter -lt 6 ]
do
  echo "looping...."
  echo "counter is $counter"
  sleep 2
  counter=`expr $counter + 1` # $(($counter + 1))
  done
