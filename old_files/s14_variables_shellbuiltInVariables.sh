# Special Built-in Variables
echo $0     # The filename of the current script.
echo $n     # $1, $2, ... $9 correspond to the arguments passed to shell script.
echo $#	    # Number of command line arguments. Useful to test no. of command line args in shell script.
echo $*	    # All the arguments are double quoted. If a script receives two arguments, $* is $1 $2.
echo $@	    # All the arguments are individually double quoted. If a script receives two arguments, $@ is $1 $2.
echo $?     # The exit status of the last command executed.
echo $-	    # Option supplied to shell.
echo $$	    # PID of shell.
echo $!     # PID of last started background process (started with &).
