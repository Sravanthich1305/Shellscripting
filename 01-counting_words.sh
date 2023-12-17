#! /bin/bash

echo "Enter a word"
# Taking input from user
read text

# Counting words
word=$(echo -n "$text" | wc -w)