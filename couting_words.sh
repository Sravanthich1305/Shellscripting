#!/bin/bash

WORD="DEVOPS learning world"
echo "Enter a word $WORD"
#couting a words using wc -l command
echo "$WORD" | wc -w
echo "Total word count is:: ${WORD[@]}"
