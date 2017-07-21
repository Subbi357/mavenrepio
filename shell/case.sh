#!/bin/bash

echo -n "Enter the value between 1 & 3 = "
read char
case $char in
	1 ) echo "enter element 1";;
	2 ) echo "enter element 2";;
	3 ) echo "enter element 3";;
	* ) echo "entered value is in betwwen 1 & 3"
esac
