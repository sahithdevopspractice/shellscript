#!/bin/bash

# USERNAME=$1
# PASSWORD=$2

# echo "Username is $USERNAME, Password is $PASSWORD"

#above method is not recommended because username and password is exposed, to overcome this, read is the command it will take the input from the trminal and will pass it to the varible.

echo "Please enter your username:"
read USERNAME #here the value entered at the run time will be attached to USERNAME variable.
echo "Username is: $USERNAME"

echo "Please enter your username agian:"
read -s USERNAME #here the value entered at the run time will be attached to USERNAME variable.
echo "please enter your password:"
read -s PASSWORD
echo "Username is: $USERNAME" #prinitng username just for validation don't print username and password
echo "your password is $PASSWORD"



