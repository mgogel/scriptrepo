#!/bin/bash
# Shell script to rename files, in the current directory, that contain
# upper case characters to all lower case characters.
# -------------------------------------------------------------------------
# Copyright (c) 2012 Jay C, Everson
# This script is licensed under GNU GPL version 2.0 or above
# -------------------------------------------------------------------------

for file in *
do
#Check to see if file name contains any uppercase characters
    iscap=`echo $file | awk '{if ($0 ~ /[[:upper:]]/) print }'`
    if [[ -n $iscap ]]
    then
#Generate the new file name
        newname=`echo $file | tr '[A-Z]' '[a-z]'`
#Check to see if the new name already exists
        if [ -f $newname ]
        then
            echo "$newname exists, skipping $file..."
        else
            echo "Moving $file to $newname"
            mv $file $newname
        fi
    fi
done
