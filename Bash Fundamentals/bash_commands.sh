#! bin/bash

#Variables

name="example"
echo "Age: "
read age
date=$(date)
whoami=$(whoami)
ifconfig=$(ifconfig)
pwd=$(pwd)
getrich=$(((RANDOM % 15)+ $age))
sleep 1
echo "example"
echo "$RANDOM, $SHELL, $USER, $HOSTNAME"

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
        echo "Would you like coffee or tea?"
        read order
done
echo "Excellent choice, here is your coffee."

