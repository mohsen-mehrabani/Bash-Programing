#!/usr/bin

PS3='Pick a color: '

select color in "Brown" "Red" "White" "Green"
do
  echo "You selected this item: $color"
  break
done