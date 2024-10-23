#!/bin/bash

#I don't know but its helpful

#1.Integer Comparison

1.${1,,} = lower() in python
2.${1^^} = upper() in python
3.-gt = > in python
4.-lt = < in python
5.-eq = == in python
6.-ge = >= in python
7.-le - <= in python

#2.Logical Operators

1.&&: Logical AND (used in conditional statements).
2.||: Logical OR (used in conditional statements).
3.!: Logical NOT (used to negate a condition).

#3.Arithmetic Operators:

1.+: Addition.
2.-: Subtraction.
3.*: Multiplication.
4./: Division.
5.%: Modulus (remainder after division).

#4.String Comparison Operator

1.=: Checks if two strings are equal.
2.!=: Checks if two strings are not equal.
3.<: Checks if the first string is less than the second string (in ASCII alphabetical order).
4.>: Checks if the first string is greater than the second string (in ASCII alphabetical order).
5.-z string: Checks if the string is empty.
6.-n string: Checks if the string is not empty.

#5.File test Operator

1.-e file: Checks if the file exists.
2.-f file: Checks if the file exists and is a regular file.
3.-d file: Checks if the directory exists.
4.-s file: Checks if the file exists and is not empty.
5.-r file: Checks if the file exists and is readable.
6..-w file: Checks if the file exists and is writable.
7.-x file: Checks if the file exists and is executable.

#Variables Examples

#1.
date=$(date)
whoami=$(whoami)
ifconfig=$(ifconfig)
pwd=$(pwd)
getrich=$(((RANDOM % 15)+ $age))
sleep 1
firstname=REYMOND
lastname=JOAQUIN
echo "My full name is $firstname $lastname"

#2.
echo "What's your First Name?"
read firstname
echo "What's your Last Name?"
read lastname
echo "Hey $firstname $lastname!!!"

#Positional Arguments

echo  "Hello $1 $2" #./Bash_Practice.sh Reymond Joaquin == OUTPUT: Hello Reymond  Joaquin

#Output/Input Redirection

#1.Piping

echo "Hello there | grep there" #Command 1 is echo "Hello there", Pipe Symbol is |, Command 2 is grep there

#2.Output Redirection

#1.Write a file
echo "Hello World!" > hello.txt #(>) sysmbol to write a file
#2.Append a file
echo "Hello World!" >> hello.txt #(>>) symbol to append a file
#3.wc -w hello.txt == OUTPUT: 6 hello.txt
#4.wc -w < hello.txt == OUTPUT: 6
#5.cat << EOF
#6. wc -w <<< "Hello World Count!" == OUTPUT: 3

#if elif else Statment

#Example 1
if  [ ${1,,} = Reymond ]; then
	echo "Oh, you are the boss here. Welcome"
elif [ ${1,,} = help ]; then
	echo "Just enter your username, duh!"
else
	echo "I don't know who you are. But you're not the boss of me!"
fi

#for loops Examples


#1.
for current_number in {1..10}
do
	echo "$current number"
	sleep 1
done
echo "This is outisde of the for loop"

#2.
for file in logfiles/*.log
do
	tar -czvf $file.tar.gz $file
done

#Functions Examples

#1.

check_exit_status() {

	read -p "Whats your name: " name
	if [[ $name -eq "reymond" ]]; then
		echo "What a wonderful name: $name"
	else
		echo "Okay."
	fi
}

names

#2.

add() {

        local sum=$(( $1 + $2 ))
        echo "$sum"
}

add 5 5

#3.




