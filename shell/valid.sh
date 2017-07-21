#!/bin/bash

echo -n "Enter a Number : "
read number


if [ -z $number ]; then
	echo " enter a valid number"
else 
	echo "enter a number : $number"
	if [ "$((number % 2))" -eq 0 ] ;then
		echo "print even number"
	else
		echo "Odd number"
	fi
fi
