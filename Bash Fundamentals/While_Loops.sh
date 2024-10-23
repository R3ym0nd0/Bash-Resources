#! /bin/bash

#While Loops Examples

x=1

while [[ $x -le 10 ]]
do 
        read -p "Pushup $x Press ENTER to continue"
        (( x ++ ))
done
echo "Congrats, you completed your pushups!!"

#Until Loops Examples

until [[ $order == "coffee" ]]
do
        read -p "Would you like coffee or tea?" order
		echo "Excellent Choice: $order!!"
done


#Using break and continue Examples

#1. break
echo "What do you want to check?"
read target

while true
do
	if ping -q -c 2 -w 1 $target > /dev/null; then
		echo "Hey, you up!!"
		break
	else
		echo "$target is currently down"
	fi
sleep 2 
done

#2. continue

echo "Welcome to the Hollywood Tower Hotel"
sleep 1
echo "Going up"
sleep 1

for x in {1..17};
do
	if [[ $x == 13 ]]; then
		continue
	fi
	echo "Floor $x"
	sleep 1
done
