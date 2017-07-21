#!/bin/bash

number=0

echo -n "Enter the number:"
read number

if [ $((number % 2 )) -eq 0 ] ; then
	echo "the number is even"
else 
	echo "the number is odd"
fi
