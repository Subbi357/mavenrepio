#!/bin/bash -x

echo -n "Enter the value between 1 - 3 : "
read char

if [ "$char" = "1" ]; then
	echo "you enter 1"
elif [ "$char" = "2" ]; then
	echo "you enter 2"
elif [ "$char" = "3" ]; then
	echo "you enter 3"
else 
	echo "No value entered between 1 - 3"
fi
