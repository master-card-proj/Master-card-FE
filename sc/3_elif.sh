#!/bin/bash

read -p "enter the offer price for customer1: " PRICE1
read -p "enter the offer price for customer2: " PRICE2
echo
if [ $PRICE1 -lt $PRICE2 ]
then
  echo "customer1's offer is less than customer2"
  sleep 5
  echo "sell to customer2"
elif [ $PRICE1 -gt $PRICE2 ]
then
  echo "customer1's offer is greater than customer2"
  sleep 5
  echo "sell to customer1"
else
  echo "the offer of the 2 customers are the same, ask for improve offer"
fi

