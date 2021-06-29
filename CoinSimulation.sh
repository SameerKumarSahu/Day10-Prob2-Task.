#!/bin/bash -x
echo "Welcome to Filp Coin Simulation...!"


x=$((RANDOM%2))
    if [ $x -eq 0 ]
    then
         echo " Head come "
    else
          echo " Tail come "
    fi
