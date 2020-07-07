#!/bin/bash -x

#taking three inputs
read -p "Enter value of a:" a
read -p "Enter value of b:" b
read -p "Enter value of c:" c

#compute a+b*c

result=$(($a + $b * $c))
echo "compute a+b*c:"$result

#Compute a*b+c

result2=$(($a * $b + $c))
echo "Compute a*b+c:-"$result2

#Compute c+a/b
result3=$(($c + $a / $b))
echo "Compute c+a/b:-"$result3

#Compute a%b+c
result4=$(($a % $b + $c))
echo "Compute a%b+c:-"$result4

#Result store into dictionary
DICT[TOTAL1]=$TOTAL1
DICT[TOTAL2]=$TOTAL2
DICT[TOTAL3]=$TOTAL3
DICT[TOTAL4]=$TOTAL4

#result store Dictionary to array
ARR[0]=${DICT[TOTAL1]}
ARR[1]=${DICT[TOTAL2]}
ARR[2]=${DICT[TOTAL3]}
ARR[3]=${DICT[TOTAL4]}

#Sort into Decending order
for ((ENTRY=0 ; ENTRY<4 ; ENTRY++))
do

        for ((ELEMENT=0 ; ELEMENT<4-ENTRY-1 ; ELEMENT++))
        do
                if ((${ARR[ELEMENT]} < ${ARR[$((ELEMENT+1))]} ))
                then
                        TEMP=${ARR[ELEMENT]}
                        ARR[$ELEMENT]=${ARR[$((ELEMENT+1))]}
                        ARR[$((ELEMENT+1))]=$TEMP
                fi
        done
done

echo "Decending Array:"
for ((ELEMENT=0; ELEMENT<4; ELEMENT++))
do
        echo ${ARR[ELEMENT]}
done
