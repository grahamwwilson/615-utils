#!/bin/sh
#
# Ex9.sh
# Less lazy way to run code with 5 different configurations
# Note that the quotes in the increment statement are 
# single back quotes (likely lower-case "~" on your keyboard).
#

i=1
while [ $i -le 5 ]
do 
  ./Ex5.sh $i
  i=`expr $i + 1`
done

exit
