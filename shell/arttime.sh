#!/bin/bash

seconds=0

echo -n "enter number of seconds : "
read seconds

hours=$((seconds / 3600))
seconds=$((seconds % 3600))
minutes=$((seconds / 60))
seconds=$((seconds % 60))

echo "$hours hours(s) $minutes minute $seconds second(s)"
