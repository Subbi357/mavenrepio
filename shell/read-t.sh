#!/bin/bash

echo -n "Enter the number :"
if read -t 3 -s ; then 
	echo "good response"
else 
	echo "time out"
fi
