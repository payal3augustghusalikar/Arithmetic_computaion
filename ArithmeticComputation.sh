#! /bin/bash -x
echo "Welcome to arithmetic computation"

echo " Enter three numbers "
read a
read b
read c

counter=0
temp=0

#aritmetic operation
m="$(( $a + $b * $c ))"
echo " a+b*c = $m"

n="$(( $a * $b + $c ))"
echo " a*b+c = $n"

o="$(( $c + $a / $b ))"
echo " c+a/b = $o"

p="$(( $a % $b + $c ))"
echo " a%b+c = $p"

#to store result in dictionary

result[$((counter++))]=$m
result[$((counter++))]=$n
result[$((counter++))]=$o
result[$((counter++))]=$p

#printing result in dictionary
echo "Result of arithmetic operation in dictionary is : " ${result[@]}

#to print result from dictionary to array
declare -a  array

for i in "${!result[@]}"
do
   array[$i]=${result[$i]}
done

echo "Result in Array elements are : "
echo ${array[@]}

#sort array in descending order
for (( i=1; i<$counter; i++ ))
do
   for (( j=0; j<$i; j++ ))
   do
      if [[ ${array[j]} -lt ${array[i]} ]]
      then
         temp=${array[j]}
         array[j]=${array[i]}
         array[i]=$temp
      fi
   done
done
echo ""
echo "array after sorting in descending order is : "
echo ${array[@]}


#sort array in descending order
for (( i=1; i<$counter; i++ ))
do
   for (( j=0; j<$i; j++ ))
   do
      if [[ ${array[j]} -gt ${array[i]} ]]
      then
         temp=${array[j]}
         array[j]=${array[i]}
         array[i]=$temp
      fi
   done
done
echo ""
echo "array after sorting in ascending order is : "
echo ${array[@]}

