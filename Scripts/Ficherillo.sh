#!/bin/bash

if [ $# -eq 3 ] && [ $2 -ge 1 ] && [ $2 -le 99 ]
then
    dirname=$1
    num_files=$2
    filename=$3


    # Comprobamos si $dirName existe:

    if ! test -d $dirname
    then
        mkdir $dirname
    fi


    for (( i=0 ; i<$num_files ; i++ ))
    do
        touch $dirname/$filename$i
    done


fi