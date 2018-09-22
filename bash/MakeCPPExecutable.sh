#!/bin/bash

# This script provides shorthand C++ compilation
# for a programming contest (combined with its bash alias)

if [ -f $1.cpp ]
then
    g++ $1.cpp -o $1 -Wall -std=c++17
fi
