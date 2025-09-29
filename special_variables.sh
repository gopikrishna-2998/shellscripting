#!/bin/bash

echo "All the variables passed: $@"  #$@ or $* represents all the in bash script
echo "All the variables passed: $*"
echo "script name: $0" #$0 used to get script name in bash
echo "current directory: $PWD" #$PWD helps to get current directory
echo "who is running: $USER"
echo "home directory: $HOME"
echo "PID of the script: $$" #$$ process instance id.
sleep 10 &
echo "PID of the last command background: $!" #$! last command in background