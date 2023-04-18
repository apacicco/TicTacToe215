#!/bin/bash
#shebang
echo "INPUT --> How many ounces of water would you like today?" #echos statement to terminal
read WATER #reads whatever value was inputted for the water variable

echo "LOG --> Ok! $WATER ounces coming up!" #prints to terminal, with $WATER equaling whatever the user inputted

mkdir -p cart #creates cart directory even if one exists

rm -f cart/water.item # removes water.item file just in case there is one

touch cart/water.item #creates water.item file

for (( i = 0; i < $WATER; i++ )); do # for loop
  echo "water$i" >> cart/water.item # whatever value that was placed into the WATER variable, that is appended to the water.item file in the cart directory
done #ends for loop
