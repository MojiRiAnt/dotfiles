#!/bin/bash

if [ -f "$1".tex ]
then

    if [ -f "$1".aux ]
    then
        rm -f "$1".aux
    fi
    if [ -f "$1".toc ]
    then
        rm -f "$1".toc
    fi
    if [ -f "$1".log ]
    then
        rm -f "$1".log
    fi
    
    xelatex "$1".tex

    if [[ $2 != 1 ]]
    then
        xelatex "$1".tex
    fi

    if [[ $2 == 3 ]]
    then
        xelatex "$1".tex
    fi

    if [ -f "$1".aux ]
    then
        rm -f "$1".aux
    fi
    if [ -f "$1".toc ]
    then
        rm -f "$1".toc
    fi
    if [ -f "$1".log ]
    then
        rm -f "$1".log
    fi
fi
