#!/bin/bash
#shebang
FLOUR=$1 #variable declaration with 1 as the default value. $ means it can change

echo "LOG --> Shopping for $FLOUR ounces of flour at the grocery store..." # prints statement to terminal with varying FLOUR value based on user input

mkdir -p cart #makes a directory, cart, even if there is one already

rm -f cart/flour.item #removes the flour.item file just in case there already is one

touch cart/flour.item # creates flour.item file in car folder

for (( i = 0; i < $FLOUR; i++ )); do #for loop, which will iterate however many times, but it'll iterate less than the FLOUR variable
  echo "flour$i" >> cart/flour.item # prints the statement, with the changing flower value. whatever inputted value would be appended to the flour.item file
done
