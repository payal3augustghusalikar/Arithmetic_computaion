#! /bin/bash -x
echo "Welcome to arithmetic computation"

echo " Enter three numbers "
read a
read b
read c

#aritmetic operation
m="$(( $a + $b * $c ))"
echo " a+b*c = $m"
