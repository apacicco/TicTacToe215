#!/bin/bash

echo "INPUT --> How many minutes to bake the biscuits?"
#prints the above line
read BAKETIME
# reads the variable, baketime
if [ $BAKETIME -gt 10 ]; then #if the inputted baketime is over 10 mins 
  echo "LOG --> You burnt your biscuits!" #prints this to the terminal
  mv tray_of_raw_biscuits burnt_biscuits #renames file
elif [ $BAKETIME -lt 9 ]; then #if baketime is 9 or less
  echo "LOG --> They are RAW! -GR" #prints this to terminal
  mv tray_of_raw_biscuits still_raw_biscuits#renames file
else#if baketime = 10
  echo "LOG --> Mmm! Golden brown biscuits!" # prints to terminal
  mv tray_of_raw_biscuits perfect_biscuits # renames file
fi
