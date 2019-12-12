#!/bin/sh
#
# Ex5.sh
#
# Invoke with for example
# 
# ./Ex5.sh 2
#

ARG=$1
echo "Executing Ex5.sh with argument set to "${ARG}

# Run quadratic executable reading input from input file and 
# writing output to output file

./quadratic < input${ARG}.dat >output${ARG}.dat

# For good measure - let's also print the output
cat output${ARG}.dat

exit
