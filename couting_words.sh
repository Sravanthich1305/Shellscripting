#!/bin/bash

WORD=DEVOPS
echo "Enter a word $WORD"
#couting a words using wc -l command
echo "$WORD" | wc -l
echo "Total word count is:: ${WORD[@]}"
