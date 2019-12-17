#!/bin/sh
#
# Ex10.sh
#
# Invoke with for example
# ./Ex10.sh 4
#
# In this case we write the argument to a temporary file
# and use that as the input file to the quadratic executable.
#

ARG=$1
echo "Executing Ex10.sh with argument set to "${ARG}

TEMPFILE=tmp

# Write argument to temporary file.
# Here we named it tmp (could be anything)
echo $ARG >${TEMPFILE}

# Run quadratic executable reading input from this temporary file 
# and writing output to output file
./quadratic <${TEMPFILE} >output${ARG}.dat

# Clean up by deleting the temporary file - careful...
rm ${TEMPFILE}

# Print the output to screen
cat output${ARG}.dat

exit
