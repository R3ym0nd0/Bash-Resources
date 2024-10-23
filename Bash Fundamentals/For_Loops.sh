#!/bin/bash

#For Loops Example 1

for cups in 1 2 3 4 5 6 7 8 9 10;
do
 echo "Hey, you've had $cups cups of coffee today."
done

#For Loops Example 2 (More Efficient than Example 1)

for cups in (1..10);
do
 echo "Hey, you've had $cups cups of coffee today."
done

#For Loops Example 3

for x in google.com bing.com facebook.com networkchuck.com;
do
	if ping -q -c 2 -w 1 $x /dev/null; then
		echo "$x is up"
	else
		echo "$x is down"
	fi
done

#For Loops Example 4

for x in  $(cat cities.txt);
do
	weather=$(curl -s http://wttr.in/$x?format=3)
	echo "The weather for $weather"
done

