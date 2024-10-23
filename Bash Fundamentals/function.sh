#!/bin/bash

add() {

	local sum=$(( $1 + $2 ))
	echo "$sum"
}

add 5 5

