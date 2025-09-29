#!/bin/bash

starttime=$(date +%s)
sleep 10 &
endtime=$(date +%s)
totaltimetaken=$(($endtime-$starttime))
echo "totaltime is : $totaltimetaken"