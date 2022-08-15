#!/bin/bash
 str="this is a string"

if [[ ${#str} > 1 ]]; then
  echo "hi"
else
  echo "here"
fi

n=${#str}
echo "Length of the string is : $n "