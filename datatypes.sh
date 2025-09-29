#!/bin/bash

#every thing in the shell consider as string
number1=24
number2=29
sum=$(($number1+$number2))
echo "sum of two number is: $sum"

LEADERS=("MODI" "CBN" "PAWAN")
echo "leaders: ${LEADERS}[@]"