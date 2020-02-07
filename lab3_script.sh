#!/bin/bash
# Authors : Jack Santaniello & Umar Haroon
# Date: 2/7/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem

echo "Input file name"
read filename
echo "Input RegEx Pattern"
read pattern

echo "Filename: $filename"
echo "Pattern: $pattern"

grep $pattern $filename

grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}'  "regex_practice.txt"

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

