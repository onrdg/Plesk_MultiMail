#!/bin/bash
input_file="example.com.txt"
domain=$(basename "$input_file" .txt)
echo "File name without extension: $domain"
clear
# Run the command for each line in the input file and wait for the previous process to complete to run the new command
while read line; do
    echo "Running CLI tool with variable: $line"
    plesk bin mail --create $line@$domain -passwd yourPasswd -descripton yourDesc -cp-access false -mailbox true -mbox_quota 4G &
    pids[$!]=1
    for pid in ${!pids[*]}; do
    wait $pid
    done
done < "$input_file"
echo "All processes finished"