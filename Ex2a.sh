#!/bin/sh
#
# Ex2.sh
# Example 2 of a shell script. Do something semi-automatically using
# a script rather than typing the details on the command line.
# (I usually call this cl.sh)
#
# Also add some information
#
# Input argument. Gets set to what you specify - but if not present defaults to "quadratic"
TARGET=${1-quadratic}
echo "Compile and linking "${TARGET}.f
gfortran -o ${TARGET} ${TARGET}.f
echo "Created executable is "${TARGET}
echo "It can be executed by typing ./"${TARGET}

exit
