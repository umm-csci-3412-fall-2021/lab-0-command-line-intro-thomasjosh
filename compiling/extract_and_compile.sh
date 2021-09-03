#!/bin/bash

#Extract NthPrime from the .tgz file
tar -xf "NthPrime.tgz"

#Go to the directory containing NthPrime C files
cd NthPrime || exit

#This compiles the program and names the result NthPrime
gcc -Wall main.c nth_prime.c nth_prime.h -o NthPrime

#Runs NthPrime with the first argument passed to this script.
./NthPrime "$1"
