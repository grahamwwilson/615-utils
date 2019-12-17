#!/bin/bash
#
# Ex9.bash
# Less lazy way to run code with 5 different configurations
#
# let is something that works in bash - but does not seem to 
# conform to standard shell
#


i=1
while [ $i -le 5 ]
do 
  ./Ex5.sh $i
  let "i+=1"
  
done

exit
