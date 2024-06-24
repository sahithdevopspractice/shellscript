#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$((NUMBER1+NUMBER2)) #Here values entered at the run time will be passed to NUMBER1 and NUMBER2 and the total value is stored in variable sum.

echo "Total is:: $SUM"
echo "How many args passed: $#"
echo "All argumets passed: $@"
echo "script name: $0"

