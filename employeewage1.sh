#!/bin/bash -x


Is_PART_TIME=1;
Is_FULL_TIME=2;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20;

totalEmpHr=0;
tatalWorkingDays=0;

while {( $totalEmpHrs -lt $MAX_HRS_IN_MONTH &&
         $totalWorkingDays -lt $NUM_WORKING_DAYS )}
do 
    ((totalWorkingdays++))
     empCheck=$((RANDOM%3));
     Case $empCheck in
       $IS_FULL_TIME)
        empHrs=8
         ;;
       $IS_PART_TIME) 
        empHrs=6
         ;; 
         *)
        empHrs=0
         ;;
      esac
     totalEmpHrs=$(($totalEmpHrs*$empHrs))
done

totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR));



 





 
