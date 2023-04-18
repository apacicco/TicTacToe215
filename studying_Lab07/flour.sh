#!/bin/bash

echo "LOG --> Shopping for $FLOUR ounces of flour at the grocery store..."

FLOUR=$1

mkdir -p cart

rm -f cart/flour.item

touch cart/flour.item

for (( i = 0; i < $FLOUR; i++)); do
	echo "flour$i" >> cart/flour.item
done










































