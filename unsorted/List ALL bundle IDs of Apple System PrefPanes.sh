#!/bin/sh

userAccount=`who | awk '/console/{ print $1 }'`
PPList=`ls -l /System/Library/PreferencePanes/ | awk '/prefPane/{ print $NF }'`
OS=`sw_vers -productVersion | cut -d. -f1,2`

for i in $PPList; do
	# BI=`defaults read /System/Library/PreferencePanes/$i/Contents/Info CFBundleIdentifier`
	echo "$i:\n	$(defaults read /System/Library/PreferencePanes/$i/Contents/Info CFBundleIdentifier)" >> /Users/$userAccount/Desktop/"$OS"_LibBundleIDs.txt
done