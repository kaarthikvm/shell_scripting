#!/bin/sh


ITEM="apple"
FILE="./text.txt"
FAILURE=2
#MARKER="##################################"
NOSTDOUT="/dev/null"

if [ -f $FILE ]
then
    echo "file exists" > $NOSTDOUT
else
    exit $FAILURE
fi

# read the file content
while read LINE
do
   echo $LINE > $NOSTDOUT
done < $FILE


echo $MARKER
grep -n "2$" text.txt > $NOSTDOUT


echo $MARKER
grep -n "^Fr" text.txt > $NOSTDOUT




#Ends with 2
echo $MARKER
grep -n "2$" text.txt > $NOSTDOUT

#Starts with "Fr"
echo $MARKER
grep -n "^Fr" text.txt > $NOSTDOUT


#Logical OR operation (take each line, check any one is present)
#Use egrep for  Logical OR operation
echo $MARKER
egrep -n "^Fr|2$" text.txt > $NOSTDOUT


#Single character before r (eg: Mark watermellon)
#If r stats first letter in line, then that word is not selected (eg: rock mountain)
echo $MARKER
egrep -n ".r" text.txt > $NOSTDOUT
echo $MARKER
egrep -n "." text.txt > $NOSTDOUT #==> Prints all the characters in each line

#[aeiou] - Check for any one character in group for all letters in each line
echo $MARKER
egrep -n "[aeiou]" text.txt > $NOSTDOUT
#[eg: 1:Fred apples 2 ] - Select only a,e,i,o,u letters
  

#[aeiou] - Check for any one character NOT in group for all letters in each line
echo $MARKER
egrep -n "[^aeiou]" text.txt > $NOSTDOUT
#[eg: 1:Fred apples 2 ] - Discard a,e,i,o,u letters
          
  
# {n} - Preceding character matches exactly n times
# It means continuous match of character
echo $MARKER
egrep -n "[aeiou]{2}" text.txt > $NOSTDOUT
# Eg: 4:Robert pears 4 ==> It takes only "ea" in pears and discard "e" in Robert
echo $MARKER
egrep -n "[a-d]{2}" text.txt > $NOSTDOUT
# Eg: 6:Lisa peaches 7
#     7:Lisa peacaaabches 7  => Selects acaaab and it wont select 'c' as next letter is 'h' and n=2 in pattern
# How it works ==> Take each character and apply it and check for next subsequent character is with in range 
# Note : PLEASE USE EGREP for everything as it applies recursive expression
 
 
# [a-d] range selection
# It is similar to [aeiou] but it takes any character with in that range
echo $MARKER
egrep -n "[a-d]" text.txt > $NOSTDOUT
# [Eg: 1:Fred apples 2 ] - Selects only a,b,c,d character only



