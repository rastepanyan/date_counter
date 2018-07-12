#!/bin/bash

if [ ! -f "/tmp/current.tag" ]; then				# if file is missing, reset the counter 
   counter="001"
else
   current=$(cat /tmp/current.tag)					# read current state from a file

   day_clock=$(date +%y.%m.%d)						# take date from system clock
   day_file=$(echo $current | cut -d'.' -f 1,2,3) 	# take date from file
   counter=$(echo $current | cut -d'.' -f 4)		# take counter from file

   if [ "$day_clock" == "$day_file" ]; then			# increment counter if it is the same day
      counter=$(printf %03d $(expr $counter + 1))
   else
      counter="001"	
   fi
fi

datcount=$day_clock.$counter
echo $datcount										# show current tag on a screen

echo $datcount > /tmp/current.tag					# save current state in file
