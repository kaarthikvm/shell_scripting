Regular Expression  - LETTER match (I mean single character)

Ends with 2
grep -n "2$" text.txt

Starts with "Fr"
grep -n "^Fr" text.txt


Logical OR operation (take each line, check any one is present)
Use egrep for  Logical OR operation
egrep -n "^Fr|2$" text.txt


Single character before r (eg: Mark watermellon)
If r stats first letter in line, then that word is not selected (eg: rock mountain)
egrep -n ".r" text.txt
egrep -n "." text.txt ==> Prints all the characters in each line

[aeiou] - Check for any one character in group for all letters in each line
egrep -n "[aeiou]" text.txt
[eg: 1:Fred apples 2 ] - Select only a,e,i,o,u letters
  

[aeiou] - Check for any one character NOT in group for all letters in each line
egrep -n "[^aeiou]" text.txt
[eg: 1:Fred apples 2 ] - Discard a,e,i,o,u letters
          
  
 {n} - Preceding character matches exactly n times
 It means continuous match of character
 egrep -n "[aeiou]{2}" text.txt
 Eg: 4:Robert pears 4 ==> It takes only "ea" in pears and discard "e" in Robert
 egrep -n "[a-d]{2}" text.txt
 Eg: 6:Lisa peaches 7
     7:Lisa peacaaabches 7  => Selects acaaab and it wont select 'c' as next letter is 'h' and n=2 in pattern
How it works ==> Take each character and apply it and check for next subsequent character is with in range 

 
 
 [a-d] range selection
 It is similar to [aeiou] but it takes any character with in that range
 egrep -n "[a-d]" text.txt
 [Eg: 1:Fred apples 2 ] - Selects only a,b,c,d character only
 
 
 
 *
 +
 ?
 ()




