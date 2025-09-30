#!/bin/bash

Number=$1

if [ $Number -lt 10 ]; then
    echo "The number $Number is less than 10"
else
    echo "The number $Number is 10 or greater"
fi

#-lt less than
#-le less than or equal to
#-gt greater than
#-ge greater than or equal to
#-eq equal to
#-ne not equal to   