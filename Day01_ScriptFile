#!/bin/bash

#This is Day1 file

# Task 1: Comments [in shell script we can use # for comments] ---------------------------------------------------

# Task  2: Echo [echo is used for print anything in ss] ----------------------------------------------------------

echo "This is Day 01 of BashBlaze_Challange organized by #TWS"

# Task  3: Variables ---------------------------------------------------------------------------------------------
# -->  Variables let you store data. 
# -->  You can use variables to read, access, and manipulate data throughout your script. 
# -->  There are no data types in Bash. 
# -->  In Bash, a variable is capable of storing numeric values, individual characters, or strings of characters.

# -->  You can assign variables in following ways
# -->  You can direct assign the variable as below given 



var1="Hello"
var2="This is Demo of shell script"
var3=2023



#  Task  4: Using Variables --------------------------------------------------------------------------------------
# -->  And you can also print variable and also store in another variable and direct print it [var3='$var1 $var2']

var4="$var1 $var3 $var2"
echo "$var3 DONE"


# -->   Another way of Assign variable 
# -->   Assign the value based on the output obtained from a program or command, using command substitution. 
# -->   Note that $ is required to access an existing variable's value.


# Task  5: Using Built-in Variables -------------------------------------------------------------------------------

#  The full pathname used to execute the current instance of Bash.
echo "My current bash path is : $BASH"	

# It print The version number of the current instance of Bash.
echo "Bash Version am i use : $BASH_VERSION"

# Expands to the process ID of the current Bash process
echo "PID of bash i am running : $$"  			

# It print the home directory of your bash
echo "My home directory is :$HOME"

# It show the present working directory
echo "Where am i currently? : $PWD"

#It prints the Host name of your system
echo "My hostname is : $HOSTNAME"

# Task  6: Wildcards  ---------------------------------------------------------------------------------------------------

# Manily Wildcard characters are used to define the pattern for searching or matching text on string data in the bash shell.


# --> There are main three types of wildcard 
# 1.) Asterisk (*) : It is used to search for particular character(s) for zero or more times. It matches any number of any characters, including the empty string.
# 2.) Question mark (?) : It matches any single character.
# 3.) Square brackets ([]) : They are used to match with the characters of a defined range or a group of characters.

echo "Files with .sh extension in the current directory"
ls *.sh
