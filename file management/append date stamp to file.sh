#!/bin/sh

file_name=test_files.txt

current_time=$(date "+%Y.%m.%d-%H.%M.%S")
echo "Current Time : $current_time"

cp $file_name $filename_name.$current_time

echo "You should see new file generated with timestamp on it.."
