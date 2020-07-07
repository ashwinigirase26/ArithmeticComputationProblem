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
echo "Sort the results to show the Computation Result in the Descending Order"
for (( i = 0; i < 4 ; i++ ))
do
   for (( j = $i; j < 4; j++ ))
   do
      if [ ${Array[$i]} -lt ${Array[$j]}  ]; then
           t=${Array[$i]}
           Array[$i]=${Array[$j]}
           Array[$j]=$t
      fi
   done
done

echo -e "\nSorted Numbers in descending Order:"
for (( i=0; i < 4; i++ ))
do
  echo ${Array[$i]}
done

#Sort into Ascending Order.
echo "Sort the results to show the Computation Value in Ascending Order"
for (( i = 0; i < 4 ; i++ ))
do
   for (( j = $i; j < 4; j++ ))
   do
      if [ ${Array[$i]} -gt ${Array[$j]}  ]; then
           t=${Array[$i]}
           Array[$i]=${Array[$j]}
           Array[$j]=$t
      fi
   done
done

echo -e "\nSorted Numbers in Ascending Order:"
for (( i=0; i < 4; i++ ))
do
  echo ${Array[$i]}
done
