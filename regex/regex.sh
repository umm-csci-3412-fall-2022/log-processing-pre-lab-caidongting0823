#!/bin/bash

# Filter for r0
r0=$(sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt)
echo "$r0" > r0_output.txt

# Filter for r1
sed -n -E 's/\*.* ([A-Z][A-Za-z]+)\. .* ([a-z]+)\./1. \1\n2. \2\n/p' < r1_input.txt > r1_output.txt

# Filter for r2
perl -pe 's/\*.* ((?:[A-Za-z]+(?:\.)+)+) ([a-z]+ [a-z]+)/1. \1\n2. \2\n/' < r2_input.txt > r2_output.txt
