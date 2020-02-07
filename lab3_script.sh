#!/bin/bash
# Authors : Jack Santaniello & Umar Haroon
# Date: 2/7/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem

#inputs for user
echo "Input file name"
read filename
echo "Input RegEx Pattern"
read pattern

#outputs the users inputs for their reference
echo "Filename: $filename"
echo "Pattern: $pattern"

#preforms the search
grep $pattern $filename

#searches and outputs the number of phone numbers in regex_practice.txt
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}'  "regex_practice.txt"

#searches and counts all emails and stores value in a variable
let emails=$(grep -c "@" "regex_practice.txt")
echo "number of emails: $emails"

#prints all phone numbers with 303 area code
echo "Printing numbers with 303 area code"
grep "303" "regex_practice.txt"


#"storing all geocities emails, saving to file, then printing file
echo "saving all geocities emails to email_results.txt"
grep "geocities.com" "regex_practice.txt" >> email_results.txt

uploads email_results.txt to git
git add email_results.txt
git commit email_results.txt
git push origin master

