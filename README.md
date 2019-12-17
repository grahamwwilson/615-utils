Example shell scripts, illustrating simple reproducible methods 
to have user control, and logging in a relatively automated way.

Here the specific underlying task, in this case 
quadratic, is driven by input read from standard input. 
Instead of running this interactively each time, one 
can read the input from a file, and further automate as illustrated.

Ex1.sh: Compile some code

Ex2.sh: Compile some code with feedback

Ex3.sh: Run the code with input from a file

Ex4.sh: Run the code with input from a file, output to a file and 
        print the output to the screen 

Ex5.sh: Same as Ex4.sh but with input argument

Ex6.sh: Run Ex5.sh 5 times with input arguments of 1,2,3,4,5

Ex7.sh: Run Ex6.sh but with output to file

Ex8.sh: As Ex6.sh but with for loop (with each argument specified)

Ex9.sh: As Ex6.sh but with a programmed for loop

Ex9.bash: As Ex9.sh but using "let" which is a bash builtin command

Ex10.sh: Rather than supplying an input file, here the input argument 
         is written to a temporary file, and read in by the executable.
