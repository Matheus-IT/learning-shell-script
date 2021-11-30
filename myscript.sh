#!/bin/bash

# Echo command ----------------------------------------
#echo 'Hello world!'

# Variables (uppercase by convention) -----------------
#NAME="Matheus"

#echo "My name is $NAME"
#echo "My name is ${NAME}"

# User input ------------------------------------------
#read -p "Enter your name: " NAME
#echo "Hello $NAME, nice to meet you!"

# Symple if statement ---------------------------------
#NAME="matheus"
#if [ $NAME == "matheus" ]
#then
    #echo "Your name is $NAME!"
#fi

# If - else statement ---------------------------------
#if [ $NAME == "Matheus" ]
#then
    #echo "Your name is $NAME!"
#else
    #echo "Your name is not matheus"
#fi

# Elif statement --------------------------------------
#if [ $NAME == "Matheus" ]
#then
    #echo "Your name is $NAME!"
#elif [ $NAME == "Jack" ]
#then
    #echo "Your name is $NAME, cool!"
#else
    #echo "Your name is not matheus"
#fi

# Comparison ------------------------------------------
########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########
#NUM1=3
#NUM2=5

#if [ $NUM1 -gt $NUM2 ]
#then
    #echo "$NUM1 is greater than $NUM2"
#else
    #echo "$NUM1 is less than $NUM2"
#fi

# File conditions -------------------------------------
########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########
#FILE_NAME="test.txt"

#touch $FILE_NAME
#FILE="$FILE_NAME"

#if [ -f $FILE ]
#then
    #echo "$FILE is a file"
#else
    #echo "$FILE is not a file"
#fi

#rm $FILE_NAME

# Case statement ---------------------------------------
#read -p "Are you 21 or over? Y/N " ANSWER

#case $ANSWER in
    #[yY] | [yY][eE][sS])
        #echo "You can have a beer"
        #;;
    #[nN] | [nN][oO])
        #echo "Sorry, no drinking"
        #;;
    #*)
        #echo "Please enter y/yes or n/no"
        #;;
#esac

# Simple for loop --------------------------------------
#NAMES="Matheus Carol Diego"

#for NAME in $NAMES
#do
    #echo "Hello $NAME"
#done

# For loop to rename files -----------------------------
#touch 1.txt 2.txt 3.txt

#FILES=$(ls *.txt)
#NEW="new"

#for FILE in $FILES
#do
    #echo "Renaming $FILE to new-$FILE"
    #mv $FILE $NEW-$FILE
#done

#rm new-1.txt new-2.txt new-3.txt

# While loop -------------------------------------------
#touch test_while.txt
#cat input.in > test_while.txt

#LINE=1

#while read -r CURRENT_LINE
#do
    #echo "$LINE: $CURRENT_LINE"
    #((LINE++))
#done < "./test_while.txt"
#rm test_while.txt

# Fuctions ---------------------------------------------
#function sayHello() {
    #echo "Hello world!"
#}
#sayHello

# Functions with params --------------------------------
#function greet() {
    #echo "Hello, I am $1 and I am $2"
#}

#greet "Matheus" 19

# Create folder and write to a file --------------------
mkdir hello
touch hello/world.txt

echo "Hello world" > "hello/world.txt"
echo "Created file world inside hello/"
