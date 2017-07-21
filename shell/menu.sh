#!/bin/bash

press_enter()
{
	echo -en "\nPress Enter to continue"
	read selection
	clear		
}

selection=
until [ "$selection" = "0" ]; do
	echo "
	PROGRAM MENU
	1 - Display free disk space
	2 - Display free memory
	0 - exit program
	"
	echo -n " Enter Selection : "
	read selection
	case $selection in
		1 ) df -h ; press_enter ;;
		2 ) free -g ; press_enter;;
		0 ) exit  ;;
		* ) echo "choose from options 1 , 2 & 0" ; press_enter
	esac
done
