#!/bin/bash -x
echo "Welcome to Filp Coin Simulation...!"


x=$((RANDOM%2))
    if [ $x -eq 0 ]
    then
         echo " Head come "
    else
          echo " Tail come "
    fi


Heads=0
Tails=0
for (( i=0; i<=20;i++))
do
	x=$((RANDOM%2))
        if [ $x -eq 0 ]

        then
               echo " Head come "
                  ((Heads++))
        else
               echo " Tail come "
		 ((Tails++))
        fi

done

echo "Number of time Heads are" $Heads
echo "Number of time Tails are" $Tails

if [[ $Heads -gt $Tails ]]
then
	a=$(($Heads - $Tails))
	echo "Heads Win by " $a
else
	b=$(($Tails - $Heads))
        echo "Tails Win by " $b

fi




Heads=0
Tails=0

while [[ $Heads -lt 21  &&
		 $Tails -lt 21 ]]
do
	x=$((RANDOM%2))
        if [ $x -eq 0 ]

        then
               ((Heads++))

        else

               ((Tails++))
        fi
done

echo "Number of time Heads are" $Heads
echo "Number of time Tails are" $Tails

if [[ $Heads -eq 21 ]]
then
	s=$(($Heads - $Tails))        
	echo "Heads Win by" $s
elif [[ $Tails -eq 21 ]]
then
	s=$(($Tails - $Heads))
        echo "Tails Win by " $s
else
        echo "Tie"
fi
