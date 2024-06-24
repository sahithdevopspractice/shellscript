#!/bin/bash

echo "Enter your first number"
NUMBER=$1 #take it from the user as an argument

if [$NUMBER -gt 100]
then
    echo "Given Number $NUMBER is greater than 100"
else
    echo "Given number $NUMBER is less than 100"
fi