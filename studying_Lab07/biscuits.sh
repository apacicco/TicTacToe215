#!/bin/bash

echo "how long the biscuits should be baked for at 350 degrees Fahrenheit"

read $BAKETIME

if [ $BAKETIME > 10 ]; then
	touch tray_of_raw_biscuits
	mv tray_of_raw_biscuits burnt_biscuits
	echo "You burnt your biscuits!"
elif [ $BAKETIME < 9 ]; then
	touch tray_of_raw_biscuits
	mv tray_of_raw_biscuits still_raw_biscuits
	echo "Your biscuits are raw! -GRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR"
else
	touch tray_of_raw_biscuits
	mv tray_of_raw_biscuits perfect_Biscuits
	echo "PERFECT"
fi 

















































