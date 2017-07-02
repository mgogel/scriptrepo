#!/bin/sh
# Creator: Taylor Price
# Contact: taylorprice@lavabit.com
# Website: manls.wordpress.com
# 	   github.com/drpebcak


# Please run as root.
# This script is meant to migrate an existing user to a new home folder as painlessly as possible.

# Set Current shortname variable
E=""

#set Target shortname variable
F=""

# Copies current home folder to new location
ditto /Users/"$E" /Users/"$F"

# Reads UniqueID and saves value to $A
A=$(dscl . -read /Users/"$E" UniqueID)
# Takes $A and shaves off everything but the 3 digit UniqueID and saves to $B
B=$(echo $A | tail -c 5)
# Reads RealName and saves vaule to $C
C=$(dscl . -read /Users/"$E" RealName)
# Takes $C and cuts off 'RealName:' and saves remainder to $D
D=$(echo $C | cut -f2 -d":")

# This section deletes the old user and removes the old home folder
dscl . -delete /Users/$E
rm -rf /Users/$E


# Creates new User and sets vital attributes
dscl . -create /Users/"$F"
dscl . -create /Users/"$F" NFSHomeDirectory /Users/"$F"
dscl . -create /Users/"$F" UserShell /bin/bash
dscl . -create /Users/"$F" RealName "$D"
dscl . -create /Users/"$F" UniqueID "$B"
# Makes standard User
dscl . -create /Users/"$F" PrimaryGroup staff
dscl . -create /Users/"$F" PrimaryGroupID 80
# Set user password to 'temp'
dscl . -passwd /Users/"$F" "temp"
# To make Admin, uncomment this next line:
# dscl . -append /Groups/admin GroupMembership "$F"
