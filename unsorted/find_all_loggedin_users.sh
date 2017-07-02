#!/bin/bash
w -h | sort -u -t' ' -k1,1 | while read user etc
do
  homedir=$(dscl . -read /Users/$user NFSHomeDirectory | cut -d' ' -f2)
  echo =$user= =$homedir=
done