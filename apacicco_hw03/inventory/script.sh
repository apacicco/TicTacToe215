#!/bin/bash
ARG1=$1 #FUNCTIONS ARE EXPLAINED WITH COMMENTS BELOW THEM
########################################
# shebang with declared variable with a changeable value
rm -f sorted_inventory_name.csv 
rm -f big_summer_blowout_sale.csv
rm -f stats.csv
# force removes the upper .csv files
if [[ $ARG1 == "reset" ]]; then
  echo "Cleaned up previous run files only..."
  echo "EXITING..."
  exit
fi

########################################
# its an if statement looking for a specific input, "reset". if $ARG1 matches, it echos 2 statements and exits
SHUF_INV="./shuf_inventory.csv"
# sets a variable to a running of the above value
NUM_LINES=$(wc -l $SHUF_INV | cut -d ' ' -f 1)
# initializes NUMLINES, if you have a bunch of things seperated by spaces, it grabs the first word, but first counts the words in shuf inv and pipes that into cut, which grabs the number outputted by the prior command in the parantheses
STATS="./stats.csv"

########################################
# TASK 0
# initializes STATS
echo "Statistic Type,Stat" > $STATS

########################################
# TASK 1
# prints the statement, which'll overwrite whatever is in $STATS
let "NUM_LINES=NUM_LINES-1"
# evaluates the following mathematical expression
head -n 1 $SHUF_INV > sorted_inventory_name.csv 
# takes whatever is in SHUF_INV and overwrites the first line of the overwritten file
tail -n $NUM_LINES $SHUF_INV | sort >> sorted_inventory_name.csv
# takes last 49 lines in SHUF_INV files, and pipes that through the sorting command, and whatever is sorted is added to the end of the appened file, sorted_inventory_name.csv
echo "Total Products,$NUM_LINES" >> $STATS
########################################
# TASK 2
# prints the statement to the file 
CITRUS=$(grep -i "Citrus" $SHUF_INV)
# sets the variable to the word citrus if that word is found in the file, and returns the number of lines citrus is in
NUM_CITRUS=$(echo "$CITRUS" | wc -l)
# sets the variable to the number of lines citrus is found
echo "Total Citrus,$NUM_CITRUS" >> $STATS
# prints the number of times the word citrus is found and overwrites whatever is in the file
CITRUS_1=$(echo "$CITRUS" | grep -E "[1]\.[0-9]{2}" | wc -l)
# inputs citrus into an advanced grep search, and however many times that word is found, that value is assigned to the variable. 1 ust be the first digit, and have a max of 2 following decimal digits. It finds a price, and counts those that have a price of $1 - $1.99
CITRUS_2=$(echo "$CITRUS" | grep -E "[0-2]\.[0-9]{2}" | wc -l)
# same thing as last command, but with a more expansive search
echo "1.00 >= CITRUS >= 1.99,$CITRUS_1" >> $STATS 
# uses the echoed statement to find the price between the given range and overwrites the file
echo "0.00 >= CITRUS >= 2.99,$CITRUS_2" >> $STATS
########################################
# TASK 3
# same thing, but overwrites the prior command with a greater range 
echo "Products start with A,$(grep -E "^[Aa]" $SHUF_INV | wc -l)" >> $STATS
########################################
# TASK 4
# finds the number of times A is in the file, upper or lowercase, and overwrites the file using that value
INV_REGEX="s/[1]\.[0-5][0-9]$/1\.00/g"
sed -E $INV_REGEX sorted_inventory_name.csv > big_summer_blowout_sale.csv
########################################
# TASK 5
# finds and replaces whatever value inv regex is in the file and appends that to the right side file. searchs for anything between $1 - $1.59
TEMP=$(grep -iv -f product_types.csv sorted_inventory_name.csv)
# a found word or character in the files
COUNT=$(echo "$TEMP" | wc -l)
# counts the number of times that TEMP variable is found 
let "COUNT=COUNT-1"
# count has reassigned value
echo "Plastic Products,$COUNT" >> $STATS
########################################
# TASK 6
# uses the printed statement, with the changed count value, and overwrites the file
cat $STATS
