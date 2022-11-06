#!/bin/bash

counter=0

while [ $counter -lt 5 ]
do
  echo "looping....."
  sleep 2
  echo "value of counter is $counter."
  counter=`expr $counter + 1`
done

echo "out of loop"
#new comment
