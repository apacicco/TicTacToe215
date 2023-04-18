#!/bin/bash
#shebang
BUTTER=$1 #variable with temporary default value
BUTTEROZ=$((BUTTER*4)) # variable whose value is based on the prior declare variable

echo "LOG --> Shopping for $BUTTER sticks or $BUTTEROZ ounces of butter..." #prints this to terminal while also echoing the inputted value of BUTTER and then calculated BUTTEROZ based on the BUTTER input as well as the formula in the BUTTEROZ declaratoion

mkdir -p cart #creates a directory, cart, even if it already exists

rm -f cart/butter.item # force removes the file, butter.item, from the directory, cart, in case there already is one

touch cart/butter.item # replaces the file we just deleted

for (( i = 0; i < $BUTTEROZ; i++ )); do #for loop, iterates however many times, but will iterate less than the value of BUTTEROZ
  echo "butter$i" >> cart/butter.item # appends the number of ounces we have to the butter.item file
done #done with for loop
