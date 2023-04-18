#!bin/bash

BUTTER=$1
BUTTEROZ=$((BUTTER*4))



echo "LOG --> Shopping for $BUTTER sticks a.k.a $BUTTEROZ ounces of butter..."


mkdir -p cart


rm -f cart/butter.item
touch cart/butter.item

for (( i = 0; i < $BUTTEROZ; i++ )); do
  echo "butter$i" >> cart/butter.item
done














































