#!/bin/bash -x

Employee=$(($RANDOM%2))
if [ $Employee -eq 1 ]
then
		echo "Employee is present"
else
		echo "Employee is absent"
fi

