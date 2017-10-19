#!/bin/bash
# Licence GNU GPL

ASLR=`cat /proc/sys/kernel/randomize_va_space`

if [ $# -gt 0 ] 
then
  echo Usage : aslr
  echo Switch on/off ASLR on linuxes
  exit
fi

if [ $ASLR -eq 2 ]
then
  echo "ASLR ON->OFF"
  sudo sh -c "echo 0 > /proc/sys/kernel/randomize_va_space"
  exit
elif [ $ASLR -eq 0 ]
then
  echo "ASLR OFF->ON"
  sudo sh -c "echo 2 > /proc/sys/kernel/randomize_va_space"
  exit
fi

