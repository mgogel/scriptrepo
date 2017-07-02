#!/bin/csh

# Script to perform periodic maintanence.

echo ""
echo enter 1 for Daily maintenance
echo enter 2 for Daily and weekly maintenance
echo enter 3 for Daily weekly and monthly maintanance

set choice = $<
echo choice is $choice

switch ($choice)
case 1:
  echo daily
  date
  sudo periodic daily
  date
  breaksw
case 2:
  echo daily/weekly
  date
  sudo periodic daily
  sudo periodic weekly
  date
  breaksw
case 3:
  echo daily/weekly/monthly
  date
  sudo periodic daily
  sudo periodic weekly
  sudo periodic monthly
  date
  breaksw
default:
  echo default
endsw
say finished