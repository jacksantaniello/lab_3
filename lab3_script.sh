#!/bin/bash
# Authors : Jack Santaniello & Umar Haroon
# Date: 2/7/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem

#echo "Input file name"
#read filename
#echo "Input RegEx Pattern"
#read pattern

#instead of asking for input I am using args

filename=$1
pattern=$2

echo "Filename: $filename"
echo "Pattern: $pattern"

grep -c $pattern $filename

let emails=$(grep -c "@" "regex_practice.txt")
echo "number of emails: $emails"

echo "Printing numbers with 303 area code"
grep "303" "regex_practice.txt"

#"storing all geocities emails, saving to file, then printing file
echo "saving all geocities emails to email_results.txt"
grep "geocities.com" "regex_practice.txt" >> email_results.txt

git add email_results.txt
git commit email_results.txt
git push origin master

