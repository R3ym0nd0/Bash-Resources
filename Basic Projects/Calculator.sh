#!/bin/bash


add() {

	echo "Addition"
	result=$(( $firstnumber + $secondnumber ))
	echo "Answer: $result"
}

multi() {

	echo "Multiplication"
        result=$(( $firstnumber * $secondnumber ))
        echo "Answer: $result"

}

division() {

	echo "Division"
        result=$(( $firstnumber / $secondnumber ))
        echo "Answer: $result"

}

subtract() {

	echo "Addition"
        result=$(( $firstnumber - $secondnumber ))
        echo "Answer: $result"

}

main() {

	echo "Calculator Script"
	echo ""
	echo "1.Addition
2.Subtracion
3.Multiplication
4.Division"

	while true
	do

		read -p "Pick Operator: " pick
		read -p "Type First Number: " firstnumber
		read -p "Type Second Number: " secondnumber

		if [[ $pick == 1 ]]; then
			add
		elif [[ $pick == 2 ]]; then
                	subtract
		elif [[ $pick == 3 ]]; then
                	multi
		elif [[ $pick == 4 ]]; then
                	division 
		else
			echo "Invalid Choice!"
		fi

		while true

		do
			read -p "Do you want to continue (Y/N): " asking
			if [[ $asking == "y" ]]; then
				break
			else
				exit 1
			fi
		done

	done

}

main
