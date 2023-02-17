#!/bin/bash
#script to calculate the sum of numbers in an input array
#num_values=(12 12 12 12 12)
#read input as array
read -r -a num_values -p "Enter values with space: " 

#echo "$num_values"
#echo "${Fruits[@]}"
var1=0
for num_val in "${num_values[@]}"
do
  #echo "$i"
  #echo "$num_val"
  var1=$(("$var1" + "$num_val"))
done
echo "$var1"