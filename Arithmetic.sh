#!/bin/bash -x

#taking three inputs
read -p "Enter value of a:" a
read -p "Enter value of b:" b
read -p "Enter value of c:" c

#compute a+b*c

result=$(($a + $b * $c))
echo "compute a+b*c:"$result

