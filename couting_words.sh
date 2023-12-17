#!/bin/bash

WORD=$1
echo "Enter a word $WORD"
#couting a words using wc -l command
wc -l | grep $WORD
echo "Total word count is::"
