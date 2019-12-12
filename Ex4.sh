#!/bin/sh
#
# Ex4.sh
# Read input from file when executing ./quadratic
# (remember we need to make these sheel scripts executable (chmod +x Ex3.sh) )

# Run quadratic executable reading input from input1.dat and 
# writing output to output1.dat
./quadratic < input1.dat >output1.dat

# For good measure - let's also print the output
cat output1.dat

exit
