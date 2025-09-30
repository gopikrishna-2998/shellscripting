#!/bin/bash

echo "Enter a number:"
read Number

if [ $(($Number % 2)) -eq 0 ]; then
    echo "The number $Number is even"
else
    echo "The number $Number is odd"
fi