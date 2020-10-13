#! /bin/bash -x
echo "Welcome to arithmetic computation"

echo " Enter three numbers "
read a
read b
read c

#aritmetic operation
m="$(( $a + $b * $c ))"
echo " a+b*c = $m"

n="$(( $a * $b + $c ))"
echo " a*b+c = $n"

o="$(( $c + $a / $b ))"
echo " c+a/b = $o"

p="$(( $a % $b + $c ))"
echo " a%b+c = $p"
