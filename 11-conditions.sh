#!/bin/bash

echo "Enter number: "
read NUMBER

if [ $(($NUMBER) % 2) -eq 0 ]; then
   echo "given NUMBER IS EVEN"
else 
   echo "given NUMBER IS ODD"
fi