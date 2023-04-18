al pacicco
biscuits/Makefile: this file is what the user will see. it calls various recipes which call various scripts and do various things depending on what part of the Makefile the user is in. It's basically the interface, and will take in any valid inputs and return the appropriate output. All the following scripts run within this Makefile

biscuits/bin/biscuits.sh: this script would take in an iteger from the user, and returned one of 3 different statements depending on the input. if the input was over 10, the script would print a message about the biscuits burning. if it was 9 or under, the script would return a message saying the biscuits were raw. if the input was 10, the script would return a message saying the hbiscuits were perfect

water.sh: takes in an integer, assigns that to a variable, which represents the number of ounces the user wants, and then adds the inutted number of ounces to the cart. it utilizes a for loop to assign that inputted value to the shopping cart, as well as making sure that there was no other water related value in the cart

butter.sh: This script prompts the user by asking how many sticks of butter the user wants, and then converts that measurement to the number of ounces that number of sticks would be. it does this by utilizing a foor loop, which will add both the input and the converted input to the cart file, overriding what value was previous there

flour.sh: is given the amount of flour by the Makefile, and adds that amount to the shopping cart while also making sure that there is no duplciate

script.sh: this is a list of various commands, which I explain in as clear detail as possible. the script does a number of things, from searching for different values to assigning different variables different values, to creating different variables and constantly overwriting files


