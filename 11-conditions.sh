#!/bin/bash

echo "Enter number: "
read NUMBER

if [ $(($NUMBER % 2)) -eq 0 ]; then
   echo "given Number $NUMBER IS EVEN"
else 
   echo "given Number $NUMBER IS ODD"
fi