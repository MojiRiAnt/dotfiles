#!/bin/bash

# This script provides shorthand Haskell compilation
# for a programming contest (combined with its bash alias)

if [ -f $1.hs ]
then
    echo -e "\e[32mInitializing GHC compiler..."
	
    ghc -dynamic -o $1 $1.hs
	if [ -f $1.hi ]
	then
		rm -f $1.hi
	fi
	if [ -f $1.o ]
	then
		rm -f $1.o
	fi
else
    echo -e "\e[31mNo such file: $1.hs"
fi
