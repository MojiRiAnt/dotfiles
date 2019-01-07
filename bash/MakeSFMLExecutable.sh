#!/bin/bash

if [ -f "$1.cpp" ]
then
    
    g++ -o $1 $1.cpp -Wall -lsfml-graphics -lsfml-window -lsfml-system

fi
