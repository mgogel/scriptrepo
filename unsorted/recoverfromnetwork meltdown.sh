#! /usr/bin/env bash 

while true; do
  echo "$(date -u): \c"  
  dig @8.8.8.8 +tries=1 +time=3 google.com | \
          grep 'Query time' | \
          cut -d ' ' -f 4 -f 5
  if [ ${PIPESTATUS[0]} -ne 0 ] ; then
     ifconfig en0 down
     ifconfig en0 up
     echo "--> Bounced en0\n"
  fi
  sleep 5
done