#!/bin/bash

Fruits=("Apple" "Banana" "Mango" "Orange") #Here am Passing multiole values into one varibale. so here i can use it however i want.

echo "First fruit ${Fruits[0]}"
echo "Second Fruit ${Fruits[1]}"
echo "ALL FRUITS ${Fruits[@]}"

